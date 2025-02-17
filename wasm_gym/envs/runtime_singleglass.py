import re
import subprocess
import os
import time
import numpy as np
import signal
from multiprocessing import Process
import sys
import csv

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

def timeout_handler(signum, frame):
    print("Timeout occurred. Terminating the subprocess.")
    raise TimeoutError("Timeout")

def run_build_wasm(c_code, path_out):
    command = f"cd {path_out}{c_code}/hello_world/main/ && ./build_wasm.sh"
    print(command)
    subprocess.run(command, shell=True)

def get_exec_time_singleglass(c_code, opt_indice, path=".", device = "x86"):
  
  path = "/home/kaikai/measurement/modified_singleglass/"
  path_out = "/home/kaikai/measurement/modified_singleglass/"

  clang_command_ll_main_xtensa = [
    "/home/kaikai/Wasm-RL/llvm-15.0.6/bin/clang",
    "--target=wasm32-wasi",
    "--sysroot=/home/kaikai/Wasm-RL/wasi-sysroot",
    "-Wno-unused-command-line-argument",
    "-S",
    "-emit-llvm",
    "-Xclang",
    "-disable-O0-optnone",
    "-o",
    path_out+c_code+"/hello_world/main/"+"benchmark.ll",
    path+c_code+"/hello_world/main/"+"benchmark_pre.c",
    "-Wl,--export=main",
    "-Wl,--export=__main_argc_argv",
    "-Wl,--export=__data_end",
    "-Wl,--export=__heap_base",
    "-Wl,--strip-all",
    "-Wl,--no-entry",
    "-Wl,--allow-undefined",
    "-nostdlib"
  ]

  clang_command_ll_main_x86_arm = [
    "/home/kaikai/Wasm-RL/llvm-15.0.6/bin/clang",
    "--target=wasm32-wasi",
    "--sysroot=/home/kaikai/Wasm-RL/wasi-sysroot",
    "-Wno-unused-command-line-argument",
    "-S",
    "-emit-llvm",
    "-Xclang",
    "-disable-O0-optnone",
    "-o",
    path_out+c_code+"/hello_world/main/"+"benchmark.ll",
    path+c_code+"/hello_world/main/"+"benchmark_x86.c",
    "-Wl,--export=main",
    "-Wl,--export=__main_argc_argv",
    "-Wl,--export=__data_end",
    "-Wl,--export=__heap_base",
    "-Wl,--strip-all",
    "-Wl,--no-entry",
    "-Wl,--allow-undefined",
  ]

  clang_command_opt_main = [
    "/home/kaikai/Wasm-RL/llvm-15.0.6/bin/opt",
    "-S",
    "-o",
    path_out+c_code+"/hello_world/main/"+"benchmark_opt.ll",
    path_out+c_code+"/hello_world/main/"+"benchmark.ll",
  ]
  clang_command_opt_main.extend(getPasses(opt_indice))


  clang_command_wasm_xtensa = [
    "/home/kaikai/Wasm-RL/llvm-15.0.6/bin/clang",
    "--target=wasm32-wasi",     
    "--sysroot=/home/kaikai/Wasm-RL/wasi-sysroot",
    "-o",
    path_out+c_code+"/hello_world/main/"+"benchmark.wasm",
    path_out+c_code+"/hello_world/main/"+"benchmark_opt.ll",
    "-Wl,--export=main",
    "-Wl,--export=__main_argc_argv",
    "-Wl,--export=__data_end",
    "-Wl,--export=__heap_base",
    "-Wl,--strip-all",
    "-Wl,--no-entry",
    "-Wl,--allow-undefined",
    "-nostdlib"
  ]

  clang_command_wasm_arm = [
    "/home/kaikai/Wasm-RL/llvm-15.0.6/bin/clang",
    "--target=wasm32-wasi",     
    "--sysroot=/home/kaikai/Wasm-RL/wasi-sysroot",
    "-o",
    path_out+c_code+"/hello_world/main/"+"benchmark.wasm",
    path_out+c_code+"/hello_world/main/"+"benchmark_opt.ll",
    "-Wl,--export=main",
    "-Wl,--export=__main_argc_argv",
    "-Wl,--export=__data_end",
    "-Wl,--export=__heap_base",
    "-Wl,--strip-all",
    "-Wl,--no-entry",
    "-Wl,--allow-undefined",
  ]

  if device == "esp32":
    try:
      subprocess.check_output(clang_command_ll_main_xtensa)
      subprocess.check_output(clang_command_opt_main)
      subprocess.check_output(clang_command_wasm_xtensa)
      output_file = "/home/kaikai/Wasm-RL/WasmRL-PPO/wasm-rl-ppo/wasm_gym/envs/out/"+c_code+".wat"
      command = ["/home/kaikai/Wasm-RL/wabt-1.0.30/bin/wasm2wat", path_out+c_code+"/hello_world/main/"+"benchmark.wasm"]
      with open(output_file, "w") as file:
        subprocess.check_call(command, stdout=file)
    except subprocess.CalledProcessError as e:
      print("error clang_command_ll_main")
    results_list = []
    timeout = 100
    while len(results_list)<=0 :
        try: 
            signal.signal(signal.SIGALRM, timeout_handler)
            signal.alarm(timeout)
            try:
              timeout_idf = 80
              build_wasm_process = Process(target=run_build_wasm, args=(c_code, path_out))
              build_wasm_process.start()
              signal.alarm(0)
              try:
                  build_wasm_process.join(timeout_idf)
                  if build_wasm_process.is_alive():
                      os.system("sudo pkill -f  /home/kaikai/esp32/esp-idf/tools/idf.py")
                      build_wasm_process.terminate()
                      build_wasm_process.join()
              except TimeoutError:
                print("Build process timed out. Terminating.")   
            except subprocess.CalledProcessError as e:
              print(f"Command execution failed with error code {e.returncode}.")
              continue
        except TimeoutError:
            print("timeout")
            os.system("ssh -tt pi@10.214.131.176 'sudo pkill -f iwasm_interpret' ")
            continue
        except KeyboardInterrupt:
            print("Keyboard interrupt. Terminating.")
            sys.exit()  
        with open("/home/kaikai/Wasm-RL/WasmRL-PPO/wasm-rl-ppo/wasm_gym/envs/out/output_esp.txt" , 'r') as file:
            content = file.read()
        match = re.search(r'Execution time: (\d+) us', content)
        if match:
            execution_time = int(match.group(1))
            print('Execution time:', execution_time, 'us')
        else:
            print('Execution time not found in the output.')
        results_list.append(execution_time)
    os.system("sudo pkill -f  /home/kaikai/esp32/esp-idf/tools/idf.py")

  elif device == "raspberry":
    try:
      subprocess.check_output(clang_command_ll_main_x86_arm)
      subprocess.check_output(clang_command_opt_main)
      subprocess.check_output(clang_command_wasm_arm)
      output_file = "/home/kaikai/Wasm-RL/WasmRL-PPO/wasm-rl-ppo/wasm_gym/envs/out/"+c_code+".wat"
      command = ["/home/kaikai/Wasm-RL/wabt-1.0.30/bin/wasm2wat", path_out+c_code+"/hello_world/main/"+"benchmark.wasm"]
      with open(output_file, "w") as file:
        subprocess.check_call(command, stdout=file)
    except subprocess.CalledProcessError as e:
      print("error clang_command_ll_main")
    os.system('mv ' + path_out+c_code+"/hello_world/main/"+"benchmark.wasm"+ ' ' + path_out+c_code+"/hello_world/main/"+"poly.wasm" )
    os.system( 'scp ' + path_out+c_code+'/hello_world/main/'+'poly.wasm'  + ' ' + 'pi@10.214.131.176:' + '/home/pi/WasmRL-PPO/wasm-rl-ppo/benchmark/')
    results_list = []
    timeout = 1000
    while len(results_list)<=30 :
        try: 
            signal.signal(signal.SIGALRM, timeout_handler)
            signal.alarm(timeout)
            try:
                command = 'ssh -tt mini-edge@10.214.131.152 "/home/mini-edge/arm-wasm/iwasm_interpreter /home/mini-edge/WasmRL-PPO/wasm-rl-ppo/benchmark/poly.wasm"'
                output_bytes  = subprocess.check_output(command, shell=True, stderr=subprocess.STDOUT)
                output = output_bytes.decode('utf-8')
                match = re.search(r'Execution time: (\d+) us', output)
                if match:
                    execution_time = int(match.group(1))
                else:
                    print('Execution time not found in the input string.')
                exec_time = int(match.group(1))
                signal.alarm(0)
                print(exec_time)
                results_list.append(exec_time)
            except subprocess.CalledProcessError as e:
                os.system("ssh -tt pi@10.214.131.176 'sudo pkill -f iwasm_interpret' ")
                print(f"Command execution failed with error code {e.returncode}.")
                print("Command output:")
                print(e.output.decode('utf-8'))
                continue
            except Exception as e:
                os.system("ssh -tt pi@10.214.131.176 'sudo pkill -f iwasm_interpret' ")
                print(f"An error occurred: {e}")
                continue
        except TimeoutError:
            print("timeout")
            os.system("ssh -tt pi@10.214.131.176 'sudo pkill -f iwasm_interpret' ")
            continue
      
  elif device == "jetsonnano":
    try:
      subprocess.check_output(clang_command_ll_main_x86_arm)
      subprocess.check_output(clang_command_opt_main)
      subprocess.check_output(clang_command_wasm_arm)
    except subprocess.CalledProcessError as e:
      print("error clang_command_ll_main")
    os.system('mv ' + path_out+c_code+"/hello_world/main/"+"benchmark.wasm"+ ' ' + path_out+c_code+"/hello_world/main/"+"poly.wasm" )
    os.system( 'scp ' +  path_out+c_code+'/hello_world/main/'+'poly.wasm' + ' ' + 'mini-edge@10.214.131.152:' + '/home/mini-edge/WasmRL-PPO/wasm-rl-ppo/benchmark/')
    results_list = []
    timeout = 6
    while len(results_list)<=0 :
      try: 
          signal.signal(signal.SIGALRM, timeout_handler)
          signal.alarm(timeout)
          try:
              command = 'ssh -tt mini-edge@10.214.131.152 "/home/mini-edge/arm-wasm/iwasm_interpreter /home/mini-edge/WasmRL-PPO/wasm-rl-ppo/benchmark/poly.wasm"'
              begin = time.time()
              output_bytes  = subprocess.check_output(command, shell=True, stderr=subprocess.STDOUT)
              end = time.time()
              exec_time = end - begin
              results_list.append(exec_time)
              signal.alarm(0)
              print(exec_time)
          except subprocess.CalledProcessError as e:
              os.system("ssh -tt mini-edge@10.214.131.152 'sudo pkill -f iwasm_interpret' ")
              print(f"Command execution failed with error code {e.returncode}.")
              print("Command output:")
              print(e.output.decode('utf-8'))
              continue
          except Exception as e:
              os.system("ssh -tt mini-edge@10.214.131.152 'sudo pkill -f iwasm_interpret' ")
              print(f"An error occurred: {e}")
              continue
      except TimeoutError:
          print("timeout")
          os.system("ssh -tt mini-edge@10.214.131.152 'sudo pkill -f iwasm_interpret' ")
          continue
  exec_time = np.median(results_list)
  print("Results List:", results_list)
  done = True
  return float(exec_time), done

