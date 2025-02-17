#!/bin/bash
clang_path="/home/kaikai/Wasm-RL/llvm-15.0.6/bin/clang"
target="wasm32-wasi"
sysroot="/home/kaikai/Wasm-RL/wasi-sysroot"
optimization_level="-O2"

cd .

for file in *.c; do
  if [ -f "$file" ]; then
    $clang_path --target=$target --sysroot=$sysroot -o "${file%.*}.wasm" "$file" /home/kaikai/Wasm-RL/polybenchC-O2/PolyBenchC-4.2.1/utilities/polybench.c -I /home/kaikai/Wasm-RL/polybenchC-O2/PolyBenchC-4.2.1/utilities
    echo "compile-1 successfully: ${file%.*}.wasm"
    time /home/kaikai/Wasm-RL/iwasm_interpreter ${file%.*}.wasm
    $clang_path --target=$target --sysroot=$sysroot $optimization_level -o "${file%.*}.wasm" "$file" /home/kaikai/Wasm-RL/polybenchC-O2/PolyBenchC-4.2.1/utilities/polybench.c -I /home/kaikai/Wasm-RL/polybenchC-O2/PolyBenchC-4.2.1/utilities
    echo "compile-2 successfully: ${file%.*}.wasm"
    time /home/kaikai/Wasm-RL/iwasm_interpreter ${file%.*}.wasm

  fi
done
