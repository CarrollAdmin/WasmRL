import subprocess
from  subprocess import call
import os
import re 

import re
import sys
n = 10000000
sys.setrecursionlimit(n)

class Node:
    def __init__(self, value):
        self.value = value
        self.children = []

def read_edges_from_dot(dot_content):
    pattern = re.compile(r'node(\d+) -> node(\d+) ;')
    edges = pattern.findall(dot_content)
    return edges

def read_edges_from_funcdot(dot_content):
    pattern = re.compile(r'block(\d+) -> block(\d+) \[label=".*"\];')
    edges = pattern.findall(dot_content)
    return edges

def construct_tree(edges):
    node_map = {}
    root = None

    for edge in edges:
        parent_value, child_value = edge
        
        if parent_value not in node_map:
            node_map[parent_value] = Node(parent_value)

        if child_value not in node_map:
            node_map[child_value] = Node(child_value)

        parent_node = node_map[parent_value]
        child_node = node_map[child_value]

        parent_node.children.append(child_node)

        if root is None:
            root = parent_node

    return root

def dfs_traversal(node, embeddings_all):
    if node.value != None:
        # print(f"Node {node.value}")
        try:
            with open("/home/kaikai/Wasm-RL/WasmRL-PPO/wasm-rl-ppo/wassail/flags-alter/cfg/test/test-"+str(node.value)+".dot", "r") as file:
                dot_content = file.read()
                embeddings_func = extract_wasm_embeddings(dot_content)
                if embeddings_func != -1:
                    embeddings_all.extend(embeddings_func)
                # print(len(embeddings_all))
        except FileNotFoundError:
            print(f"Warning: File not found for Node {node.value}")
        for child in node.children:
            dfs_traversal(child, embeddings_all)

def extract_wasm_embeddings(dot_content):
    embeddings = []
    edges = read_edges_from_funcdot(dot_content)
    if len(edges) <= 3: return -1
    tree_root = construct_tree(edges)
    wasm_instructions = []
    dfs_wasm_instructions(tree_root,dot_content,wasm_instructions)
    # print(wasm_instructions)
    #get embedding
    # for instruction in wasm_instructions:
    #     if 'set' in instruction:
    #         embeddings.append(0)
    #     elif 'const' in instruction or 'get' in instruction:
    #         embeddings.append(1)
    #     elif 'load' in instruction or 'store' in instruction:
    #         embeddings.append(2)
    #     elif 'merge' in instruction:
    #         embeddings.append(4)
    #     elif 'br' in instruction:
    #         embeddings.append(5)  
    #     elif 'if' in instruction and 'br' not in instruction:
    #         embeddings.append(6)
    #     elif 'call' in instruction:
    #         embeddings.append(7)
    #     elif 'return' in instruction:
    #         embeddings.append(8)
    #     elif 'unreachable' in instruction:
    #         embeddings.append(9)
    #     else:
    #         embeddings.append(3)
    for instruction in wasm_instructions:
        if 'merge' in instruction:
            embeddings.append(0)
        elif 'br' in instruction:
            embeddings.append(1)  
        elif 'if' in instruction and 'br' not in instruction:
            embeddings.append(2)
        elif 'call' in instruction:
            embeddings.append(3)
        elif 'return' in instruction:
            embeddings.append(4)
        elif 'unreachable' in instruction:
            embeddings.append(5)
        else:
            pass
    # print(embeddings)
    # print(len(embeddings),len(wasm_instructions))
    return embeddings


def dfs_wasm_instructions(node, dot_content, wasm_instructions):

    stack = [node]
    visited = set()
    while stack:
        current_node = stack[-1]
        if current_node not in visited:
            try:
                pattern = re.compile(rf'{current_node.value}\s*\[.*?label="{{(?P<block_content>.*?)}}"]\s*;')
                match = pattern.search(dot_content)
                block_content = match.group('block_content') if match else None
                if block_content:
                    pattern_inst = re.compile(r':(\S+)')
                    matches = re.findall(pattern_inst, block_content)
                    wasm_instructions.extend(matches)
                else:
                    print(f"Block {current_node.value} not found.")
            except FileNotFoundError:
                print(f"Warning: File not found for Node {current_node.value}")
            visited.add(current_node)

        children_to_add = [child for child in current_node.children if child not in visited]
        stack.extend(reversed(children_to_add))

        if all(child in visited for child in current_node.children):
            stack.pop()


def normalize_array(arr):
    max_value = max(arr)
    if max_value == 0:
        return arr
    normalized_arr = [x / max_value for x in arr]
    return normalized_arr