def get_exec_time_singleglass_ox(c_code, OX, path=".", device = "x86"):
  
  path = "/home/kaikai/measurement/modified_singleglass/"
  path_out = "/home/kaikai/measurement/modified_singleglass/"

  clang_command_ll_main_xtensa = [
    "/home/kaikai/Wasm-RL/llvm-15.0.6/bin/clang",
    "--target=wasm32-wasi",
    "--sysroot=/home/kaikai/Wasm-RL/wasi-sysroot",
    "-Wno-unused-command-line-argument",
    "-S",
    "-emit-llvm",
    "-Xclang",
    "-disable-O0-optnone",
    "-o",
    path_out+c_code+"/hello_world/main/"+"benchmark.ll",
    path+c_code+"/hello_world/main/"+"benchmark_pre.c",
    "-Wl,--export=main",
    "-Wl,--export=__main_argc_argv",
    "-Wl,--export=__data_end",
    "-Wl,--export=__heap_base",
    "-Wl,--strip-all",
    "-Wl,--no-entry",
    "-Wl,--allow-undefined",
    "-nostdlib"
  ]

  clang_command_ll_main_x86_arm = [
    "/home/kaikai/Wasm-RL/llvm-15.0.6/bin/clang",
    "--target=wasm32-wasi",
    "--sysroot=/home/kaikai/Wasm-RL/wasi-sysroot",
    "-Wno-unused-command-line-argument",
    "-S",
    "-emit-llvm",
    "-Xclang",
    "-disable-O0-optnone",
    "-o",
    path_out+c_code+"/hello_world/main/"+"benchmark.ll",
    path+c_code+"/hello_world/main/"+"benchmark_x86.c",
    "-Wl,--export=main",
    "-Wl,--export=__main_argc_argv",
    "-Wl,--export=__data_end",
    "-Wl,--export=__heap_base",
    "-Wl,--strip-all",
    "-Wl,--no-entry",
    "-Wl,--allow-undefined",
    "-nostdlib"
  ]

  clang_command_opt_main = [
    "/home/kaikai/Wasm-RL/llvm-15.0.6/bin/opt",
    "-S",
    OX,
    "-o",
    path_out+c_code+"/hello_world/main/"+"benchmark_opt.ll",
    path_out+c_code+"/hello_world/main/"+"benchmark.ll",
  ]


  clang_command_wasm_xtensa = [
    "/home/kaikai/Wasm-RL/llvm-15.0.6/bin/clang",
    "--target=wasm32-wasi",     
    "--sysroot=/home/kaikai/Wasm-RL/wasi-sysroot",
    "-o",
    path_out+c_code+"/hello_world/main/"+"benchmark.wasm",
    path_out+c_code+"/hello_world/main/"+"benchmark_opt.ll",
    "-Wl,--export=main",
    "-Wl,--export=__main_argc_argv",
    "-Wl,--export=__data_end",
    "-Wl,--export=__heap_base",
    "-Wl,--strip-all",
    "-Wl,--no-entry",
    "-Wl,--allow-undefined",
    "-nostdlib"
  ]

  clang_command_wasm_arm = [
    "/home/kaikai/Wasm-RL/llvm-15.0.6/bin/clang",
    "--target=wasm32-wasi",     
    "--sysroot=/home/kaikai/Wasm-RL/wasi-sysroot",
    "-o",
    path_out+c_code+"/hello_world/main/"+"benchmark.wasm",
    path_out+c_code+"/hello_world/main/"+"benchmark_opt.ll"
  ]

  if device == "esp32":
    try:
      subprocess.check_output(clang_command_ll_main_xtensa)
      subprocess.check_output(clang_command_opt_main)
      subprocess.check_output(clang_command_wasm_xtensa)
    except subprocess.CalledProcessError as e:
      print("error clang_command_ll_main")
    results_list = []
    timeout = 100
    while len(results_list)<=0 :
        try: 
            signal.signal(signal.SIGALRM, timeout_handler)
            signal.alarm(timeout)
            try:
              timeout_idf = 50
              build_wasm_process = Process(target=run_build_wasm, args=(c_code, path_out))
              build_wasm_process.start()
              signal.alarm(0)
              try:
                  build_wasm_process.join(timeout_idf)
                  if build_wasm_process.is_alive():
                      os.system("sudo pkill -f  /home/kaikai/esp32/esp-idf/tools/idf.py")
                      build_wasm_process.terminate()
                      build_wasm_process.join()
              except TimeoutError:
                print("Build process timed out. Terminating.")   
            except subprocess.CalledProcessError as e:
              print(f"Command execution failed with error code {e.returncode}.")
              continue
        except TimeoutError:
            print("timeout")
            continue
        except KeyboardInterrupt:
            print("Keyboard interrupt. Terminating.")
            sys.exit()  
        with open("/home/kaikai/Wasm-RL/WasmRL-PPO/wasm-rl-ppo/wasm_gym/envs/out/output_esp.txt" , 'r') as file:
            content = file.read()
        match = re.search(r'Execution time: (\d+) us', content)
        if match:
            execution_time = int(match.group(1))
            print('Execution time:', execution_time, 'us')
        else:
            print('Execution time not found in the output.')
        results_list.append(execution_time)
    os.system("sudo pkill -f  /home/kaikai/esp32/esp-idf/tools/idf.py")

  elif device == "raspberry":
    try:
      subprocess.check_output(clang_command_ll_main_x86_arm)
      subprocess.check_output(clang_command_opt_main)
      subprocess.check_output(clang_command_wasm_arm)
    except subprocess.CalledProcessError as e:
      print("error clang_command_ll_main")
    os.system('mv ' + path_out+c_code+"/hello_world/main/"+"benchmark.wasm"+ ' ' + path_out+c_code+"/hello_world/main/"+"poly.wasm" )
    os.system( 'scp ' + path_out+c_code+'/hello_world/main/'+'poly.wasm'  + ' ' + 'pi@10.214.131.176:' + '/home/pi/WasmRL-PPO/wasm-rl-ppo/benchmark/')
    results_list = []
    timeout = 10
    while len(results_list)<=5 :
        try: 
            signal.signal(signal.SIGALRM, timeout_handler)
            signal.alarm(timeout)
            try:
                command = 'ssh -tt pi@10.214.131.176 "/home/pi/arm-wasm/iwasm_interpreter /home/pi/WasmRL-PPO/wasm-rl-ppo/benchmark/poly.wasm"'
                output_bytes  = subprocess.check_output(command, shell=True, stderr=subprocess.STDOUT)
                output = output_bytes.decode('utf-8')
                match = re.search(r'Execution time: (\d+) us', output)
                if match:
                    execution_time = int(match.group(1))
                else:
                    print('Execution time not found in the input string.')
                exec_time = int(match.group(1))
                signal.alarm(0)
                print(exec_time)
                results_list.append(exec_time)
            except subprocess.CalledProcessError as e:
                os.system("ssh -tt pi@10.214.131.176 'sudo pkill -f iwasm_interpret' ")
                print(f"Command execution failed with error code {e.returncode}.")
                print("Command output:")
                print(e.output.decode('utf-8'))
                continue
            except Exception as e:
                os.system("ssh -tt pi@10.214.131.176 'sudo pkill -f iwasm_interpret' ")
                print(f"An error occurred: {e}")
                continue
        except TimeoutError:
            print("timeout")
            os.system("ssh -tt pi@10.214.131.176 'sudo pkill -f iwasm_interpret' ")
            continue
      
  elif device == "jetsonnano":
    try:
      subprocess.check_output(clang_command_ll_main_x86_arm)
      subprocess.check_output(clang_command_opt_main)
      subprocess.check_output(clang_command_wasm_arm)
    except subprocess.CalledProcessError as e:
      print("error clang_command_ll_main")
    os.system('mv ' + path_out+c_code+"/hello_world/main/"+"benchmark.wasm"+ ' ' + path_out+c_code+"/hello_world/main/"+"poly.wasm" )
    os.system( 'scp ' + path_out+c_code+'/hello_world/main/'+'poly.wasm' + ' ' + 'mini-edge@10.214.131.152:' + '/home/mini-edge/WasmRL-PPO/wasm-rl-ppo/benchmark/')
    results_list = []
    timeout = 6
    while len(results_list)<=0 :
      try: 
          signal.signal(signal.SIGALRM, timeout_handler)
          signal.alarm(timeout)
          try:
              command = 'ssh -tt mini-edge@10.214.131.152 "/home/mini-edge/arm-wasm/iwasm_interpreter /home/mini-edge/WasmRL-PPO/wasm-rl-ppo/benchmark/poly.wasm"'
              begin = time.time()
              output_bytes  = subprocess.check_output(command, shell=True, stderr=subprocess.STDOUT)
              end = time.time()
              exec_time = end - begin
              results_list.append(exec_time)
              signal.alarm(0)
              print(exec_time)
          except subprocess.CalledProcessError as e:
              os.system("ssh -tt mini-edge@10.214.131.152 'sudo pkill -f iwasm_interpret' ")
              print(f"Command execution failed with error code {e.returncode}.")
              print("Command output:")
              print(e.output.decode('utf-8'))
              continue
          except Exception as e:
              os.system("ssh -tt mini-edge@10.214.131.152 'sudo pkill -f iwasm_interpret' ")
              print(f"An error occurred: {e}")
              continue
      except TimeoutError:
          print("timeout")
          os.system("ssh -tt mini-edge@10.214.131.152 'sudo pkill -f iwasm_interpret' ")
          continue
  exec_time = np.mean(results_list)
  print("Results List:", results_list)
  done = True
  return float(exec_time), done

