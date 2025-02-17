# Optimizing WebAssembly Bytecode for IoT Devices Using Deep Reinforcement Learning

WasmRL: an efficient DRL-based compiler optimization framework tailored for WebAssembly bytecode.

## Introduction
we propose WasmRL, 
an efficient deep reinforcement learning (DRL)-based compiler optimization framework tailored for WebAssembly bytecode. 
The first work to optimize WebAssembly bytecode by considering LLVM compilation sequences.

## Usage
We implement WasmRL and evaluate its performance on two different platforms (Raspberry Pi and Jetson Nano) extensively. Results show that WasmRL, compared to -O3, exhibits 1.4x speedup
on seen programs and 1.1x speedup on unseen programs.

### Preparation
#### 1. Prepare the WebAssembly compilation tool
Download the WASI SDK to compile `*.c` to WebAssembly.

```bash
wget https://github.com/WebAssembly/wasi-sdk/releases/download/wasi-sdk-20/wasi-sdk-20.0-linux.tar.gz
tar xvf wasi-sdk--20.0-linux.tar.gz
```
#### 2. Prepare WebAssembly runtime
Install WAMR runtime for different IoT devices

```bash
git clone https://github.com/bytecodealliance/wasm-micro-runtime.git
```

#### 3. Prepare WasmRL environment
```bash
pip install gym
pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cpu
```
### Use WasmRL to optimize WebAssembly bytecode
You can use WasmRL to optimize your WebAssembly program from scratch.
```bash
python3 rl_main.py --applications [your WebAssembly program for optimization]
```