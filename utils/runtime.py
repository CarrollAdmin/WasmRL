import re
import subprocess
import os
import time
import psutil
import numpy as np

# Available LLVM optimizatons
file_path = "/home/kaikai/Wasm-RL/WasmRL-PPO/wasm-rl-ppo/wasm_gym/envs/flags.txt"  
with open(file_path, "r") as file:
    opt_passes_str = file.read().strip()

compile_str = """
  /root/Wasm-RL/llvm-15.0.6/bin/clang --target=wasm32-wasi --sysroot=/root/Wasm-RL/wasi-sysroot -S -emit-llvm -o test.ll test.c
  /root/Wasm-RL/llvm-15.0.6/bin/opt -O2 -S -o test.ll test.ll
  /root/Wasm-RL/llvm-15.0.6/bin/clang --target=wasm32-wasi --sysroot=/root/Wasm-RL/wasi-sysroot -o test.wasm test_opt.ll
"""

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


def get_exec_time(c_code, opt_indice, path="."):
  
  path = "/home/kaikai/Wasm-RL/WasmRL-PPO/wasm-rl-ppo/wasm_gym/envs/dataset/"
  path_out = "/home/kaikai/Wasm-RL/WasmRL-PPO/wasm-rl-ppo/wasm_gym/envs/out/"

  clang_command_ll_main = [
    "/home/kaikai/Wasm-RL/llvm-15.0.6/bin/clang",
    "--target=wasm32-wasi",
    "--sysroot=/home/kaikai/Wasm-RL/wasi-sysroot",
    "-Wno-unused-command-line-argument",
    "-S",
    "-emit-llvm",
    "-Xclang",
    "-disable-O0-optnone",
    "-o",
    path_out+c_code+".ll",
    path+c_code+".c",
    "-I",
    "/home/kaikai/Wasm-RL/polybenchC-O2/PolyBenchC-4.2.1/utilities"
    
  ]

  clang_command_ll_lib = [
    "/home/kaikai/Wasm-RL/llvm-15.0.6/bin/clang",
    "--target=wasm32-wasi",
    "--sysroot=/home/kaikai/Wasm-RL/wasi-sysroot",
    "-Wno-unused-command-line-argument",
    "-S",
    "-emit-llvm",
    "-Xclang",
    "-disable-O0-optnone",
    "-o",
    path_out+c_code+"_polybench.ll",
    "/home/kaikai/Wasm-RL/polybenchC-O2/PolyBenchC-4.2.1/utilities/polybench.c",
    "-I",
    "/home/kaikai/Wasm-RL/polybenchC-O2/PolyBenchC-4.2.1/utilities"
    
  ]

  clang_command_opt_main = [
    "/home/kaikai/Wasm-RL/llvm-15.0.6/bin/opt",
    "-S",
    "-o",
    path_out+c_code+"_opt"+".ll",
    path_out+c_code+".ll",
  ]
  clang_command_opt_main.extend(getPasses(opt_indice))

  clang_command_opt_lib = [
    "/home/kaikai/Wasm-RL/llvm-15.0.6/bin/opt",
    "-S",
    "-o",
    path_out+c_code+"_polybench_opt.ll",
    path_out+c_code+"_polybench.ll",
  ]
  clang_command_opt_lib.extend(getPasses(opt_indice))


  clang_command_wasm = [
    "/home/kaikai/Wasm-RL/llvm-15.0.6/bin/clang",
    "--target=wasm32-wasi",     
    "--sysroot=/home/kaikai/Wasm-RL/wasi-sysroot",
    "-o",
    path_out+c_code+".wasm",
    path_out+c_code+"_opt"+".ll",
    path_out+c_code+"_polybench_opt.ll",
  ]

  clang_command_run = [
    # "/usr/bin/time",
    # "-f",
    # "%e",
    "/home/kaikai/Wasm-RL/iwasm_jit",
    path_out + c_code + ".wasm",
  ]
  try:
    subprocess.check_output(clang_command_ll_main)
  except subprocess.CalledProcessError as e:
    print("error clang_command_ll_main")

  try:
    subprocess.check_output(clang_command_ll_lib)
  except subprocess.CalledProcessError as e:
    print("error clang_command_ll_lib")

  try:
    subprocess.check_output(clang_command_opt_main)
  except subprocess.CalledProcessError as e:
    print("error clang_command_opt_main")

  try:
    subprocess.check_output(clang_command_opt_lib)
  except subprocess.CalledProcessError as e:
    print("error clang_command_opt_lib")

  try:
    subprocess.check_output(clang_command_wasm)
  except subprocess.CalledProcessError as e:
    print("error clang_command_wasm")

  output_file = path_out + c_code + ".wat"
  command = ["/home/kaikai/Wasm-RL/wabt-1.0.30/bin/wasm2wat", path_out + c_code + ".wasm"]
  with open(output_file, "w") as file:
    subprocess.check_call(command, stdout=file)

  output_file_perf = path_out + c_code + ".perf"
  command_perf = ["sudo", "perf", "stat", "-e", "branch-instructions", "-e", "branch-misses", "-e", "cache-references", "-e", "cache-misses", "-e", "instructions", "-e", "mem-loads", "-e", "mem-stores", "-x", ";", "-o", "result.csv", "/home/kaikai/Wasm-RL/iwasm_jit", path_out + c_code + ".wasm"]
  
  results_list = []
  for i in range(10):
    begin = time.time()
    try: 
      result = subprocess.run(command_perf, capture_output=True, text=True, timeout=1.0)
    except subprocess.TimeoutExpired:
      # The process exceeded the time limit
      # Handle the timeout situation here
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
    # print(exec_time)
    results_list.append(exec_time)
  command_awk = ["sudo", "awk", "-F", ";", 'BEGIN {OFS=","} $3=="branch-instructions" || $3=="branch-misses" || $3=="cache-references" || $3=="cache-misses" || $3=="instructions"  || $3=="mem-loads" || $3=="mem-stores"{arr[$3] = $1} END {print arr["branch-instructions"], arr["branch-misses"], arr["cache-references"], arr["cache-misses"], arr["instructions"], arr["mem-loads"], arr["mem-stores"]}', "result.csv"]
  with open(output_file_perf, "w") as file:
      subprocess.check_call(command_awk, stdout=file)
  # begin = time.time()
  # try:
  #   subprocess.check_output(clang_command_run)
  # except subprocess.CalledProcessError as e:
  #   print("error clang_command_run")
  # end = time.time()
  exec_time = np.mean(results_list)
  done = True
  return float(exec_time), done

