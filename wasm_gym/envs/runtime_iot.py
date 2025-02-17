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

def get_exec_time_iot(c_code, opt_indice, path=".", device="x86"):
  
    path = "/home/kaikai/measurement/iot-benchmark/images/" + c_code
    path_out = "/home/kaikai/WasmRL/wasm_gym/envs/out/"

    passes=getPasses(opt_indice)
    passes_str =" ".join(str(x) for x in passes)
    passes_str = "-O0"
    command = 'cd ' + path + ' && make clean && sudo make c2aot CCC_OPTS="' + passes_str + '"'
    print(command)
    try:
        result = subprocess.run(command, shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True, check=True)
    except subprocess.CalledProcessError as e:
        print(f"Command failed with exit code: {e.returncode}")
        print("Error output:")
        print(e.stderr)
    except Exception as e:
        print(f"An unexpected error occurred: {e}")

    output_file = path_out + c_code + ".wat"
    command = ["/home/kaikai/Wasm-RL/wabt-1.0.30/bin/wasm2wat", path + "/" + c_code + ".wasm"]
    with open(output_file, "w") as file:
        subprocess.check_call(command, stdout=file)

    if device == "x86":
        output_file_perf = path_out + c_code + ".perf"
        command_perf = ["sudo", "perf", "stat", "-e", "branch-instructions", "-e", "branch-misses", "-e", "cache-references", "-e", "cache-misses", "-e", "instructions", "-e", "mem-loads", "-e", "mem-stores", "-x", ";", "-o", "result.csv", "/home/kaikai/Wasm-RL/iwasm_interpreter", "--dir=.", path + "/out.wasm"]
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
        command_awk = ["sudo", "awk", "-F", ";", 'BEGIN {OFS=","} $3=="branch-instructions" || $3=="branch-misses" || $3=="cache-references" || $3=="cache-misses" || $3=="instructions"  || $3=="mem-loads" || $3=="mem-stores"{arr[$3] = $1} END {print arr["branch-instructions"], arr["branch-misses"], arr["cache-references"], arr["cache-misses"], arr["instructions"], arr["mem-loads"], arr["mem-stores"]}', "result.csv"]
        with open(output_file_perf, "w") as file:
            subprocess.check_call(command_awk, stdout=file)

    elif device == "jetsonnano":
        output_file_perf = path_out + c_code + ".perf"
        os.system('mv ' + path + "/" + c_code + ".aot" + ' ' + path_out + 'poly.wasm' )
        os.system( 'scp ' + path_out + 'poly.wasm' + ' ' + 'mini-edge@10.214.131.152:' + '/home/mini-edge/WasmRL-PPO/wasm-rl-ppo/benchmark/')
        results_list = []
        timeout = 10
        for i in range(3):
            try: 
                signal.signal(signal.SIGALRM, timeout_handler)
                signal.alarm(timeout)
                try:
                    command = f'ssh -t mini-edge@10.214.131.152 "/usr/bin/time -f %e /home/mini-edge/arm-wasm/iwasm_interpreter --dir=/home/mini-edge/WasmRL-PPO/wasm-rl-ppo/benchmark/ --native-lib=/home/mini-edge/wasm-micro-runtime-main/samples/native-lib/build/libmqtt_pub.so  /home/mini-edge/WasmRL-PPO/wasm-rl-ppo/benchmark/poly.wasm jetsonnano "'
                    begin = time.time()
                    output_bytes  = subprocess.check_output(command, shell=True, stderr=subprocess.STDOUT)
                    end = time.time()
                    exec_time = end - begin
                    signal.alarm(0)
                    print(exec_time)
                    results_list.append(exec_time)
                except subprocess.CalledProcessError as e:
                    os.system("ssh -tt mini-edge@10.214.131.152  'sudo pkill -f iwasm_interpreter' ")
                    print(f"Command execution failed with error code {e.returncode}.")
                    print("Command output:")
                    print(e.output.decode('utf-8'))
                    break
                except Exception as e:
                    os.system("ssh -tt mini-edge@10.214.131.152  'sudo pkill -f iwasm_interpreter' ")
                    print(f"An error occurred: {e}")
                    break
            except TimeoutError:
                print("timeout")
                os.system("ssh -tt mini-edge@10.214.131.152  'sudo pkill -f iwasm_interpreter' ")
                break
        if len(results_list)== 0:
            results_list.append(10)
            print(results_list)
        

    elif device == "raspberry":
        output_file_perf = path_out + c_code + ".perf"
        os.system('mv ' + path + "/" + c_code + ".aot" + ' ' + path_out + 'poly.wasm' )
        os.system( 'scp ' + path_out + 'poly.wasm' + ' ' + 'pi@10.214.131.178:' + '/home/pi/WasmRL-PPO/wasm-rl-ppo/benchmark/')
        results_list = []
        timeout = 10
        for i in range(3):
            try: 
                signal.signal(signal.SIGALRM, timeout_handler)
                signal.alarm(timeout)
                try:
                    command = f'ssh -tt pi@10.214.131.178 "/usr/bin/time -f %e /home/pi/arm-wasm/iwasm_interpreter --dir=/home/pi/WasmRL-PPO/wasm-rl-ppo/benchmark/ --native-lib=/home/pi/wasm-micro-runtime-main/samples/native-lib/build/libmqtt_pub.so /home/pi/WasmRL-PPO/wasm-rl-ppo/benchmark/poly.wasm raspberry"'
                    begin = time.time()
                    output_bytes  = subprocess.check_output(command, shell=True, stderr=subprocess.STDOUT)
                    end = time.time()
                    exec_time = end - begin
                    signal.alarm(0)
                    print(exec_time)
                    results_list.append(exec_time)
                except subprocess.CalledProcessError as e:
                    os.system("ssh -tt pi@10.214.131.178  'sudo pkill -f iwasm_interpret' ")
                    print(f"Command execution failed with error code {e.returncode}.")
                    print("Command output:")
                    print(e.output.decode('utf-8'))
                    break
                    # continue
                except Exception as e:
                    os.system("ssh -tt pi@10.214.131.178  'sudo pkill -f iwasm_interpret' ")
                    print(f"An error occurred: {e}")
                    break
                    # continue
            except TimeoutError:
                print("timeout")
                os.system("ssh -tt pi@10.214.131.178  'sudo pkill -f iwasm_interpret' ")
                break
                # continue
        if len(results_list)== 0:
            results_list.append(10)
            print(results_list)


    exec_time = np.median(results_list)
    done = True
    return float(exec_time), done
   

