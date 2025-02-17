import re
import subprocess
import os
import time
import psutil
import numpy as np
import signal
# Available LLVM optimizatons
file_path = "/home/kaikai/WasmRL/wasm_gym/envs/flags/flags-45.txt" 
with open(file_path, "r") as file:
    opt_passes_str = file.read().strip()

def qw(s):
  return tuple(s.split())

def countPasses():
  count=len(qw(opt_passes_str))
  return count

def getPasses(opt_indice):
  return map((lambda x: opt_passes[x]), opt_indice)

opt_passes = qw(opt_passes_str)
def passes2indice(passes):
  indices = []
  passes = qw(passes)
  for passs in passes:
    for i in range(len(opt_passes)):
      if passs == opt_passes[i]:
        indices.append(i)
        break
  return indices

def timeout_handler(signum, frame):
    raise TimeoutError("Timeout")

def get_exec_time_cbench(c_code, opt_indice, path=".", device="x86"):
  
  path = "/home/kaikai/Wasm-RL/WasmRL-PPO/wasm-rl-ppo/benchmark/cBench/cBench_V1.1/" + c_code + "/src_work/"

  passes=getPasses(opt_indice)
  passes_str =" ".join(str(x) for x in passes)
  passes_str = "-O3"
  os.system('cd ' + path + ' && make clean && make CCC_OPTS="' + passes_str + '"')


  output_file = path + c_code + ".wat"
  command = ["/home/kaikai/Wasm-RL/wabt-1.0.30/bin/wasm2wat", path + "out.wasm"]
  with open(output_file, "w") as file:
    subprocess.check_call(command, stdout=file)

  if device == "x86":
    output_file_perf = path + c_code + ".x86_perf"
    command_perf = ["./__run_wasm", "1", "x86"]
    results_list = []
    for i in range(1):
      begin = time.time()
      try: 
        result = subprocess.run(command_perf, capture_output=True, text=True, timeout=15, cwd=path)
      except subprocess.TimeoutExpired:
        all_processes = psutil.process_iter()
        for process in all_processes:
            try:
                process_name = process.name()  
                if "iwasm" in process_name:
                    process.kill()
                    print(f"process {process.pid} killed")
            except (psutil.NoSuchProcess, psutil.AccessDenied, psutil.ZombieProcess):
                pass
        print("timeout")
      result = None
      end = time.time()
      exec_time = end - begin
      results_list.append(exec_time)
    
  elif device == "jetsonnano":
    arm_path = "/home/mini-edge/WasmRL-PPO/wasm-rl-ppo/benchmark/cBench/cBench_V1.1/" + c_code + "/src_work/"
    output_file_perf = path + c_code + ".jetson_perf"
    os.system('scp ' + path + 'out.wasm' + ' ' + 'mini-edge@10.214.131.152:' + '/home/mini-edge/WasmRL-PPO/wasm-rl-ppo/benchmark/cBench/cBench_V1.1/'+ c_code + "/src_work/")
    os.system('scp ' + path + '__run_wasm' + ' ' + 'mini-edge@10.214.131.152:' + '/home/mini-edge/WasmRL-PPO/wasm-rl-ppo/benchmark/cBench/cBench_V1.1/'+ c_code + "/src_work/")
    os.system('scp ' + path + '_ccc_info_datasets' + ' ' + 'mini-edge@10.214.131.152:' + '/home/mini-edge/WasmRL-PPO/wasm-rl-ppo/benchmark/cBench/cBench_V1.1/'+ c_code + "/src_work/")
    results_list = []
    timeout = 15
    for i in range(1):
      try: 
        signal.signal(signal.SIGALRM, timeout_handler)
        signal.alarm(timeout)
        begin = time.time()
        os.system("ssh -t mini-edge@10.214.131.152 'cd " + arm_path + " && ./__run_wasm 1 jetsonnano 1'")
        signal.alarm(0)
        result = None
        end = time.time()
        exec_time = end - begin
        print(exec_time)
        results_list.append(exec_time)
      except TimeoutError:
        print("timeout")
        results_list.append(timeout)
        break
  exec_time = np.mean(results_list)
  done = True
  return float(exec_time), done
   
def main():
  indices=[]
  bms = [
      "automotive_bitcount", 
      "automotive_qsort1",
      "automotive_susan_c",
      "consumer_jpeg_c", 
      "consumer_jpeg_d", 
      "consumer_tiff2bw", 
      "consumer_tiffdither",
      "consumer_tiffmedian",
      "network_dijkstra",
      "network_patricia",
      "office_stringsearch1",
      "security_blowfish_d",
      "security_rijndael_d",
      "security_sha",
      "telecom_adpcm_c",
      "telecom_CRC32",
  ]
  for bm in bms:
    for i in range(1):
      indices.append(i)
      passes=getPasses(indices)
      passes_str =" ".join(str(x) for x in passes)        
      exec_time, done = get_exec_time_cbench(bm, indices, ".", "jetsonnano")
      if done: print("optimized:", bm, exec_time)
      else: 
        print("%d", i) 
        break

if __name__ == "__main__":
  main()

