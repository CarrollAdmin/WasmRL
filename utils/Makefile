# ************ CCC - passing optimization flags ************ 
ifeq ($(CCC_OPTS),)
 CCC_OPTS =
endif

# Declarations
ifeq ($(ZCC),) 
 ZCC = /home/kaikai/Wasm-RL/llvm-15.0.6/bin/clang
endif
ifeq ($(LDCC),)
 LDCC = /home/kaikai/Wasm-RL/llvm-15.0.6/bin/clang
endif
ifeq ($(OPT),)
 OPT = /home/kaikai/Wasm-RL/llvm-15.0.6/bin/opt
endif
ifeq ($(LD_OPTS),)
 LD_OPTS = -o a.out
endif

# Source files
SRCS := $(wildcard *.c)
LLS := $(SRCS:.c=.ll)
LLS_OPT := $(LLS:.ll=_opt.ll)

# Targets
all: c2ll ll2optll optll2wasm

c2ll: $(LLS) 
%.ll: %.c
	@$(ZCC)  --target=wasm32-wasi --sysroot=/home/kaikai/Wasm-RL/wasi-sysroot -Wno-unused-command-line-argument -S -emit-llvm -Xclang -disable-O0-optnone $< -lm -o $@

ll2optll:$(LLS_OPT)
%_opt.ll: %.ll
	@$(OPT) $(CCC_OPTS) -S $< -o $@

optll2wasm: 
	@$(ZCC) --target=wasm32-wasi --sysroot=/home/kaikai/Wasm-RL/wasi-sysroot *_opt.ll -o out.wasm

clean:
	@rm -f a.out *.o *.a *.s *.i *.I $(LLS) $(LLS_OPT) out.wasm