def count_instructions(wasm_file, normalizer):
    with open(wasm_file, 'r') as file:
        content = file.read()

    instruction_counts = {
        # Control Inst
        'block': 0,
        'loop': 0,
        'br': 0,
        'br_if': 0,
        'if': 0,
        'call': 0,
        'call_indirect': 0,
        'return': 0,
        'unreachable': 0,
        'nop': 0,
        # Parametric Inst
        'select': 0,
        'drop': 0,
        # Numeric Inst
        'i32.const': 0,
        'i64.const': 0,
        'f32.const': 0,
        'f64.const': 0,
        'i32.eqz': 0,
        'i64.eqz': 0,
        'i32.eq': 0,
        'i64.eq': 0,
        'f32.eq': 0,
        'f64.eq': 0,
        'i32.ne': 0,
        'i64.ne': 0,
        'f32.ne': 0,
        'f64.ne': 0,
        'i32.It_u': 0,
        'i32.It_s': 0,
        'i64.It_u': 0,
        'i64.It_s': 0,
        'f32.It': 0,
        'f64.It': 0,
        'i32.gt_u': 0,
        'i32.gt_s': 0,
        'i64.gt_u': 0,
        'i64.gt_s': 0,
        'f32.gt': 0,
        'f64.gt': 0,
        'i32.le_u': 0,
        'i32.le_s': 0,
        'i64.le_u': 0,
        'i64.le_s': 0,
        'f32.le': 0,
        'f64.le': 0,
        'i32.ge_u': 0,
        'i32.ge_s': 0,
        'i64.ge_u': 0,
        'i64.ge_s': 0,
        'f32.ge': 0,
        'f64.ge': 0,
        'i32.clz': 0,
        'i64.clz': 0,
        'i32.ctz': 0,
        'i64.ctz': 0,
        'i32.popcnt': 0,
        'i64.popcnt': 0,
        'f32.abs': 0,
        'f64.abs': 0,
        'f32.neg': 0,
        'f64.neg': 0,
        'f32.ceil': 0,
        'f64.ceil': 0,
        'f32.floor': 0,
        'f64.floor': 0,
        'f32.trunc': 0,
        'f64.trunc': 0,
        'f32.nearest': 0,
        'f64.nearest': 0,
        'f32.sqrt': 0,
        'f64.sqrt': 0,
        'i32.add': 0,
        'i64.add': 0,
        'i32.sub': 0,
        'i64.sub': 0,
        'i32.mul': 0,
        'i64.mul': 0,
        'i32.div_s': 0,
        'i32.div_u': 0,
        'i64.div_s': 0,
        'i64.div_u': 0,
        'i32.rem_s': 0,
        'i32.rem_u': 0,
        'i64.rem_s': 0,
        'i64.rem_u': 0,
        'i32.and': 0,
        'i64.and': 0,
        'i32.or': 0,
        'i64.or': 0,
        'i32.xor': 0,
        'i64.xor': 0,
        'i32.shl': 0,
        'i64.shl': 0, 
        'i32.shr_s': 0,
        'i32.shr_u': 0,
        'i64.shr_s': 0,
        'i64.shr_u': 0, 
        'i32.rotl': 0,
        'i32.rotr': 0,
        'i64.rotl': 0,
        'i64.rotr': 0,
        'f32.add': 0,
        'f64.add': 0,
        'f32.sub': 0,
        'f64.sub': 0,
        'f32.mul': 0,
        'f64.mul': 0,
        'f32.div': 0,
        'f64.div': 0,
        'f32.min': 0,
        'f64.min': 0,
        'f32.max': 0,
        'f64.max': 0,
        'f32.copysign': 0,
        'f64.copysign': 0,
        'i32.extend8_s':0,
        'i32.extend16_s': 0,
        'i32.wrap_i64': 0,
        'i32.trunc_f32_s': 0,
        'i32.trunc_f32_u': 0,
        'i32.trunc_f64_s': 0,
        'i32.trunc_f64_u': 0,
        'i64.extend_i32_s': 0,
        'i64.extend_i32_u': 0,
        'i64.trunc_f32_s': 0,
        'i64.trunc_f32_u': 0,
        'i64.trunc_f64_s': 0,
        'i64.trunc_f64_u': 0,
        'f32.convert_i32_s': 0,
        'f32.convert_i32_u': 0,
        'f32.convert_i64_s': 0,
        'f32.convert_i64_u': 0,
        'f32.demote_f64': 0,
        'f64.convert_i32_s': 0,
        'f64.convert_i32_u': 0,
        'f64.convert_i64_s': 0,
        'f64.convert_i64_u': 0,
        'f64.promote_f32': 0,
        'i32.reinterpret_f32': 0,
        'i64.reinterpret_f64': 0,
        'f32.reinterpret_i32': 0,
        'f64.reinterpret_i64': 0,
        # Variable Inst
        'local.get': 0,
        'local.set': 0,
        'local.tee': 0,
        'global.get': 0,
        'global.set': 0,
        # Memory Inst
        'i32.load': 0,
        'i32.load8_s': 0,
        'i32.load8_u': 0,
        'i32.load16_s': 0,
        'i32.load16_u': 0,
        'i64.load': 0,
        'i64.load8_s': 0,
        'i64.load8_u': 0,
        'i64.load16_s': 0,
        'i64.load16_u': 0,
        'i64.load32_s': 0,
        'i64.load32_u': 0,
        'f32.load': 0,
        'f64.load': 0,
        'i32.store': 0,
        'i32.store_8': 0,
        'i32.store_16': 0,
        'i64.store': 0,
        'i64.store_32': 0,
        'i64.store_16': 0,
        'i64.store_8': 0,
        'f32.store': 0,
        'f64.store': 0,
        'memory.size': 0,
        'memory.grow': 0,

    }

    lines = content.split('\n')
    feats = []
    for line in lines:
        line = line.strip()
        for instruction in instruction_counts:
            if line.startswith('(' + instruction) or line.startswith(instruction):
                instruction_counts[instruction] += 1
    
    for instruction in instruction_counts:
        feats.append(instruction_counts[instruction]) 
    if normalizer:
        return normalize_array(feats)
    else:
        return feats
    