def get_exec_time_ox_with_type(c_code, OX, path=".", device = "x86", type = "wasm"):
  
  path = "/home/kaikai/measurement/modified_singleglass/"
  path_out = "/home/kaikai/measurement/modified_singleglass/"

  clang_command_ll_main_xtensa = [
    "/home/kaikai/Wasm-RL/llvm-15.0.6/bin/clang",
    "--target=wasm32-wasi",
    "--sysroot=/home/kaikai/Wasm-RL/wasi-sysroot",
    "-Wno-unused-command-line-argument",
    "-S",
    "-emit-llvm",
    "-Xclang",
    "-disable-O0-optnone",
    "-o",
    path_out+c_code+"/hello_world/main/"+"benchmark.ll",
    path+c_code+"/hello_world/main/"+"benchmark_pre.c",
    "-Wl,--export=main",
    "-Wl,--export=__main_argc_argv",
    "-Wl,--export=__data_end",
    "-Wl,--export=__heap_base",
    "-Wl,--strip-all",
    "-Wl,--no-entry",
    "-Wl,--allow-undefined",
    "-nostdlib"
  ]

  clang_command_ll_main_x86_arm = [
    "/home/kaikai/Wasm-RL/llvm-15.0.6/bin/clang",
    "--target=wasm32-wasi",
    "--sysroot=/home/kaikai/Wasm-RL/wasi-sysroot",
    "-Wno-unused-command-line-argument",
    "-S",
    "-emit-llvm",
    "-Xclang",
    "-disable-O0-optnone",
    "-o",
    path_out+c_code+"/hello_world/main/"+"benchmark.ll",
    path+c_code+"/hello_world/main/"+"benchmark_x86.c",
    "-Wl,--export=main",
    "-Wl,--export=__main_argc_argv",
    "-Wl,--export=__data_end",
    "-Wl,--export=__heap_base",
    "-Wl,--strip-all",
    "-Wl,--no-entry",
    "-Wl,--allow-undefined",
    "-nostdlib"
  ]

  clang_command_ll_main_x86_arm_native = [
     "/home/kaikai/Wasm-RL/llvm-15.0.6/bin/clang",
    "--target=aarch64-linux-gnu",
    "-Wno-unused-command-line-argument",
    "-S",
    "-emit-llvm",
    "-Xclang",
    "-disable-O0-optnone",
    "-o",
    path_out+c_code+"/hello_world/main/"+"benchmark.ll",
    path+c_code+"/hello_world/main/"+"benchmark_x86.c",
    "-Wl,--export=main",
    "-Wl,--export=__main_argc_argv",
    "-Wl,--export=__data_end",
    "-Wl,--export=__heap_base",
    "-Wl,--strip-all",
    "-Wl,--no-entry",
    "-Wl,--allow-undefined",
    "-nostdlib"
  ]

  clang_command_opt_main = [
    "/home/kaikai/Wasm-RL/llvm-15.0.6/bin/opt",
    "-S",
    OX,
    "-o",
    path_out+c_code+"/hello_world/main/"+"benchmark_opt.ll",
    path_out+c_code+"/hello_world/main/"+"benchmark.ll",
  ]

  clang_command_wasm_xtensa = [
    "/home/kaikai/Wasm-RL/llvm-15.0.6/bin/clang",
    "--target=wasm32-wasi",     
    "--sysroot=/home/kaikai/Wasm-RL/wasi-sysroot",
    "-o",
    path_out+c_code+"/hello_world/main/"+"benchmark.wasm",
    path_out+c_code+"/hello_world/main/"+"benchmark_opt.ll",
    "-Wl,--export=main",
    "-Wl,--export=__main_argc_argv",
    "-Wl,--export=__data_end",
    "-Wl,--export=__heap_base",
    "-Wl,--strip-all",
    "-Wl,--no-entry",
    "-Wl,--allow-undefined",
    "-nostdlib"
  ]

  clang_command_wasm_arm = [
    "/home/kaikai/Wasm-RL/llvm-15.0.6/bin/clang",
    "--target=wasm32-wasi",     
    "--sysroot=/home/kaikai/Wasm-RL/wasi-sysroot",
    "-o",
    path_out+c_code+"/hello_world/main/"+"benchmark.wasm",
    path_out+c_code+"/hello_world/main/"+"benchmark_opt.ll"
  ]

  clang_command_wasm_arm_native = [
    "/home/kaikai/Wasm-RL/llvm-15.0.6/bin/clang",
    "--target=aarch64-linux-gnu",     
    "-o",
    path_out+c_code+"/hello_world/main/"+"benchmark.out",
    path_out+c_code+"/hello_world/main/"+"benchmark_opt.ll"
  ]
  
  map_command = {
     "raspberry": "--target=aarch64v8",
     "jetsonnano":  "--target=aarch64",
  }
  
  iternum = 5

  aot_command_wasm = [
     "/home/kaikai/x86_wasm/wamrc",
     map_command[device],
     "-o",
     path_out+c_code+"/hello_world/main/"+"benchmark.aot",
     path_out+c_code+"/hello_world/main/"+"benchmark.wasm",
  ]

  if device == "esp32":
    try:
      subprocess.check_output(clang_command_ll_main_xtensa)
      subprocess.check_output(clang_command_opt_main)
      subprocess.check_output(clang_command_wasm_xtensa)
    except subprocess.CalledProcessError as e:
      print("error clang_command_ll_main")
    results_list = []
    timeout = 100
    while len(results_list)<=0 :
        try: 
            signal.signal(signal.SIGALRM, timeout_handler)
            signal.alarm(timeout)
            try:
              timeout_idf = 50
              build_wasm_process = Process(target=run_build_wasm, args=(c_code, path_out))
              build_wasm_process.start()
              signal.alarm(0)
              try:
                  build_wasm_process.join(timeout_idf)
                  if build_wasm_process.is_alive():
                      os.system("sudo pkill -f  /home/kaikai/esp32/esp-idf/tools/idf.py")
                      build_wasm_process.terminate()
                      build_wasm_process.join()
              except TimeoutError:
                print("Build process timed out. Terminating.")   
            except subprocess.CalledProcessError as e:
              print(f"Command execution failed with error code {e.returncode}.")
              continue
        except TimeoutError:
            print("timeout")
            continue
        except KeyboardInterrupt:
            print("Keyboard interrupt. Terminating.")
            sys.exit()  
        with open("/home/kaikai/Wasm-RL/WasmRL-PPO/wasm-rl-ppo/wasm_gym/envs/out/output_esp.txt" , 'r') as file:
            content = file.read()
        match = re.search(r'Execution time: (\d+) us', content)
        if match:
            execution_time = int(match.group(1))
            print('Execution time:', execution_time, 'us')
        else:
            print('Execution time not found in the output.')
        results_list.append(execution_time)
    os.system("sudo pkill -f  /home/kaikai/esp32/esp-idf/tools/idf.py")

  elif device == "raspberry":
    try:
      if type == "out":
        subprocess.check_output(clang_command_ll_main_x86_arm_native)
        subprocess.check_output(clang_command_opt_main)
        subprocess.check_output(clang_command_wasm_arm_native)
      else:
        subprocess.check_output(clang_command_ll_main_x86_arm)
        subprocess.check_output(clang_command_opt_main)
        subprocess.check_output(clang_command_wasm_arm)
        if type == "aot":
          subprocess.check_output(aot_command_wasm)
    except subprocess.CalledProcessError as e:
      print("error clang_command_ll_main")
    os.system('mv ' + path_out+c_code+"/hello_world/main/"+"benchmark." + type + ' ' + path_out+c_code+"/hello_world/main/"+"poly." + type )
    os.system( 'scp ' + path_out+c_code+'/hello_world/main/'+'poly.' + type + ' ' + 'pi@10.214.131.176:' + '/home/pi/WasmRL-PPO/wasm-rl-ppo/benchmark/')
    results_list = []
    timeout = 10
    while len(results_list)<=iternum :
        try: 
            signal.signal(signal.SIGALRM, timeout_handler)
            signal.alarm(timeout)
            try:
                command = 'ssh -tt pi@10.214.131.176 "/home/pi/arm-wasm/iwasm_interpreter /home/pi/WasmRL-PPO/wasm-rl-ppo/benchmark/poly.' + type + '"'
                if type == "out":
                  command = 'ssh -tt pi@10.214.131.176 "/home/pi/WasmRL-PPO/wasm-rl-ppo/benchmark/poly.' + type + '"'
                output_bytes  = subprocess.check_output(command, shell=True, stderr=subprocess.STDOUT)
                output = output_bytes.decode('utf-8')
                match = re.search(r'Execution time: (\d+) us', output)
                if match:
                    execution_time = int(match.group(1))
                else:
                    print('Execution time not found in the input string.')
                exec_time = int(match.group(1))
                signal.alarm(0)
                print(exec_time)
                results_list.append(exec_time)
            except subprocess.CalledProcessError as e:
                os.system("ssh -tt pi@10.214.131.176 'sudo pkill -f iwasm_interpret' ")
                os.system("ssh -tt pi@10.214.131.176 'sudo pkill -f poly.out' ")
                print(f"Command execution failed with error code {e.returncode}.")
                print("Command output:")
                print(e.output.decode('utf-8'))
                continue
            except Exception as e:
                os.system("ssh -tt pi@10.214.131.176 'sudo pkill -f iwasm_interpret' ")
                os.system("ssh -tt pi@10.214.131.176 'sudo pkill -f poly.out' ")
                print(f"An error occurred: {e}")
                continue
        except TimeoutError:
            print("timeout")
            os.system("ssh -tt pi@10.214.131.176 'sudo pkill -f iwasm_interpret' ")
            os.system("ssh -tt pi@10.214.131.176 'sudo pkill -f poly.out' ")
            continue
      
  elif device == "jetsonnano":
    try:
      if type == "out":
        subprocess.check_output(clang_command_ll_main_x86_arm_native)
        subprocess.check_output(clang_command_opt_main)
        subprocess.check_output(clang_command_wasm_arm_native)
      else:
        subprocess.check_output(clang_command_ll_main_x86_arm)
        subprocess.check_output(clang_command_opt_main)
        subprocess.check_output(clang_command_wasm_arm)
        if type == "aot":
          subprocess.check_output(aot_command_wasm)
    except subprocess.CalledProcessError as e:
      print("error clang_command_ll_main")
    os.system('mv ' + path_out+c_code+"/hello_world/main/"+"benchmark." + type + ' ' + path_out+c_code+"/hello_world/main/"+"poly." + type )
    os.system( 'scp ' + path_out+c_code+'/hello_world/main/'+'poly.' + type  + ' ' + 'mini-edge@10.214.131.152:' + '/home/mini-edge/WasmRL-PPO/wasm-rl-ppo/benchmark/')
    results_list = []
    timeout = 6
    while len(results_list)<=iternum :
      try: 
          signal.signal(signal.SIGALRM, timeout_handler)
          signal.alarm(timeout)
          try:
              command = 'ssh -tt mini-edge@10.214.131.152 "/home/mini-edge/arm-wasm/iwasm_interpreter /home/mini-edge/WasmRL-PPO/wasm-rl-ppo/benchmark/poly.' + type +'"'
              if type == "out":
                 command = 'ssh -tt mini-edge@10.214.131.152 "/home/mini-edge/WasmRL-PPO/wasm-rl-ppo/benchmark/poly.' + type +'"'
              output_bytes  = subprocess.check_output(command, shell=True, stderr=subprocess.STDOUT)
              output = output_bytes.decode('utf-8')
              match = re.search(r'Execution time: (\d+) us', output)
              if match:
                  execution_time = int(match.group(1))
              else:
                  print('Execution time not found in the input string.')
              exec_time = int(match.group(1))
              signal.alarm(0)
              print(exec_time)
              results_list.append(exec_time)
          except subprocess.CalledProcessError as e:
              os.system("ssh -tt mini-edge@10.214.131.152 'sudo pkill -f iwasm_interpret' ")
              os.system("ssh -tt mini-edge@10.214.131.152 'sudo pkill -f poly.out' ")
              print(f"Command execution failed with error code {e.returncode}.")
              print("Command output:")
              print(e.output.decode('utf-8'))
              continue
          except Exception as e:
              os.system("ssh -tt mini-edge@10.214.131.152 'sudo pkill -f iwasm_interpret' ")
              os.system("ssh -tt mini-edge@10.214.131.152 'sudo pkill -f poly.out' ")
              print(f"An error occurred: {e}")
              continue
      except TimeoutError:
          print("timeout")
          os.system("ssh -tt mini-edge@10.214.131.152 'sudo pkill -f iwasm_interpret' ")
          os.system("ssh -tt mini-edge@10.214.131.152 'sudo pkill -f poly.out' ")
          continue
  
  exec_time = median(results_list)
  print("Results List:", results_list)
  done = True
  return float(exec_time), done

def median(results_list):
  '''
  #从results_list中取掉两个最高值和两个最低值，剩下的取平均值
  取中位数
  '''
  return np.median(results_list)

out_path = "/home/kaikai/Wasm-RL/WasmRL-PPO/wasm-rl-ppo/wasm_gym/envs/motivated_out/arm/"

def main():
  benchmarks = [
    #  "shootout-base64",
    #  "shootout-ctype",
    #  "shootout-fib2",
    #  "shootout-gimli",
     "shootout-matrix",
    #  "shootout-memmove",
    #  "shootout-random",
  ]
  indices = []
  for bm in benchmarks:
    for i in range(1):
      indices.append(i)
      passes=getPasses(indices)
      passes_str =" ".join(str(x) for x in passes)        
      # exec_time, done = get_exec_time_singleglass(bm, indices, ".", "jetsonnano")
      exec_time, done = get_exec_time_singleglass_ox(bm, "-O3", ".", "jetsonnano")
      if done: print("optimized:", bm, exec_time)
      else: 
        print("%d", i) 
        break
 

if __name__ == "__main__":
  main()