def get_exec_time_iot_OX(c_code, OX, path=".", device="x86"):
  
    path = "/home/kaikai/measurement/iot-benchmark/images/" + c_code
    path_out = "/home/kaikai/WasmRL/wasm_gym/envs/out/"
    passes_str = OX
    os.system('cd ' + path + ' && make clean && make c2wasm CCC_OPTS="' + passes_str + '"')


    output_file = path_out + c_code + ".wat"
    command = ["/home/kaikai/Wasm-RL/wabt-1.0.30/bin/wasm2wat", path + "/" + c_code + ".wasm"]
    with open(output_file, "w") as file:
        subprocess.check_call(command, stdout=file)

    if device == "x86":
        output_file_perf = path_out + c_code + ".perf"
        command_perf = ["sudo", "perf", "stat", "-e", "branch-instructions", "-e", "branch-misses", "-e", "cache-references", "-e", "cache-misses", "-e", "instructions", "-e", "mem-loads", "-e", "mem-stores", "-x", ";", "-o", "result.csv", "/home/kaikai/Wasm-RL/iwasm_interpreter", "--dir=.", path + "/out.wasm"]
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

    elif device == "jetsonnano":
        output_file_perf = path_out + c_code + ".perf"
        os.system('mv ' + path + "/" + c_code + ".wasm" + ' ' + path_out + 'poly.wasm' )
        os.system( 'scp ' + path_out + 'poly.wasm' + ' ' + 'mini-edge@10.214.131.152:' + '/home/mini-edge/WasmRL-PPO/wasm-rl-ppo/benchmark/')
        results_list = []
        timeout = 6
        for i in range(1):
            try: 
                signal.signal(signal.SIGALRM, timeout_handler)
                signal.alarm(timeout)
                begin = time.time()
                os.system('ssh -t mini-edge@10.214.131.152 " /usr/bin/time -f %e /home/mini-edge/arm-wasm/iwasm_interpreter --dir=/home/mini-edge/WasmRL-PPO/wasm-rl-ppo/benchmark/ /home/mini-edge/WasmRL-PPO/wasm-rl-ppo/benchmark/poly.wasm"')
                signal.alarm(0)
                result = None
                end = time.time()
                exec_time = end - begin
                results_list.append(exec_time)
            except TimeoutError:
                print("timeout")
                os.system("ssh -t mini-edge@10.214.131.152 'sudo pkill -f iwasm_interpret' ")
                results_list.append(timeout)
                break
            os.system("scp mini-edge@10.214.131.152:/home/mini-edge/WasmRL-PPO/wasm-rl-ppo/benchmark/result.csv " + path + "result-jetson.csv")

    elif device == "raspberry":
        output_file_perf = path_out + c_code + ".perf"
        os.system('mv ' + path + "/" + c_code + ".aot" + ' ' + path_out + 'poly.wasm' )
        os.system( 'scp ' + path_out + 'poly.wasm' + ' ' + 'pi@10.214.131.178:' + '/home/pi/WasmRL-PPO/wasm-rl-ppo/benchmark/')
        results_list = []
        timeout = 6
        for i in range(3):
            flag = False
            try: 
                signal.signal(signal.SIGALRM, timeout_handler)
                signal.alarm(timeout)
                begin = time.time()
                os.system('ssh -tt pi@10.214.131.178 "/usr/bin/time -f %e /home/pi/arm-wasm/iwasm_interpreter --dir=/home/pi/WasmRL-PPO/wasm-rl-ppo/benchmark/ /home/pi/WasmRL-PPO/wasm-rl-ppo/benchmark/poly.wasm raspberry"')
                signal.alarm(0)
                result = None
                end = time.time()
                exec_time = end - begin
                results_list.append(exec_time)
            except TimeoutError:
                print("timeout")
                os.system("ssh -t pi@10.214.131.178 'sudo pkill -f iwasm_interpret' ")  
                break
        os.system("scp pi@10.214.131.178:/home/pi/WasmRL-PPO/wasm-rl-ppo/benchmark/result.csv " + path + "result-jetson.csv")

    print(results_list)
    exec_time = np.median(results_list)
    done = True
    return float(exec_time), done

def main():
  indices=[]
  for i in range(1):
    indices.append(i)
    passes=getPasses(indices)
    passes_str =" ".join(str(x) for x in passes)       
    print(passes_str)
    bms = [
    # "compression1",
    # "heat_calib",
    # "heat_detect",
    # "quality",
    # "facedetection",
    "mqtt_emqx"
    ]
    for bm in bms:
      exec_time, done = get_exec_time_iot(bm, indices, ".", "jetsonnano")
      if done: print(bm, exec_time)

if __name__ == "__main__":
  main()