def get_exec_time_OX(c_code, OX, path="."):
  path = "/home/kaikai/Wasm-RL/WasmRL-PPO/wasm-rl-ppo/wasm_gym/envs/dataset/"
  path_out = "/home/kaikai/Wasm-RL/WasmRL-PPO/wasm-rl-ppo/wasm_gym/envs/out/"

  clang_command_ll_base_main = [
      "/home/kaikai/Wasm-RL/llvm-15.0.6/bin/clang",
      "--target=wasm32-wasi",
      "--sysroot=/home/kaikai/Wasm-RL/wasi-sysroot",
      "-Wno-unused-command-line-argument",
      "-S",
      "-emit-llvm",
      "-Xclang",
      "-disable-O0-optnone",
      "-o",
      path_out+c_code+".ll",
      path+c_code+".c",
      "-I",
      "/home/kaikai/Wasm-RL/polybenchC-O2/PolyBenchC-4.2.1/utilities"
      
    ]

  clang_command_ll_base_lib = [
    "/home/kaikai/Wasm-RL/llvm-15.0.6/bin/clang",
    "--target=wasm32-wasi",
    "--sysroot=/home/kaikai/Wasm-RL/wasi-sysroot",
    "-Wno-unused-command-line-argument",
    "-S",
    "-emit-llvm",
    "-Xclang",
    "-disable-O0-optnone",
    "-o",
    path_out+c_code+"_polybench.ll",
    "/home/kaikai/Wasm-RL/polybenchC-O2/PolyBenchC-4.2.1/utilities/polybench.c",
    "-I",
    "/home/kaikai/Wasm-RL/polybenchC-O2/PolyBenchC-4.2.1/utilities"
  ]

  clang_command_opt_base_main = [
    "/home/kaikai/Wasm-RL/llvm-15.0.6/bin/opt",
    "-S",
    OX,
    "-o",
    path_out+c_code+"_opt"+".ll",
    path_out+c_code+".ll",
  ]

  clang_command_opt_base_lib = [
    "/home/kaikai/Wasm-RL/llvm-15.0.6/bin/opt",
    "-S",
    OX,
    "-o",
    path_out+c_code+"_polybench_opt.ll",
    path_out+c_code+"_polybench.ll",
  ]

  clang_command_wasm_base = [
    "/home/kaikai/Wasm-RL/llvm-15.0.6/bin/clang",
    "--target=wasm32-wasi",     
    "--sysroot=/home/kaikai/Wasm-RL/wasi-sysroot",
    "-o",
    path_out+c_code+".wasm",
    path_out+c_code+"_opt"+".ll",
    path_out+c_code+"_polybench_opt.ll",
  ]


  clang_command_run_base = [
    "/home/kaikai/Wasm-RL/iwasm_jit",
    path_out + c_code + ".wasm"
  ]

  subprocess.check_output(clang_command_ll_base_main)
  subprocess.check_output(clang_command_ll_base_lib)
  subprocess.check_output(clang_command_opt_base_main)
  subprocess.check_output(clang_command_opt_base_lib)
  subprocess.check_output(clang_command_wasm_base)
  results_list = []
  for i in range(10):
    begin = time.time()
    subprocess.check_output(clang_command_run_base)
    end = time.time()
    exec_time = end - begin
    results_list.append(exec_time)
  exec_time = np.mean(results_list)
  done = True
  return float(exec_time), done
   
def main():
  indices=[]
  for i in range(133):
    indices.append(i)
    passes=getPasses(indices)
    passes_str =" ".join(str(x) for x in passes)
    # passes_str = "-correlated-propagation -lowerinvoke -strip -strip-nondebug -sccp -globalopt -gvn -jump-threading -globaldce -simple-loop-unswitch -loop-reduce -break-crit-edges -loop-deletion -reassociate -lcssa -memcpyopt -function-attrs -loop-idiom -lowerswitch -constmerge -loop-rotate -partial-inliner -inline -early-cse -indvars -adce -loop-simplify -instcombine -simplifycfg -dse -loop-unroll -lower-expect -tailcallelim"
    print(passes_str)
    # exec_time_O0 = get_exec_time_OX("2mm", "-O0", ".")
    # print("exec_time_O0:", exec_time_O0)
    # exec_time_O2 = get_exec_time_OX("test", "-O2", ".")
    # print("exec_time_O2:", exec_time_O2)
    # exec_time_O3 = get_exec_time_OX("lu", "-O3", ".")
    # print("exec_time_O3:", exec_time_O3)
    # exec_time_Ofast = get_exec_time_OX("2mm", "-Os", ".")
    # print("exec_time_Ofast:", exec_time_Ofast)
    exec_time, done = get_exec_time("floyd-warshall", indices, ".")
    if done: print("optimized:", exec_time)
    else: 
      print("%d", i) 
      break

if __name__ == "__main__":
  main()