def count_perf(perf_path, normalizer):
    perf_features = []
    with open(perf_path, 'r') as file:
        content = file.read()
        numbers = content.split(',')
        for number in numbers:
            number = number.strip() 
            if number.isdigit():
                perf_features.append(int(number))
            else:
                perf_features.append(0)
    
    if normalizer:
        return normalize_array(perf_features)
    else:
        return perf_features

def count_llvm_instructions(ir_file, ir_lib_file, normalizer):

    instruction_counts = {
        # Terminator
        'ret' : 0,
        'br' : 0,
        'switch': 0,
        'indirectbr': 0,
        'invoke' : 0, 
        'callbr' : 0,
        'resume' : 0,
        'catchswitch' : 0,
        'catchret' : 0,
        'cleanupret' : 0,
        'unreachable' : 0,
        # Unary
        'fneg' : 0,
        # Binary
        'add' : 0,
        'fadd' : 0,
        'sub' : 0,
        'fsub' : 0,
        'mul': 0,
        'fmul': 0,
        'udiv': 0,
        'sdiv': 0,
        'fdiv': 0,
        'urem' : 0,
        'srem' : 0,
        'frem' : 0,
        # Bitwise Binary
        'shl' : 0,
        'lshr' : 0,
        'ashr': 0,
        'and' : 0,
        'or' : 0,
        'xor': 0,
        # Vector 
        'extractelement': 0,
        'insertelement' : 0,
        'shufflevector' : 0,
        # Aggregate
        'extractvalue' : 0,
        'insertvalue' : 0,
        # Memory
        'alloca' : 0,
        'load' : 0,
        'store' : 0,
        'fence' : 0,
        'cmpxchg' : 0,
        'atomicrmw' : 0,
        'getelementptr' : 0,
        # Conversion
        'trunc' : 0,
        'zext' : 0,
        'sext' : 0,
        'fptrunc' : 0,
        'fpext' : 0,
        'fptoui' : 0,
        'fptosi' : 0,
        'uitofp' : 0,
        'sitofp' : 0,
        'ptrtoint' : 0,
        'inttoptr' : 0,
        'bitcast' : 0,
        'addrspacecast' : 0,
        # other
        'icmp' : 0, 
        'fcmp' : 0,
        'phi' : 0,
        'select' : 0,
        'freeze' : 0,
        'call' : 0,
        'va_arg' : 0,
        'landingpad': 0,
        'catchpad' : 0,
        'cleanuppad' : 0,
        
    }

    feats = []
    with open(ir_file, 'r') as file:
        for line in file:
            line = line.strip()
            for instruction in instruction_counts:
                if instruction in line:
                    instruction_counts[instruction] += 1

    with open(ir_lib_file, 'r') as file:
        for line in file:
            line = line.strip()
            for instruction in instruction_counts:
                if instruction in line:
                    instruction_counts[instruction] += 1

    for instruction in instruction_counts:
        feats.append(instruction_counts[instruction]) 
    if normalizer:
        return normalize_array(feats)
    else:
        return feats

    return feats


