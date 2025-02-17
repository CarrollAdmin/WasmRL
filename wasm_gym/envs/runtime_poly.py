import re
import subprocess
import os
import time
import psutil
import numpy as np
import signal

file_path = "/home/kaikai/WasmRL/wasm_gym/envs/flags/flags-45.txt"  
with open(file_path, "r") as file:
    opt_passes_str = file.read().strip()

compile_str = """
  /root/Wasm-RL/llvm-15.0.6/bin/clang --target=wasm32-wasi --sysroot=/root/Wasm-RL/wasi-sysroot -S -emit-llvm -o test.ll test.c
  /root/Wasm-RL/llvm-15.0.6/bin/opt -O2 -S -o test.ll test.ll
  /root/Wasm-RL/llvm-15.0.6/bin/clang --target=wasm32-wasi --sysroot=/root/Wasm-RL/wasi-sysroot -o test.wasm test_opt.ll
"""
is_perf = False
def timeout_handler(signum, frame):
    raise TimeoutError("Timeout")

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


def get_exec_time_poly(c_code, opt_indice, path=".", device = "x86"):
  
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
    clang_command_wasm = [
        "/home/kaikai/Wasm-RL/llvm-15.0.6/bin/clang",
        "--target=wasm32-wasi",     
        "--sysroot=/home/kaikai/Wasm-RL/wasi-sysroot",
        "-o",
        path_out+c_code+".wasm",
        path_out+c_code+"_opt"+".ll",
        path_out+c_code+"_polybench_opt.ll",
    ]
    aot_wasm = [
        "/home/kaikai/x86_wasm/wamrc",
        "--target=aarch64",
        "-o",
        path_out+c_code+".aot",
        path_out+c_code+".wasm"
    ]
    try:
        subprocess.check_output(clang_command_ll_main)
        subprocess.check_output(clang_command_ll_lib)
        subprocess.check_output(clang_command_opt_main)
        subprocess.check_output(clang_command_opt_lib)
        subprocess.check_output(clang_command_wasm)
        # subprocess.check_output(aot_wasm)
    except subprocess.CalledProcessError as e:
        print("error clang_command")
    output_file = path_out + c_code + ".wat"
    command = ["/home/kaikai/Wasm-RL/wabt-1.0.30/bin/wasm2wat", path_out + c_code + ".wasm"]
    with open(output_file, "w") as file:
        subprocess.check_call(command, stdout=file)
    if device == "x86":
        output_file_perf = path_out + c_code + ".perf"
        command_perf = ["sudo", "perf", "stat", "-e", "branch-instructions", "-e", "branch-misses", "-e", "cache-references", "-e", "cache-misses", "-e", "instructions", "-e", "mem-loads", "-e", "mem-stores", "-x", ";", "-o", "result.csv", "/home/kaikai/Wasm-RL/iwasm_interpreter", path_out + c_code + ".wasm"]
        results_list = []
        for i in range(1):
            begin = time.time()
        try: 
            result = subprocess.run(command_perf, capture_output=True, text=True, timeout=2.5)
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
        if is_perf:
            command_awk = ["sudo", "awk", "-F", ";", 'BEGIN {OFS=","} $3=="branch-instructions" || $3=="branch-misses" || $3=="cache-references" || $3=="cache-misses" || $3=="instructions"  || $3=="mem-loads" || $3=="mem-stores"{arr[$3] = $1} END {print arr["branch-instructions"], arr["branch-misses"], arr["cache-references"], arr["cache-misses"], arr["instructions"], arr["mem-loads"], arr["mem-stores"]}', "result.csv"]
            with open(output_file_perf, "w") as file:
                subprocess.check_call(command_awk, stdout=file)

    elif device == "jetsonnano":
        output_file_perf = path_out + c_code + ".perf"
        os.system('mv ' + path_out + c_code + '.wasm' + ' ' + path_out + 'poly.wasm' )
        os.system( 'scp ' + path_out + 'poly.wasm' + ' ' + 'mini-edge@10.214.131.152:' + '/home/mini-edge/WasmRL-PPO/wasm-rl-ppo/benchmark/')
        results_list = []
        timeout = 10
        for i in range(1):
            try: 
                signal.signal(signal.SIGALRM, timeout_handler)
                signal.alarm(timeout)
                try:
                    command = 'ssh -tt mini-edge@10.214.131.152 "/usr/bin/time -f %e  /home/mini-edge/arm-wasm/iwasm_interpreter /home/mini-edge/WasmRL-PPO/wasm-rl-ppo/benchmark/poly.wasm"'
                    output_bytes  = subprocess.check_output(command, shell=True, stderr=subprocess.STDOUT)
                    output = output_bytes.decode('utf-8')
                    lines = output.split('\r\n')
                    first_line = lines[0]
                    exec_time = float(first_line)
                    print("jetsonnano: ", exec_time)
                    result = None
                    signal.alarm(0)
                    results_list.append(exec_time)
                except subprocess.CalledProcessError as e:
                    os.system("ssh -tt mini-edge@10.214.131.152 'sudo pkill -f iwasm_interpret' ")
                    print(f"Command execution failed with error code {e.returncode}.")
                    print("Command output:")
                    print(e.output.decode('utf-8'))  
                    results_list.append(timeout)
                except Exception as e:
                    print(f"An error occurred: {e}")
                    os.system("ssh -tt mini-edge@10.214.131.152 'sudo pkill -f iwasm_interpret' ")
                    results_list.append(timeout)
            except TimeoutError:
                print("timeout")
                os.system("ssh -tt mini-edge@10.214.131.152 'sudo pkill -f iwasm_interpret' ")
                results_list.append(timeout)
                break
            if is_perf:
                os.system("scp mini-edge@10.214.131.152:/home/mini-edge/WasmRL-PPO/wasm-rl-ppo/benchmark/result.csv " + path + "result-jetson.csv")
                command_awk = ["sudo", "awk", "-F", ";", 'BEGIN {OFS=","} $3=="armv8_pmuv3/br_pred/" || $3=="armv8_pmuv3/br_mis_pred/" || $3=="armv8_pmuv3/l1d_cache/" || $3=="armv8_pmuv3/l1d_cache_refill/" || $3==\"armv8_pmuv3/l1i_cache/" || $3=="armv8_pmuv3/l1i_cache_refill/" || $3=="armv8_pmuv3/mem_access/" || $3=="armv8_pmuv3/memory_error/" || $3=="armv8_pmuv3/inst_retired/" || $3=="armv8_pmuv3/inst_spec/" {arr[$3] = $1} END {print arr["armv8_pmuv3/br_pred/"], arr["armv8_pmuv3/br_mis_pred/"], arr["armv8_pmuv3/l1d_cache/"], arr["armv8_pmuv3/l1d_cache_refill/"], arr["armv8_pmuv3/l1i_cache/"], arr["armv8_pmuv3/l1i_cache_refill/"], arr["armv8_pmuv3/mem_access/"], arr["armv8_pmuv3/memory_error/"], arr["armv8_pmuv3/inst_retired/"], arr["armv8_pmuv3/inst_spec/"]}', path + "result-jetson.csv"]
                with open(output_file_perf, "w") as file:
                    subprocess.check_call(command_awk, stdout=file)

    elif device == "raspberry":
        output_file_perf = path_out + c_code + ".perf"
        os.system('mv ' + path_out + c_code + '.wasm' + ' ' + path_out + 'poly.wasm' )
        os.system( 'scp ' + path_out + 'poly.wasm' + ' ' + 'pi@10.214.131.178:' + '/home/pi/WasmRL-PPO/wasm-rl-ppo/benchmark/')
        results_list = []
        timeout = 10
        for i in range(1):
            try: 
                signal.signal(signal.SIGALRM, timeout_handler)
                signal.alarm(timeout)
                try:
                    command = 'ssh -tt pi@10.214.131.178 "/usr/bin/time -f %e /home/pi/arm-wasm/iwasm_interpreter /home/pi/WasmRL-PPO/wasm-rl-ppo/benchmark/poly.wasm"'
                    output_bytes  = subprocess.check_output(command, shell=True, stderr=subprocess.STDOUT)
                    output = output_bytes.decode('utf-8')
                    lines = output.split('\r\n')
                    first_line = lines[0]
                    exec_time = float(first_line)
                    print("raspberry: ", exec_time)
                    result = None
                    signal.alarm(0)
                    results_list.append(exec_time)
                except subprocess.CalledProcessError as e:
                    os.system("ssh -tt pi@10.214.131.178 'sudo pkill -f iwasm_interpret' ")
                    print(f"Command execution failed with error code {e.returncode}.")
                    print("Command output:")
                    print(e.output.decode('utf-8'))  
                    results_list.append(timeout)
                except Exception as e:
                    os.system("ssh -tt pi@10.214.131.178 'sudo pkill -f iwasm_interpret' ")
                    print(f"An error occurred: {e}")
                    results_list.append(timeout)
                except TimeoutError:
                    print("timeout")
                    os.system("ssh -tt pi@10.214.131.178 'sudo pkill -f iwasm_interpret' ")
                    results_list.append(timeout)
                    break
            except TimeoutError:
                    print("timeout")
                    os.system("ssh -tt pi@10.214.131.178 'sudo pkill -f iwasm_interpret' ")
                    results_list.append(timeout)
                    break
            if is_perf:
                os.system("scp pi@10.214.131.178:/home/pi/WasmRL-PPO/wasm-rl-ppo/benchmark/result.csv " + path + "result-jetson.csv")
                command_awk = ["sudo", "awk", "-F", ";", 'BEGIN {OFS=","} $3=="br_pred" || $3=="br_mis_pred" || $3=="l1d_cache" || $3=="l1d_cache_refill" || $3=="l1i_cache" || $3=="l1i_cache_refill" || $3=="mem_access" || $3=="memory_error" || $3=="inst_retired" || $3=="inst_spec" {arr[$3] = $1} END {print arr["br_pred"], arr["br_mis_pred"], arr["l1d_cache"], arr["l1d_cache_refill"], arr["l1i_cache"], arr["l1i_cache_refill"], arr["mem_access"], arr["memory_error"], arr["inst_retired"], arr["inst_spec"]}', path + "result-jetson.csv"]
                with open(output_file_perf, "w") as file:
                    subprocess.check_call(command_awk, stdout=file)

    exec_time = np.median(results_list)
    done = True
    return float(exec_time), done


