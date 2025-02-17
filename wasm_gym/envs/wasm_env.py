import numpy as np
import gymnasium as gym
from gymnasium.spaces import Discrete, Box
import sys
from runtime_poly import *
from runtime_iot import *
from runtime_cBench import *
from runtime_singleglass import *
import feature_extractor
import math
import os
from enum import Enum

class FeatureType(Enum):
    CFG_ACT = 'cfg_act'
    PGM_ACT = 'pgm_act'
    ACT_HIST = 'act_hist'
    PGM_ACT_PERF = 'pgm_act_perf'
    IR_ACT = 'ir_act'
    

def get_exec_time(c_code, opt_indice, path=".", device="x86", benchmark="polybenchc"):
    if benchmark == "polybenchc":
        return get_exec_time_poly(c_code, opt_indice, path, device)
    elif benchmark == "iot":
        return get_exec_time_iot(c_code, opt_indice, path, device)
    elif benchmark == "cbench":
        return get_exec_time_cbench(c_code, opt_indice, path, device)
    elif benchmark == "singleglass":
        return get_exec_time_singleglass(c_code, opt_indice, path, device)
    else:
        raise ValueError(f"Unknown benchmark type: {benchmark}")

class WASMEnv(gym.Env):
    def __init__(self, env_config):
        self.run_device = env_config['device']
        self.seed_value = None
        self.pass_len = 45
        self.feat_len = 171
        self.perf_len = 10 if self.run_device in ["jetsonnano", "raspberry", "x86", "all", "esp32"] else 7
        self.irfeat_len = 65
        self.cfg_len = 3000
        self.norm_obs = False
        self.orig_norm_obs = False
        self.feature_type = FeatureType.ACT_HIST
        self.act_hist = [0] * self.pass_len
        self.reset_actions = [int(self.pass_len // 2)] * self.pass_len
        self.max_episode_steps = 20
        self.action_space = Discrete(self.pass_len)
        if self.feature_type == FeatureType.ACT_HIST:
            self.observation_space = Box(0.0,1,shape=(self.pass_len,),dtype = np.float32)
        if self.feature_type == FeatureType.PGM_ACT:
            self.observation_space = Box(0.0,1,shape=(self.pass_len + self.feat_len,),dtype = np.float32)
        if self.feature_type == FeatureType.PGM_ACT_PERF:
            self.observation_space = Box(0.0,1,shape=(self.pass_len + self.feat_len + self.perf_len,),dtype = np.float32)
        if self.feature_type == FeatureType.IR_ACT:
            self.observation_space = Box(0.0,1,shape=(self.pass_len + self.irfeat_len,),dtype = np.float32)
        if self.feature_type == FeatureType.CFG_ACT:
            self.observation_space = Box(0.0,1,shape=(self.pass_len + self.feat_len + self.cfg_len,),dtype = np.float32)
        self.prev_exec_time = float('inf') 
        self.O0_exec_time = float('inf') 
        self.prev_obs = None 
        self.min_exec_time = float('inf') 
        self.min_exec_time_rasp = float('inf')
        self.min_exec_time_jetson = float('inf')
        self.min_exec_time_x86 = float('inf')
        self.verbose = True
        self.log_obs_reward = False 
        self.sum_program_time = 0.0
        pgm = env_config['pgm']
        pgm_dir = None
        pgm_files = None
        run_dir = None
        self.run_dir = run_dir
        self.pre_passes_str= ""
        self.pre_passes = passes2indice(self.pre_passes_str) 
        self.passes = [] 
        self.best_passes = [] 
        self.pgm = pgm 
        self.pgm_name = pgm.replace('.c','') 
        self.bc = self.pgm_name + '.wasm'
        self.original_obs = [] 
        self.basepath = "/home/kaikai/WasmRL/"
        self.benchmark = "singleglass"

    def get_pgmfeatures(self, normalizer=False):
        wasm_file_path = self.basepath + "wasm_gym/envs/out/" + self.pgm + ".wat"
        feats = feature_extractor.count_instructions(wasm_file_path, normalizer)
        return np.float32(feats)
    
    def get_cfgfeatures(self, normalizer=False):
        os.system(self.basepath + "wasm_gym/envs/gencfg.sh "+ self.pgm)
        dot_path = self.basepath + "wassail/flags-alter/cfg/"+ self.pgm + "/"+ self.pgm + ".dot"
        feats_cfg = feature_extractor.cfg_embeddings(dot_path)
        wasm_file_path = self.basepath + "/wasm_gym/envs/out/" + self.pgm + ".wat"
        feats_count = feature_extractor.count_instructions(wasm_file_path, normalizer)
        feats = feats_cfg + feats_count
        return np.float32(feats)
    
    def get_runtimefeatures(self, normalizer=False):
        if self.benchmark == "polybenchc":
            perf_file_path = self.basepath + "wasm_gym/envs/out/" + self.pgm + ".perf"
            feats = feature_extractor.count_perf(perf_file_path, normalizer)
        if self.benchmark == "cbench" and self.run_device == "x86":
            perf_file_path = self.basepath + "benchmark/cBench/cBench_V1.1/" + self.pgm + "/src_work/" + self.pgm + ".x86_perf"
            feats = feature_extractor.count_perf(perf_file_path, normalizer)
        elif self.benchmark == "cbench" and self.run_device == "jetsonnano":
            perf_file_path = self.basepath + "benchmark/cBench/cBench_V1.1/" + self.pgm + "/src_work/" + self.pgm + ".jetson_perf"
            feats = feature_extractor.count_perf(perf_file_path, normalizer)
        return np.float32(feats)

    def get_irfeatures(self, normalizer=False):
        ir_file_path = self.basepath + "wasm_gym/envs/out/" + self.pgm + "_opt.ll"
        irlib_file_path = self.basepath + "wasm_gym/envs/out/" + self.pgm + "_polybench_opt.ll"
        feats = feature_extractor.count_llvm_instructions(ir_file_path, irlib_file_path, normalizer)
        return np.float32(feats)
    
    def reset(self, *, seed=None, options=None):
        if seed is not None:
            self.seed_value = seed
            np.random.seed(seed) 
        self.passes = []
        self.passes.extend(self.pre_passes)
        if self.run_device == "all":
            prev_exec_time_rasp, done_rasp = get_exec_time(self.pgm_name, self.passes, self.run_dir, "raspberry", self.benchmark)
            prev_exec_time_jetson, done_jetson = get_exec_time(self.pgm_name, self.passes, self.run_dir, "jetsonnano", self.benchmark)
            prev_exec_time_x86, done_x86 = get_exec_time(self.pgm_name, self.passes, self.run_dir, "x86", self.benchmark)
            self.prev_exec_time = prev_exec_time_rasp + prev_exec_time_jetson + prev_exec_time_x86
            done = done_rasp and done_jetson and done_x86
        else:
            self.prev_exec_time, done = get_exec_time(self.pgm_name, self.passes, self.run_dir, self.run_device, self.benchmark)
        self.O0_exec_time = self.prev_exec_time
        if(self.verbose):
            self.print_info("program: {} -- ".format(self.pgm_name)+" reset exec_time: {}".format(self.prev_exec_time))
        obs = []
        if self.feature_type == FeatureType.ACT_HIST:
            self.act_hist = [0] * self.pass_len
            obs = self.act_hist
        if self.feature_type == FeatureType.PGM_ACT:
            self.act_hist = [0] * self.pass_len
            obs = self.act_hist[:]  
            obs.extend(self.get_pgmfeatures(True))
        if self.feature_type == FeatureType.PGM_ACT_PERF:
            self.act_hist = [0] * self.pass_len
            obs = self.act_hist[:]  
            obs.extend(self.get_pgmfeatures(True))
            obs.extend(self.get_runtimefeatures(True)) 
        if self.feature_type == FeatureType.IR_ACT:
            self.act_hist = [0] * self.pass_len
            obs = self.act_hist[:]  
            obs.extend(self.get_irfeatures(True))
        if self.feature_type == FeatureType.CFG_ACT:
            self.act_hist = [0] * self.pass_len
            obs = self.act_hist[:]  
            obs.extend(self.get_cfgfeatures(True))
        obs = np.array(obs)
        self.prev_obs = obs
        return obs
    
    def step(self, action, get_obs=True):
        info = {}
        self.passes.append(action)
        
        if len(self.passes) <  self.max_episode_steps:
            reward = 0
            # reward, exec_time, done = self.get_rewards()
            done = False
            truncated = False
        else:
            reward, exec_time, done = self.get_rewards()
            truncated = True

        obs = []
        if self.feature_type == FeatureType.ACT_HIST:
            self.act_hist[action] += 1
            obs = self.act_hist
        if self.feature_type == FeatureType.PGM_ACT:
            self.act_hist[action] += 1
            obs = self.act_hist[:]  
            obs.extend(self.get_pgmfeatures(True))
        if self.feature_type == FeatureType.PGM_ACT_PERF:
            self.act_hist[action] += 1
            obs = self.act_hist[:]  
            obs.extend(self.get_pgmfeatures(True))
            obs.extend(self.get_runtimefeatures(True))
        if self.feature_type == FeatureType.IR_ACT:
            self.act_hist[action] += 1
            obs = self.act_hist[:]  
            obs.extend(self.get_irfeatures(True))
        if self.feature_type == FeatureType.CFG_ACT:
            self.act_hist[action] += 1
            obs = self.act_hist[:]  
            obs.extend(self.get_cfgfeatures(True))

        obs = np.array(obs)

        self.prev_obs = obs
        
        if(self.verbose and len(self.passes) == self.max_episode_steps):
            self.print_info("exec_time: {}".format(exec_time))
            self.sum_program_time = self.sum_program_time + exec_time
            print("program execution time (s)", self.sum_program_time)
            self.print_info("program: {} --".format(self.pgm_name) + "passes: {}".format(self.passes))
            self.print_info("reward: {} -- done: {}".format(reward, done))
            self.print_info("min_exec_time: {} -- best_passes: {}".format(self.min_exec_time, self.best_passes))
            self.print_info("act_hist: {}".format(self.act_hist))

            output = ""
            output += f"{self.pgm_name}: {self.min_exec_time}, {self.min_exec_time_rasp}, {self.min_exec_time_jetson}, {self.min_exec_time_x86}, {exec_time}, {reward}\n"
            passes = getPasses(self.passes)
            for value in passes:
                output += f"{value}"
                output += " "
            output += "\n"
            if self.run_device == "esp32":
                with open(self.basepath + 'wasm_gym/envs/out/output-'+self.pgm_name+'.txt', 'a') as file:
                    file.write(output)
            else:
                print(self.basepath + 'wasm_gym/envs/out/output-'+self.pgm_name+'_arm'+'.txt')
                with open(self.basepath + 'wasm_gym/envs/out/output-'+self.pgm_name+'_arm'+'.txt', 'a') as file:
                    file.write(output)
        return (obs, reward, done, truncated, info)
    
    def get_rewards(self, diff=False):
        actual_passes =  self.passes
        if self.run_device == "all":
            exec_time_rasp, done_rasp = get_exec_time(self.pgm_name, actual_passes, self.run_dir, "raspberry", self.benchmark)
            exec_time_jetson, done_jetson = get_exec_time(self.pgm_name, actual_passes, self.run_dir, "jetsonnano", self.benchmark)
            exec_time_x86, done_x86 = get_exec_time(self.pgm_name, actual_passes, self.run_dir, "x86", self.benchmark)
            exec_time = exec_time_rasp + exec_time_jetson + exec_time_x86
            done = done_rasp and done_jetson and done_x86
            if (len(self.passes) == self.max_episode_steps and exec_time < self.min_exec_time):
                self.min_exec_time = exec_time
                self.best_passes = actual_passes
                self.min_exec_time_rasp = exec_time_rasp
                self.min_exec_time_jetson = exec_time_jetson
                self.min_exec_time_x86 = exec_time_x86
            if (diff):
                rew = self.prev_exec_time - exec_time
            else:
                rew = -exec_time
        else:
            
            exec_time, done = get_exec_time(self.pgm_name, actual_passes, self.run_dir, self.run_device, self.benchmark)
            if (len(self.passes) == self.max_episode_steps and exec_time < self.min_exec_time):
                self.min_exec_time = exec_time
                self.best_passes = actual_passes
            if (diff):
                rew = self.prev_exec_time - exec_time
            else:
                rew = -exec_time
        return rew, exec_time, done
        
    def print_info(self,message, end = '\n'):
        sys.stdout.write('\x1b[1;34m' + message.strip() + '\x1b[0m' + end)