# def run_stats(ir_path, normalizer):

#     cmd = "/home/kaikai/Wasm-RL/llvm-15.0.6/bin/opt -stats -instcount " + ir_path + " "
#     proc = subprocess.Popen([cmd], stdout=subprocess.PIPE, stderr=subprocess.PIPE, shell=True, cwd=".")
#     (out, err) = proc.communicate()
#     print (err)
#     m = parse_static_features_str(err)
#     # print(m)
#     return m
    

# def parse_static_features_str(out):
#     features = ["# of BB where total args for phi nodes > 5", "# of BB where total args for phi nodes is [1, 5]", "# of BB's with 1 predecessor", "# of BB's with 1 predecessor and 1 successor", "# of BB's with 1 predecessor and 2 successors", "# of BB's with 1 successor", "# of BB's with 2 predecessors", "# of BB's with 2 predecessors and 1 successor", "# of BB's with 2 predecessors and successors", "# of BB's with 2 successors", "# of BB's with >2 predecessors", "# of BB's with Phi node # in range (0, 3]", "# of BB's with more than 3 Phi nodes", "# of BB's with no Phi nodes", "# of Phi-nodes at beginning of BB", "# of branches", "# of calls that return an int", "# of critical edges", "# of edges", "# of occurrences of 32-bit integer constants", "# of occurrences of 64-bit integer constants", "# of occurrences of constant 0", "# of occurrences of constant 1", "# of unconditional branches", "Binary operations with a constant operand", "Number of AShr insts", "Number of Add insts", "Number of Alloca insts", "Number of And insts", "Number of BB's with instructions between [15, 500]", "Number of BB's with less than 15 instructions", "Number of BitCast insts", "Number of Br insts", "Number of Call insts", "Number of GetElementPtr insts", "Number of ICmp insts", "Number of LShr insts", "Number of Load insts", "Number of Mul insts", "Number of Or insts", "Number of PHI insts", "Number of Ret insts", "Number of SExt insts", "Number of Select insts", "Number of Shl insts", "Number of Store insts", "Number of Sub insts", "Number of Trunc insts", "Number of Xor insts", "Number of ZExt insts", "Number of basic blocks", "Number of instructions (of all types)", "Number of memory instructions", "Number of non-external functions", "Total arguments to Phi nodes", "Unary"] 
#     feat_ids = []
#     for feature in features: 
#       my_regex = r"\s*(\d+) instcount - " + re.escape(feature)
#       p = re.compile(my_regex) 
#       m = p.findall(out.decode("utf-8"))
#       if len(m):
#         feat_ids.append(int(m[0]))
#       else:
#         feat_ids.append(0) 
      
    # return feat_ids

def cfg_embeddings(wasm_file):
    with open(wasm_file, "r") as file:
        dot_content = file.read()
        edges = read_edges_from_dot(dot_content)
        tree_root = construct_tree(edges)
        embeddings_all = []
        dfs_traversal(tree_root, embeddings_all)

        if len(embeddings_all) < 3000:
            embeddings_all.extend([-1] * (3000 - len(embeddings_all)))
        else:
            embeddings_all = embeddings_all[:3000]
        
    return embeddings_all

if __name__ == "__main__":

    # file_path = '/home/kaikai/Wasm-RL/wasmrl/out/test.perf'

    # matrix = count_perf(file_path, False)
    # print(len(matrix))


    # wasm_file_path = '/home/kaikai/Wasm-RL/wasmrl/out/2mm.wat'     

    # counts = count_instructions(wasm_file_path, True)

    # print(len(counts))

    # ir_path = "/home/kaikai/Wasm-RL/WasmRL-PPO/wasm-rl-ppo/wasm_gym/envs/out/test.bc"
    # feats = run_stats(ir_path, True)
    # print(feats)

    
    # ir_file = '/home/kaikai/Wasm-RL/WasmRL-PPO/wasm-rl-ppo/wasm_gym/envs/out/floyd-warshall_opt.ll'
    # ir_lib_file = '/home/kaikai/Wasm-RL/WasmRL-PPO/wasm-rl-ppo/wasm_gym/envs/out/floyd-warshall_polybench_opt.ll'

    # feats = count_llvm_instructions(ir_file, ir_lib_file, False)

    # print(len(feats))
    cfg_embeddings("/home/kaikai/Wasm-RL/WasmRL-PPO/wasm-rl-ppo/wassail/flags-alter/cfg/test/test.dot")
