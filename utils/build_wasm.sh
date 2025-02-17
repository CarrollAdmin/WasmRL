rm -rf /home/kaikai/Wasm-RL/WasmRL-PPO/wasm-rl-ppo/wasm_gym/envs/out/benchmark_opt.ll 
rm -rf /home/kaikai/Wasm-RL/WasmRL-PPO/wasm-rl-ppo/wasm_gym/envs/out/benchmark.ll 
rm -rf /home/kaikai/Wasm-RL/WasmRL-PPO/wasm-rl-ppo/wasm_gym/envs/out/benchmark.wasm 
rm -rf /home/kaikai/Wasm-RL/WasmRL-PPO/wasm-rl-ppo/wasm_gym/envs/out/benchmark.aot 
rm -rf /home/kaikai/Wasm-RL/WasmRL-PPO/wasm-rl-ppo/wasm_gym/envs/out/test_inter.txt 
rm -rf /home/kaikai/Wasm-RL/WasmRL-PPO/wasm-rl-ppo/wasm_gym/envs/out/test_aot.txt 
rm -rf /home/kaikai/Wasm-RL/WasmRL-PPO/wasm-rl-ppo/wasm_gym/envs/out/esp_wasm.h 
rm -rf /home/kaikai/Wasm-RL/WasmRL-PPO/wasm-rl-ppo/wasm_gym/envs/out/output.txt 
rm -rf /home/kaikai/measurement/modified_singleglass/shootout-base64/hello_world/main/output_esp.txt 
# /home/kaikai/Wasm-RL/llvm-15.0.6/bin/clang  --target=wasm32-wasi  --sysroot=/home/kaikai/measurement/wasi-sysroot -Wno-unused-command-line-argument -S -emit-llvm -Xclang -disable-O0-optnone -o benchmark.ll benchmark_pre.c -Wl,--export=main -Wl,--export=__main_argc_argv  -Wl,--export=__data_end -Wl,--export=__heap_base -Wl,--strip-all,--no-entry -Wl,--allow-undefined -nostdlib
# /home/kaikai/Wasm-RL/llvm-15.0.6/bin/opt -S -o benchmark_opt.ll benchmark.ll
# /home/kaikai/Wasm-RL/llvm-15.0.6/bin/clang  --target=wasm32-wasi  --sysroot=/home/kaikai/measurement/wasi-sysroot -o benchmark.wasm benchmark_opt.ll -Wl,--export=main -Wl,--export=__main_argc_argv  -Wl,--export=__data_end -Wl,--export=__heap_base -Wl,--strip-all,--no-entry -Wl,--allow-undefined -nostdlib
# /home/kaikai/Wasm-RL/llvm-15.0.6/bin/clang  --target=wasm32-wasi  --sysroot=/home/kaikai/measurement/wasi-sysroot -O2 -o benchmark.wasm benchmark_pre.c -Wl,--export=main -Wl,--export=__main_argc_argv  -Wl,--export=__data_end -Wl,--export=__heap_base -Wl,--strip-all,--no-entry -Wl,--allow-undefined -nostdlib
# ./iwasm benchmark.wasm
xxd -i benchmark.wasm > test_inter.txt
./wamrc_xtensa --target=xtensa -o benchmark.aot benchmark.wasm
xxd -i benchmark.aot > test_aot.txt
./gen
scp esp_wasm.h /home/kaikai/wamr/wasm-micro-runtime-main/product-mini/platforms/esp-idf/main
cd /home/kaikai/wamr/wasm-micro-runtime-main/product-mini/platforms/esp-idf
. /home/kaikai/esp32/esp-idf/export.sh
./build_and_run.sh esp32
idf.py monitor > /home/kaikai/Wasm-RL/WasmRL-PPO/wasm-rl-ppo/wasm_gym/envs/out/output_esp.txt 

# gnome-terminal -- bash -c "sudo pkill -f /home/kaikai/esp32/esp-idf/tools/idf.py"