def get_exec_time_poly_OX(c_code, OX, path=".", device="x86"):
    
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
        "/home/kaikai/Wasm-RL/iwasm_interpreter",
        path_out + c_code + ".wasm"
    ]
    subprocess.check_output(clang_command_ll_base_main)
    subprocess.check_output(clang_command_ll_base_lib)
    subprocess.check_output(clang_command_opt_base_main)
    subprocess.check_output(clang_command_opt_base_lib)
    subprocess.check_output(clang_command_wasm_base)
    results_list = []
    if device == "x86":
        output_file_perf = path_out + c_code + ".perf"
        command_perf = ["sudo", "perf", "stat", "-e", "branch-instructions", "-e", "branch-misses", "-e", "cache-references", "-e", "cache-misses", "-e", "instructions", "-e", "mem-loads", "-e", "mem-stores", "-x", ";", "-o", "result.csv", "/home/kaikai/Wasm-RL/iwasm_interpreter", path_out + c_code + ".wasm"]
        results_list = []
        for i in range(1):
            begin = time.time()
            try: 
                result = subprocess.run(command_perf, capture_output=True, text=True, timeout=100)
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
            if is_perf:
                command_awk = ["sudo", "awk", "-F", ";", 'BEGIN {OFS=","} $3=="branch-instructions" || $3=="branch-misses" || $3=="cache-references" || $3=="cache-misses" || $3=="instructions"  || $3=="mem-loads" || $3=="mem-stores"{arr[$3] = $1} END {print arr["branch-instructions"], arr["branch-misses"], arr["cache-references"], arr["cache-misses"], arr["instructions"], arr["mem-loads"], arr["mem-stores"]}', "result.csv"]
                with open(output_file_perf, "w") as file:
                    subprocess.check_call(command_awk, stdout=file)

    elif device == "jetsonnano":
        output_file_perf = path_out + c_code + ".perf"
        os.system('mv ' + path_out + c_code + '.wasm' + ' ' + path_out + 'poly.wasm' )
        os.system( 'scp ' + path_out + 'poly.wasm' + ' ' + 'mini-edge@10.214.131.152:' + '/home/mini-edge/WasmRL-PPO/wasm-rl-ppo/benchmark/')
        results_list = []
        timeout = 10
        for i in range(1):
            try: 
                signal.signal(signal.SIGALRM, timeout_handler)
                signal.alarm(timeout)
                try:
                    command = 'ssh -tt mini-edge@10.214.131.152 "/usr/bin/time -f %e   /home/mini-edge/arm-wasm/iwasm_interpreter /home/mini-edge/WasmRL-PPO/wasm-rl-ppo/benchmark/poly.wasm"'
                    output_bytes  = subprocess.check_output(command, shell=True, stderr=subprocess.STDOUT)
                    output = output_bytes.decode('utf-8')
                    lines = output.split('\r\n')
                    first_line = lines[0]
                    exec_time = float(first_line)
                    result = None
                    signal.alarm(0)
                    results_list.append(exec_time)
                except subprocess.CalledProcessError as e:
                    os.system("ssh -tt mini-edge@10.214.131.152 'sudo pkill -f iwasm_interpret' ")
                    print(f"Command execution failed with error code {e.returncode}.")
                    print("Command output:")
                    print(e.output.decode('utf-8'))  
                    results_list.append(timeout)
                except Exception as e:
                    os.system("ssh -tt mini-edge@10.214.131.152 'sudo pkill -f iwasm_interpret' ")
                    print(f"An error occurred: {e}")
                    results_list.append(timeout)
            except TimeoutError:
                print("timeout")
                os.system("ssh -tt mini-edge@10.214.131.152 'sudo pkill -f iwasm_interpret' ")
                results_list.append(timeout)
                break
            if is_perf:
                os.system("scp mini-edge@10.214.131.152:/home/mini-edge/WasmRL-PPO/wasm-rl-ppo/benchmark/result.csv " + path + "result-jetson.csv")
                command_awk = ["sudo", "awk", "-F", ";", 'BEGIN {OFS=","} $3=="armv8_pmuv3/br_pred/" || $3=="armv8_pmuv3/br_mis_pred/" || $3=="armv8_pmuv3/l1d_cache/" || $3=="armv8_pmuv3/l1d_cache_refill/" || $3==\"armv8_pmuv3/l1i_cache/" || $3=="armv8_pmuv3/l1i_cache_refill/" || $3=="armv8_pmuv3/mem_access/" || $3=="armv8_pmuv3/memory_error/" || $3=="armv8_pmuv3/inst_retired/" || $3=="armv8_pmuv3/inst_spec/" {arr[$3] = $1} END {print arr["armv8_pmuv3/br_pred/"], arr["armv8_pmuv3/br_mis_pred/"], arr["armv8_pmuv3/l1d_cache/"], arr["armv8_pmuv3/l1d_cache_refill/"], arr["armv8_pmuv3/l1i_cache/"], arr["armv8_pmuv3/l1i_cache_refill/"], arr["armv8_pmuv3/mem_access/"], arr["armv8_pmuv3/memory_error/"], arr["armv8_pmuv3/inst_retired/"], arr["armv8_pmuv3/inst_spec/"]}', path + "result-jetson.csv"]
                with open(output_file_perf, "w") as file:
                    subprocess.check_call(command_awk, stdout=file)
                    
    elif device == "raspberry":
        output_file_perf = path_out + c_code + ".perf"
        os.system('mv ' + path_out + c_code + '.wasm' + ' ' + path_out + 'poly.wasm' )
        os.system( 'scp ' + path_out + 'poly.wasm' + ' ' + 'pi@10.214.131.178:' + '/home/pi/WasmRL-PPO/wasm-rl-ppo/benchmark/')
        results_list = []
        timeout = 10
        for i in range(1):
            try: 
                signal.signal(signal.SIGALRM, timeout_handler)
                signal.alarm(timeout)
                try:
                    command = 'ssh -tt pi@10.214.131.178 "/usr/bin/time -f %e  /home/pi/arm-wasm/iwasm_interpreter /home/pi/WasmRL-PPO/wasm-rl-ppo/benchmark/poly.wasm"'
                    output_bytes  = subprocess.check_output(command, shell=True, stderr=subprocess.STDOUT)
                    output = output_bytes.decode('utf-8')
                    lines = output.split('\r\n')
                    first_line = lines[0]
                    exec_time = float(first_line)
                    result = None
                    signal.alarm(0)
                    print(exec_time)
                    results_list.append(exec_time)
                except subprocess.CalledProcessError as e:
                    os.system("ssh -tt pi@10.214.131.178 'sudo pkill -f iwasm_interpret' ")
                    print(f"Command execution failed with error code {e.returncode}.")
                    print("Command output:")
                    print(e.output.decode('utf-8'))  
                    results_list.append(timeout)
                except Exception as e:
                    os.system("ssh -tt pi@10.214.131.178 'sudo pkill -f iwasm_interpret' ")
                    print(f"An error occurred: {e}")
                    results_list.append(timeout)
                except TimeoutError:
                    print("timeout")
                    os.system("ssh -tt pi@10.214.131.178 'sudo pkill -f iwasm_interpret' ")
                    results_list.append(timeout)
                    break
            except TimeoutError:
                print("timeout")
                os.system("ssh -tt pi@10.214.131.178 'sudo pkill -f iwasm_interpret' ")
                results_list.append(timeout)
                break
        if is_perf:
            os.system("scp pi@10.214.131.178:/home/pi/WasmRL-PPO/wasm-rl-ppo/benchmark/result.csv " + path + "result-jetson.csv")
            command_awk = ["sudo", "awk", "-F", ";", 'BEGIN {OFS=","} $3=="br_pred" || $3=="br_mis_pred" || $3=="l1d_cache" || $3=="l1d_cache_refill" || $3=="l1i_cache" || $3=="l1i_cache_refill" || $3=="mem_access" || $3=="memory_error" || $3=="inst_retired" || $3=="inst_spec" {arr[$3] = $1} END {print arr["br_pred"], arr["br_mis_pred"], arr["l1d_cache"], arr["l1d_cache_refill"], arr["l1i_cache"], arr["l1i_cache_refill"], arr["mem_access"], arr["memory_error"], arr["inst_retired"], arr["inst_spec"]}', path + "result-jetson.csv"]
            with open(output_file_perf, "w") as file:
                subprocess.check_call(command_awk, stdout=file)

    exec_time = np.mean(results_list)
    done = True
    return float(exec_time), done
   
def main():
    indices=[]
    bms = [
        # "2mm",
        # "3mm",
        # "adi",
        # "atax",
        # "bicg",
        # "cholesky",
        # "correlation",
        # "covariance",
        # "deriche",
        # "doitgen",
        # "durbin",
        # "fdtd-2d",
        # "floyd-warshall",
        # "gemm",
        # "gemver",
        # "gesummv",
        # "gramschmidt",
        # "heat-3d",
        # "jacobi-1d",
        # "jacobi-2d",
        # "lu",
        # "ludcmp",
        # "mvt",
        # "nussinov",
        # "seidel-2d",
        # "symm",
        # "syr2k",
        # "syrk",
        # "trisolv",
        "trmm",
        # "test"
    ]
    for bm in bms:
        exec_time_O0 = get_exec_time_poly_OX(bm, "-O0", ".", "jetsonnano")
        print(bm, " ", exec_time_O0)
        
    for i in range(1):
        indices.append(i)
        passes=getPasses(indices)
        passes_str =" ".join(str(x) for x in passes)
        print(passes_str)
        exec_time, done = get_exec_time_poly("2mm", indices, ".", "x86")
        if done: print("optimized:", exec_time)

if __name__ == "__main__":
  main()

