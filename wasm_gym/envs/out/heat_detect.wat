(module
  (type (;0;) (func (param i32) (result i32)))
  (type (;1;) (func (param i32 i32 i32) (result i32)))
  (type (;2;) (func (param i32 i64 i32) (result i64)))
  (type (;3;) (func (param i32 i32) (result i32)))
  (type (;4;) (func (param i32 i64 i32) (result i32)))
  (type (;5;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;6;) (func (param i32 i64 i32 i32) (result i32)))
  (type (;7;) (func (param i32 i32 i32 i32 i32 i64 i64 i32 i32) (result i32)))
  (type (;8;) (func (param i32)))
  (type (;9;) (func))
  (type (;10;) (func (param i32 i32 i32 i32 i32) (result i32)))
  (type (;11;) (func (param i32 i32)))
  (type (;12;) (func (param i32 i32 i32 i32 i32 i32)))
  (type (;13;) (func (param i32 i32 i32 i32)))
  (type (;14;) (func (param i32 i32 i32)))
  (type (;15;) (func (param i32 i32 i32 i32 i32)))
  (type (;16;) (func (param i32 i32 i32 i32 i32 i32 i32)))
  (type (;17;) (func (result i32)))
  (type (;18;) (func (param i32 i32 i32 i32 i64 i64 i32 i32) (result i32)))
  (type (;19;) (func (param i32 i64)))
  (type (;20;) (func (param i32 i32 i32 i64) (result i64)))
  (type (;21;) (func (param i32 i32 i32) (result f64)))
  (type (;22;) (func (param i32 i32 i32 i32 i32) (result f64)))
  (type (;23;) (func (param i32 i32) (result i64)))
  (type (;24;) (func (param f64 f64) (result f64)))
  (type (;25;) (func (param f64 i32) (result f64)))
  (type (;26;) (func (param i32 i64 i64 i64 i64)))
  (import "wasi_snapshot_preview1" "args_get" (func $__imported_wasi_snapshot_preview1_args_get (type 3)))
  (import "wasi_snapshot_preview1" "args_sizes_get" (func $__imported_wasi_snapshot_preview1_args_sizes_get (type 3)))
  (import "wasi_snapshot_preview1" "clock_time_get" (func $__imported_wasi_snapshot_preview1_clock_time_get (type 4)))
  (import "wasi_snapshot_preview1" "fd_close" (func $__imported_wasi_snapshot_preview1_fd_close (type 0)))
  (import "wasi_snapshot_preview1" "fd_fdstat_get" (func $__imported_wasi_snapshot_preview1_fd_fdstat_get (type 3)))
  (import "wasi_snapshot_preview1" "fd_fdstat_set_flags" (func $__imported_wasi_snapshot_preview1_fd_fdstat_set_flags (type 3)))
  (import "wasi_snapshot_preview1" "fd_prestat_get" (func $__imported_wasi_snapshot_preview1_fd_prestat_get (type 3)))
  (import "wasi_snapshot_preview1" "fd_prestat_dir_name" (func $__imported_wasi_snapshot_preview1_fd_prestat_dir_name (type 1)))
  (import "wasi_snapshot_preview1" "fd_read" (func $__imported_wasi_snapshot_preview1_fd_read (type 5)))
  (import "wasi_snapshot_preview1" "fd_seek" (func $__imported_wasi_snapshot_preview1_fd_seek (type 6)))
  (import "wasi_snapshot_preview1" "fd_write" (func $__imported_wasi_snapshot_preview1_fd_write (type 5)))
  (import "wasi_snapshot_preview1" "path_open" (func $__imported_wasi_snapshot_preview1_path_open (type 7)))
  (import "wasi_snapshot_preview1" "proc_exit" (func $__imported_wasi_snapshot_preview1_proc_exit (type 8)))
  (func $__wasm_call_ctors (type 9)
    call $__wasilibc_populate_preopens)
  (func $undefined_weak:__wasilibc_find_relpath_alloc (type 10) (param i32 i32 i32 i32 i32) (result i32)
    unreachable)
  (func $_start (type 9)
    (local i32)
    block  ;; label = @1
      block  ;; label = @2
        i32.const 0
        i32.load offset=4480
        br_if 0 (;@2;)
        i32.const 0
        i32.const 1
        i32.store offset=4480
        call $__wasm_call_ctors
        call $__main_void
        local.set 0
        call $__wasm_call_dtors
        local.get 0
        br_if 1 (;@1;)
        return
      end
      unreachable
      unreachable
    end
    local.get 0
    call $__wasi_proc_exit
    unreachable)
  (func $get_heat_sensor_data (type 1) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 3
    i32.const 64
    local.set 4
    local.get 3
    local.get 4
    i32.sub
    local.set 5
    local.get 5
    global.set $__stack_pointer
    local.get 5
    local.get 0
    i32.store offset=56
    local.get 5
    local.get 1
    i32.store16 offset=54
    local.get 5
    local.get 2
    i32.store offset=48
    local.get 5
    i32.load offset=48
    local.set 6
    local.get 5
    local.get 6
    i32.store offset=40
    call $io_time_set
    local.get 5
    i32.load offset=40
    local.set 7
    i32.const 1259
    local.set 8
    local.get 7
    local.get 8
    call $fopen
    local.set 9
    local.get 5
    local.get 9
    i32.store offset=44
    call $io_time_add
    local.get 5
    i32.load offset=44
    local.set 10
    i32.const 0
    local.set 11
    local.get 10
    local.set 12
    local.get 11
    local.set 13
    local.get 12
    local.get 13
    i32.eq
    local.set 14
    i32.const 1
    local.set 15
    local.get 14
    local.get 15
    i32.and
    local.set 16
    block  ;; label = @1
      block  ;; label = @2
        local.get 16
        i32.eqz
        br_if 0 (;@2;)
        local.get 5
        i32.load offset=40
        local.set 17
        local.get 5
        local.get 17
        i32.store
        i32.const 1305
        local.set 18
        local.get 18
        local.get 5
        call $printf
        drop
        i32.const 0
        local.set 19
        local.get 5
        local.get 19
        i32.store16 offset=62
        br 1 (;@1;)
      end
      call $io_time_set
      local.get 5
      i32.load offset=44
      local.set 20
      local.get 5
      i32.load16_u offset=54
      local.set 21
      i32.const 65535
      local.set 22
      local.get 21
      local.get 22
      i32.and
      local.set 23
      i32.const 6
      local.set 24
      local.get 23
      local.get 24
      i32.shl
      local.set 25
      i32.const 5
      local.set 26
      local.get 25
      local.get 26
      i32.mul
      local.set 27
      i32.const 0
      local.set 28
      local.get 20
      local.get 27
      local.get 28
      call $fseek
      drop
      call $io_time_add
      call $io_time_set
      local.get 5
      i32.load offset=44
      local.set 29
      local.get 5
      i32.load offset=56
      local.set 30
      local.get 5
      local.get 30
      i32.store offset=32
      i32.const 1064
      local.set 31
      i32.const 32
      local.set 32
      local.get 5
      local.get 32
      i32.add
      local.set 33
      local.get 29
      local.get 31
      local.get 33
      call $fscanf
      drop
      call $io_time_add
      i32.const 1
      local.set 34
      local.get 5
      local.get 34
      i32.store offset=36
      block  ;; label = @2
        loop  ;; label = @3
          local.get 5
          i32.load offset=36
          local.set 35
          i32.const 64
          local.set 36
          local.get 35
          local.set 37
          local.get 36
          local.set 38
          local.get 37
          local.get 38
          i32.lt_s
          local.set 39
          i32.const 1
          local.set 40
          local.get 39
          local.get 40
          i32.and
          local.set 41
          local.get 41
          i32.eqz
          br_if 1 (;@2;)
          call $io_time_set
          local.get 5
          i32.load offset=44
          local.set 42
          local.get 5
          i32.load offset=56
          local.set 43
          local.get 5
          i32.load offset=36
          local.set 44
          i32.const 1
          local.set 45
          local.get 44
          local.get 45
          i32.shl
          local.set 46
          local.get 43
          local.get 46
          i32.add
          local.set 47
          local.get 5
          local.get 47
          i32.store offset=16
          i32.const 1063
          local.set 48
          i32.const 16
          local.set 49
          local.get 5
          local.get 49
          i32.add
          local.set 50
          local.get 42
          local.get 48
          local.get 50
          call $fscanf
          drop
          call $io_time_add
          local.get 5
          i32.load offset=36
          local.set 51
          i32.const 1
          local.set 52
          local.get 51
          local.get 52
          i32.add
          local.set 53
          local.get 5
          local.get 53
          i32.store offset=36
          br 0 (;@3;)
        end
      end
      call $io_time_set
      local.get 5
      i32.load offset=44
      local.set 54
      local.get 54
      call $fclose
      drop
      call $io_time_add
      local.get 5
      i32.load16_u offset=54
      local.set 55
      local.get 5
      local.get 55
      i32.store16 offset=62
    end
    local.get 5
    i32.load16_u offset=62
    local.set 56
    i32.const 65535
    local.set 57
    local.get 56
    local.get 57
    i32.and
    local.set 58
    i32.const 64
    local.set 59
    local.get 5
    local.get 59
    i32.add
    local.set 60
    local.get 60
    global.set $__stack_pointer
    local.get 58
    return)
  (func $heat_calib (type 8) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 1
    i32.const 16
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    global.set $__stack_pointer
    local.get 3
    local.get 0
    i32.store offset=12
    i32.const 128
    local.set 4
    local.get 4
    call $malloc
    local.set 5
    local.get 3
    local.get 5
    i32.store offset=8
    i32.const 0
    local.set 6
    local.get 3
    local.get 6
    i32.store16 offset=6
    block  ;; label = @1
      loop  ;; label = @2
        local.get 3
        i32.load16_u offset=6
        local.set 7
        i32.const 65535
        local.set 8
        local.get 7
        local.get 8
        i32.and
        local.set 9
        i32.const 5
        local.set 10
        local.get 9
        local.set 11
        local.get 10
        local.set 12
        local.get 11
        local.get 12
        i32.lt_s
        local.set 13
        i32.const 1
        local.set 14
        local.get 13
        local.get 14
        i32.and
        local.set 15
        local.get 15
        i32.eqz
        br_if 1 (;@1;)
        local.get 3
        i32.load offset=8
        local.set 16
        local.get 3
        i32.load16_u offset=6
        local.set 17
        local.get 3
        i32.load offset=12
        local.set 18
        i32.const 65535
        local.set 19
        local.get 17
        local.get 19
        i32.and
        local.set 20
        local.get 16
        local.get 20
        local.get 18
        call $get_heat_sensor_data
        drop
        local.get 3
        i32.load offset=8
        local.set 21
        local.get 3
        i32.load16_u offset=6
        local.set 22
        i32.const 65535
        local.set 23
        local.get 22
        local.get 23
        i32.and
        local.set 24
        local.get 21
        local.get 24
        call $fast_calibration
        local.get 3
        i32.load16_u offset=6
        local.set 25
        i32.const 1
        local.set 26
        local.get 25
        local.get 26
        i32.add
        local.set 27
        local.get 3
        local.get 27
        i32.store16 offset=6
        br 0 (;@2;)
      end
    end
    local.get 3
    i32.load offset=8
    local.set 28
    local.get 3
    i32.load offset=12
    local.set 29
    i32.const 5
    local.set 30
    i32.const 65535
    local.set 31
    local.get 30
    local.get 31
    i32.and
    local.set 32
    local.get 28
    local.get 32
    local.get 29
    call $get_heat_sensor_data
    drop
    local.get 3
    i32.load offset=8
    local.set 33
    local.get 33
    call $zscoreCalculation
    i32.const 16
    local.set 34
    local.get 3
    local.get 34
    i32.add
    local.set 35
    local.get 35
    global.set $__stack_pointer
    return)
  (func $fast_calibration (type 11) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 2
    i32.const 16
    local.set 3
    local.get 2
    local.get 3
    i32.sub
    local.set 4
    local.get 4
    global.set $__stack_pointer
    local.get 4
    local.get 0
    i32.store offset=12
    local.get 4
    local.get 1
    i32.store16 offset=10
    i32.const 0
    local.set 5
    local.get 4
    local.get 5
    i32.store16 offset=8
    block  ;; label = @1
      loop  ;; label = @2
        local.get 4
        i32.load16_u offset=8
        local.set 6
        i32.const 65535
        local.set 7
        local.get 6
        local.get 7
        i32.and
        local.set 8
        i32.const 64
        local.set 9
        local.get 8
        local.set 10
        local.get 9
        local.set 11
        local.get 10
        local.get 11
        i32.lt_s
        local.set 12
        i32.const 1
        local.set 13
        local.get 12
        local.get 13
        i32.and
        local.set 14
        local.get 14
        i32.eqz
        br_if 1 (;@1;)
        i32.const 0
        local.set 15
        local.get 15
        i32.load offset=4484
        local.set 16
        local.get 4
        i32.load16_u offset=8
        local.set 17
        i32.const 65535
        local.set 18
        local.get 17
        local.get 18
        i32.and
        local.set 19
        i32.const 1
        local.set 20
        local.get 19
        local.get 20
        i32.shl
        local.set 21
        local.get 16
        local.get 21
        i32.add
        local.set 22
        local.get 22
        i32.load16_u
        local.set 23
        local.get 4
        local.get 23
        i32.store16 offset=6
        local.get 4
        i32.load offset=12
        local.set 24
        local.get 4
        i32.load16_u offset=8
        local.set 25
        i32.const 65535
        local.set 26
        local.get 25
        local.get 26
        i32.and
        local.set 27
        i32.const 1
        local.set 28
        local.get 27
        local.get 28
        i32.shl
        local.set 29
        local.get 24
        local.get 29
        i32.add
        local.set 30
        local.get 30
        i32.load16_u
        local.set 31
        i32.const 65535
        local.set 32
        local.get 31
        local.get 32
        i32.and
        local.set 33
        i32.const 0
        local.set 34
        local.get 34
        i32.load offset=4484
        local.set 35
        local.get 4
        i32.load16_u offset=8
        local.set 36
        i32.const 65535
        local.set 37
        local.get 36
        local.get 37
        i32.and
        local.set 38
        i32.const 1
        local.set 39
        local.get 38
        local.get 39
        i32.shl
        local.set 40
        local.get 35
        local.get 40
        i32.add
        local.set 41
        local.get 41
        i32.load16_u
        local.set 42
        i32.const 16
        local.set 43
        local.get 42
        local.get 43
        i32.shl
        local.set 44
        local.get 44
        local.get 43
        i32.shr_s
        local.set 45
        local.get 33
        local.get 45
        i32.sub
        local.set 46
        local.get 4
        i32.load16_u offset=10
        local.set 47
        i32.const 65535
        local.set 48
        local.get 47
        local.get 48
        i32.and
        local.set 49
        i32.const 1
        local.set 50
        local.get 49
        local.get 50
        i32.add
        local.set 51
        i32.const 2
        local.set 52
        local.get 51
        local.get 52
        i32.div_s
        local.set 53
        local.get 46
        local.get 53
        i32.add
        local.set 54
        local.get 4
        i32.load16_u offset=10
        local.set 55
        i32.const 65535
        local.set 56
        local.get 55
        local.get 56
        i32.and
        local.set 57
        i32.const 1
        local.set 58
        local.get 57
        local.get 58
        i32.add
        local.set 59
        local.get 54
        local.get 59
        i32.div_s
        local.set 60
        i32.const 0
        local.set 61
        local.get 61
        i32.load offset=4484
        local.set 62
        local.get 4
        i32.load16_u offset=8
        local.set 63
        i32.const 65535
        local.set 64
        local.get 63
        local.get 64
        i32.and
        local.set 65
        i32.const 1
        local.set 66
        local.get 65
        local.get 66
        i32.shl
        local.set 67
        local.get 62
        local.get 67
        i32.add
        local.set 68
        local.get 68
        i32.load16_u
        local.set 69
        i32.const 16
        local.set 70
        local.get 69
        local.get 70
        i32.shl
        local.set 71
        local.get 71
        local.get 70
        i32.shr_s
        local.set 72
        local.get 72
        local.get 60
        i32.add
        local.set 73
        local.get 68
        local.get 73
        i32.store16
        local.get 4
        i32.load offset=12
        local.set 74
        local.get 4
        i32.load16_u offset=8
        local.set 75
        i32.const 65535
        local.set 76
        local.get 75
        local.get 76
        i32.and
        local.set 77
        i32.const 1
        local.set 78
        local.get 77
        local.get 78
        i32.shl
        local.set 79
        local.get 74
        local.get 79
        i32.add
        local.set 80
        local.get 80
        i32.load16_u
        local.set 81
        i32.const 65535
        local.set 82
        local.get 81
        local.get 82
        i32.and
        local.set 83
        local.get 4
        i32.load16_u offset=6
        local.set 84
        i32.const 65535
        local.set 85
        local.get 84
        local.get 85
        i32.and
        local.set 86
        local.get 83
        local.get 86
        i32.sub
        local.set 87
        local.get 4
        i32.load offset=12
        local.set 88
        local.get 4
        i32.load16_u offset=8
        local.set 89
        i32.const 65535
        local.set 90
        local.get 89
        local.get 90
        i32.and
        local.set 91
        i32.const 1
        local.set 92
        local.get 91
        local.get 92
        i32.shl
        local.set 93
        local.get 88
        local.get 93
        i32.add
        local.set 94
        local.get 94
        i32.load16_u
        local.set 95
        i32.const 65535
        local.set 96
        local.get 95
        local.get 96
        i32.and
        local.set 97
        i32.const 0
        local.set 98
        local.get 98
        i32.load offset=4484
        local.set 99
        local.get 4
        i32.load16_u offset=8
        local.set 100
        i32.const 65535
        local.set 101
        local.get 100
        local.get 101
        i32.and
        local.set 102
        i32.const 1
        local.set 103
        local.get 102
        local.get 103
        i32.shl
        local.set 104
        local.get 99
        local.get 104
        i32.add
        local.set 105
        local.get 105
        i32.load16_u
        local.set 106
        i32.const 16
        local.set 107
        local.get 106
        local.get 107
        i32.shl
        local.set 108
        local.get 108
        local.get 107
        i32.shr_s
        local.set 109
        local.get 97
        local.get 109
        i32.sub
        local.set 110
        local.get 87
        local.get 110
        i32.mul
        local.set 111
        i32.const 0
        local.set 112
        local.get 112
        i32.load offset=4488
        local.set 113
        local.get 4
        i32.load16_u offset=8
        local.set 114
        i32.const 65535
        local.set 115
        local.get 114
        local.get 115
        i32.and
        local.set 116
        i32.const 2
        local.set 117
        local.get 116
        local.get 117
        i32.shl
        local.set 118
        local.get 113
        local.get 118
        i32.add
        local.set 119
        local.get 119
        i32.load
        local.set 120
        local.get 120
        local.get 111
        i32.add
        local.set 121
        local.get 119
        local.get 121
        i32.store
        local.get 4
        i32.load16_u offset=8
        local.set 122
        i32.const 1
        local.set 123
        local.get 122
        local.get 123
        i32.add
        local.set 124
        local.get 4
        local.get 124
        i32.store16 offset=8
        br 0 (;@2;)
      end
    end
    i32.const 0
    local.set 125
    local.get 4
    local.get 125
    i32.store16 offset=4
    block  ;; label = @1
      loop  ;; label = @2
        local.get 4
        i32.load16_u offset=4
        local.set 126
        i32.const 65535
        local.set 127
        local.get 126
        local.get 127
        i32.and
        local.set 128
        i32.const 64
        local.set 129
        local.get 128
        local.set 130
        local.get 129
        local.set 131
        local.get 130
        local.get 131
        i32.lt_s
        local.set 132
        i32.const 1
        local.set 133
        local.get 132
        local.get 133
        i32.and
        local.set 134
        local.get 134
        i32.eqz
        br_if 1 (;@1;)
        i32.const 0
        local.set 135
        local.get 135
        i32.load offset=4488
        local.set 136
        local.get 4
        i32.load16_u offset=4
        local.set 137
        i32.const 65535
        local.set 138
        local.get 137
        local.get 138
        i32.and
        local.set 139
        i32.const 2
        local.set 140
        local.get 139
        local.get 140
        i32.shl
        local.set 141
        local.get 136
        local.get 141
        i32.add
        local.set 142
        local.get 142
        i32.load
        local.set 143
        local.get 4
        i32.load16_u offset=10
        local.set 144
        i32.const 65535
        local.set 145
        local.get 144
        local.get 145
        i32.and
        local.set 146
        i32.const 1
        local.set 147
        local.get 146
        local.get 147
        i32.add
        local.set 148
        local.get 143
        local.get 148
        i32.div_s
        local.set 149
        local.get 149
        call $isqrt
        local.set 150
        i32.const 0
        local.set 151
        local.get 151
        i32.load offset=4492
        local.set 152
        local.get 4
        i32.load16_u offset=4
        local.set 153
        i32.const 65535
        local.set 154
        local.get 153
        local.get 154
        i32.and
        local.set 155
        i32.const 1
        local.set 156
        local.get 155
        local.get 156
        i32.shl
        local.set 157
        local.get 152
        local.get 157
        i32.add
        local.set 158
        local.get 158
        local.get 150
        i32.store16
        local.get 4
        i32.load16_u offset=4
        local.set 159
        i32.const 1
        local.set 160
        local.get 159
        local.get 160
        i32.add
        local.set 161
        local.get 4
        local.get 161
        i32.store16 offset=4
        br 0 (;@2;)
      end
    end
    i32.const 16
    local.set 162
    local.get 4
    local.get 162
    i32.add
    local.set 163
    local.get 163
    global.set $__stack_pointer
    return)
  (func $zscoreCalculation (type 8) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 1
    i32.const 32
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    local.get 0
    i32.store offset=28
    i32.const -300000
    local.set 4
    local.get 3
    local.get 4
    i32.store offset=24
    i32.const 300000
    local.set 5
    local.get 3
    local.get 5
    i32.store offset=20
    i32.const 0
    local.set 6
    local.get 3
    local.get 6
    i32.store offset=16
    block  ;; label = @1
      loop  ;; label = @2
        local.get 3
        i32.load offset=16
        local.set 7
        i32.const 64
        local.set 8
        local.get 7
        local.set 9
        local.get 8
        local.set 10
        local.get 9
        local.get 10
        i32.lt_s
        local.set 11
        i32.const 1
        local.set 12
        local.get 11
        local.get 12
        i32.and
        local.set 13
        local.get 13
        i32.eqz
        br_if 1 (;@1;)
        local.get 3
        i32.load offset=28
        local.set 14
        local.get 3
        i32.load offset=16
        local.set 15
        i32.const 1
        local.set 16
        local.get 15
        local.get 16
        i32.shl
        local.set 17
        local.get 14
        local.get 17
        i32.add
        local.set 18
        local.get 18
        i32.load16_u
        local.set 19
        i32.const 65535
        local.set 20
        local.get 19
        local.get 20
        i32.and
        local.set 21
        i32.const 0
        local.set 22
        local.get 22
        i32.load offset=4484
        local.set 23
        local.get 3
        i32.load offset=16
        local.set 24
        i32.const 1
        local.set 25
        local.get 24
        local.get 25
        i32.shl
        local.set 26
        local.get 23
        local.get 26
        i32.add
        local.set 27
        local.get 27
        i32.load16_u
        local.set 28
        i32.const 16
        local.set 29
        local.get 28
        local.get 29
        i32.shl
        local.set 30
        local.get 30
        local.get 29
        i32.shr_s
        local.set 31
        local.get 21
        local.get 31
        i32.sub
        local.set 32
        i32.const 100
        local.set 33
        local.get 32
        local.get 33
        i32.mul
        local.set 34
        i32.const 0
        local.set 35
        local.get 35
        i32.load offset=4492
        local.set 36
        local.get 3
        i32.load offset=16
        local.set 37
        i32.const 1
        local.set 38
        local.get 37
        local.get 38
        i32.shl
        local.set 39
        local.get 36
        local.get 39
        i32.add
        local.set 40
        local.get 40
        i32.load16_u
        local.set 41
        i32.const 16
        local.set 42
        local.get 41
        local.get 42
        i32.shl
        local.set 43
        local.get 43
        local.get 42
        i32.shr_s
        local.set 44
        local.get 34
        local.get 44
        i32.div_s
        local.set 45
        local.get 3
        local.get 45
        i32.store16 offset=14
        local.get 3
        i32.load16_u offset=14
        local.set 46
        i32.const 0
        local.set 47
        local.get 47
        i32.load offset=4496
        local.set 48
        local.get 3
        i32.load offset=16
        local.set 49
        i32.const 1
        local.set 50
        local.get 49
        local.get 50
        i32.shl
        local.set 51
        local.get 48
        local.get 51
        i32.add
        local.set 52
        local.get 52
        local.get 46
        i32.store16
        local.get 3
        i32.load16_u offset=14
        local.set 53
        i32.const 16
        local.set 54
        local.get 53
        local.get 54
        i32.shl
        local.set 55
        local.get 55
        local.get 54
        i32.shr_s
        local.set 56
        local.get 3
        i32.load offset=24
        local.set 57
        local.get 56
        local.set 58
        local.get 57
        local.set 59
        local.get 58
        local.get 59
        i32.gt_s
        local.set 60
        i32.const 1
        local.set 61
        local.get 60
        local.get 61
        i32.and
        local.set 62
        block  ;; label = @3
          local.get 62
          i32.eqz
          br_if 0 (;@3;)
          local.get 3
          i32.load16_u offset=14
          local.set 63
          i32.const 16
          local.set 64
          local.get 63
          local.get 64
          i32.shl
          local.set 65
          local.get 65
          local.get 64
          i32.shr_s
          local.set 66
          local.get 3
          local.get 66
          i32.store offset=24
        end
        local.get 3
        i32.load16_u offset=14
        local.set 67
        i32.const 16
        local.set 68
        local.get 67
        local.get 68
        i32.shl
        local.set 69
        local.get 69
        local.get 68
        i32.shr_s
        local.set 70
        local.get 3
        i32.load offset=20
        local.set 71
        local.get 70
        local.set 72
        local.get 71
        local.set 73
        local.get 72
        local.get 73
        i32.lt_s
        local.set 74
        i32.const 1
        local.set 75
        local.get 74
        local.get 75
        i32.and
        local.set 76
        block  ;; label = @3
          local.get 76
          i32.eqz
          br_if 0 (;@3;)
          local.get 3
          i32.load16_u offset=14
          local.set 77
          i32.const 16
          local.set 78
          local.get 77
          local.get 78
          i32.shl
          local.set 79
          local.get 79
          local.get 78
          i32.shr_s
          local.set 80
          local.get 3
          local.get 80
          i32.store offset=20
        end
        local.get 3
        i32.load offset=16
        local.set 81
        i32.const 1
        local.set 82
        local.get 81
        local.get 82
        i32.add
        local.set 83
        local.get 3
        local.get 83
        i32.store offset=16
        br 0 (;@2;)
      end
    end
    local.get 3
    i32.load offset=24
    local.set 84
    i32.const 0
    local.set 85
    local.get 85
    local.get 84
    i32.store16 offset=4500
    local.get 3
    i32.load offset=20
    local.set 86
    i32.const 0
    local.set 87
    local.get 87
    local.get 86
    i32.store16 offset=4502
    return)
  (func $isqrt (type 0) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 1
    i32.const 32
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    local.get 0
    i32.store offset=24
    local.get 3
    i32.load offset=24
    local.set 4
    i32.const 1
    local.set 5
    local.get 4
    local.set 6
    local.get 5
    local.set 7
    local.get 6
    local.get 7
    i32.lt_s
    local.set 8
    i32.const 1
    local.set 9
    local.get 8
    local.get 9
    i32.and
    local.set 10
    block  ;; label = @1
      block  ;; label = @2
        local.get 10
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        local.set 11
        local.get 3
        local.get 11
        i32.store16 offset=30
        br 1 (;@1;)
      end
      i32.const 1073741824
      local.set 12
      local.get 3
      local.get 12
      i32.store offset=20
      local.get 3
      i32.load offset=24
      local.set 13
      local.get 3
      local.get 13
      i32.store offset=16
      i32.const 0
      local.set 14
      local.get 3
      local.get 14
      i32.store offset=12
      block  ;; label = @2
        loop  ;; label = @3
          local.get 3
          i32.load offset=20
          local.set 15
          i32.const 0
          local.set 16
          local.get 15
          local.set 17
          local.get 16
          local.set 18
          local.get 17
          local.get 18
          i32.gt_u
          local.set 19
          i32.const 1
          local.set 20
          local.get 19
          local.get 20
          i32.and
          local.set 21
          local.get 21
          i32.eqz
          br_if 1 (;@2;)
          local.get 3
          i32.load offset=16
          local.set 22
          local.get 3
          i32.load offset=20
          local.set 23
          local.get 3
          i32.load offset=12
          local.set 24
          local.get 23
          local.get 24
          i32.or
          local.set 25
          local.get 22
          local.set 26
          local.get 25
          local.set 27
          local.get 26
          local.get 27
          i32.ge_u
          local.set 28
          i32.const 1
          local.set 29
          local.get 28
          local.get 29
          i32.and
          local.set 30
          block  ;; label = @4
            block  ;; label = @5
              local.get 30
              i32.eqz
              br_if 0 (;@5;)
              local.get 3
              i32.load offset=20
              local.set 31
              local.get 3
              i32.load offset=12
              local.set 32
              local.get 31
              local.get 32
              i32.or
              local.set 33
              local.get 3
              i32.load offset=16
              local.set 34
              local.get 34
              local.get 33
              i32.sub
              local.set 35
              local.get 3
              local.get 35
              i32.store offset=16
              local.get 3
              i32.load offset=12
              local.set 36
              i32.const 1
              local.set 37
              local.get 36
              local.get 37
              i32.shr_u
              local.set 38
              local.get 3
              local.get 38
              i32.store offset=12
              local.get 3
              i32.load offset=20
              local.set 39
              local.get 3
              i32.load offset=12
              local.set 40
              local.get 40
              local.get 39
              i32.or
              local.set 41
              local.get 3
              local.get 41
              i32.store offset=12
              br 1 (;@4;)
            end
            local.get 3
            i32.load offset=12
            local.set 42
            i32.const 1
            local.set 43
            local.get 42
            local.get 43
            i32.shr_u
            local.set 44
            local.get 3
            local.get 44
            i32.store offset=12
          end
          local.get 3
          i32.load offset=20
          local.set 45
          i32.const 2
          local.set 46
          local.get 45
          local.get 46
          i32.shr_u
          local.set 47
          local.get 3
          local.get 47
          i32.store offset=20
          br 0 (;@3;)
        end
      end
      local.get 3
      i32.load offset=12
      local.set 48
      local.get 3
      local.get 48
      i32.store16 offset=30
    end
    local.get 3
    i32.load16_u offset=30
    local.set 49
    i32.const 65535
    local.set 50
    local.get 49
    local.get 50
    i32.and
    local.set 51
    local.get 51
    return)
  (func $heat_detect (type 12) (param i32 i32 i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 6
    i32.const 32
    local.set 7
    local.get 6
    local.get 7
    i32.sub
    local.set 8
    local.get 8
    global.set $__stack_pointer
    local.get 8
    local.get 0
    i32.store offset=28
    local.get 8
    local.get 1
    i32.store offset=24
    local.get 8
    local.get 2
    i32.store offset=20
    local.get 8
    local.get 3
    i32.store offset=16
    local.get 8
    local.get 4
    i32.store offset=12
    local.get 8
    local.get 5
    i32.store offset=8
    local.get 8
    i32.load offset=28
    local.set 9
    local.get 9
    call $zscoreCalculation
    i32.const 0
    local.set 10
    local.get 8
    local.get 10
    i32.store16 offset=6
    local.get 8
    i32.load offset=16
    local.set 11
    local.get 8
    i32.load offset=12
    local.set 12
    local.get 8
    i32.load offset=8
    local.set 13
    i32.const 6
    local.set 14
    local.get 8
    local.get 14
    i32.add
    local.set 15
    local.get 15
    local.set 16
    local.get 11
    local.get 16
    local.get 12
    local.get 13
    call $get_largest_subset
    local.get 8
    i32.load offset=24
    local.set 17
    local.get 17
    call $reset_log_variable
    local.get 8
    i32.load16_u offset=6
    local.set 18
    i32.const 16
    local.set 19
    local.get 18
    local.get 19
    i32.shl
    local.set 20
    local.get 20
    local.get 19
    i32.shr_s
    local.set 21
    i32.const 1
    local.set 22
    local.get 21
    local.set 23
    local.get 22
    local.set 24
    local.get 23
    local.get 24
    i32.gt_s
    local.set 25
    i32.const 1
    local.set 26
    local.get 25
    local.get 26
    i32.and
    local.set 27
    block  ;; label = @1
      block  ;; label = @2
        local.get 27
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        local.set 28
        local.get 28
        i32.load16_u offset=4500
        local.set 29
        i32.const 16
        local.set 30
        local.get 29
        local.get 30
        i32.shl
        local.set 31
        local.get 31
        local.get 30
        i32.shr_s
        local.set 32
        i32.const 0
        local.set 33
        local.get 33
        i32.load16_u offset=4228
        local.set 34
        i32.const 16
        local.set 35
        local.get 34
        local.get 35
        i32.shl
        local.set 36
        local.get 36
        local.get 35
        i32.shr_s
        local.set 37
        local.get 32
        local.set 38
        local.get 37
        local.set 39
        local.get 38
        local.get 39
        i32.gt_s
        local.set 40
        i32.const 1
        local.set 41
        local.get 40
        local.get 41
        i32.and
        local.set 42
        block  ;; label = @3
          block  ;; label = @4
            local.get 42
            i32.eqz
            br_if 0 (;@4;)
            local.get 8
            i32.load offset=16
            local.set 43
            local.get 8
            i32.load16_u offset=6
            local.set 44
            i32.const 16
            local.set 45
            local.get 44
            local.get 45
            i32.shl
            local.set 46
            local.get 46
            local.get 45
            i32.shr_s
            local.set 47
            local.get 43
            local.get 47
            call $get_filtered_xy
            br 1 (;@3;)
          end
          i32.const 0
          local.set 48
          local.get 48
          i32.load16_u offset=4500
          local.set 49
          i32.const 16
          local.set 50
          local.get 49
          local.get 50
          i32.shl
          local.set 51
          local.get 51
          local.get 50
          i32.shr_s
          local.set 52
          i32.const 0
          local.set 53
          local.get 53
          i32.load16_u offset=4226
          local.set 54
          i32.const 16
          local.set 55
          local.get 54
          local.get 55
          i32.shl
          local.set 56
          local.get 56
          local.get 55
          i32.shr_s
          local.set 57
          local.get 52
          local.set 58
          local.get 57
          local.set 59
          local.get 58
          local.get 59
          i32.gt_s
          local.set 60
          i32.const 1
          local.set 61
          local.get 60
          local.get 61
          i32.and
          local.set 62
          block  ;; label = @4
            local.get 62
            i32.eqz
            br_if 0 (;@4;)
            local.get 8
            i32.load offset=16
            local.set 63
            local.get 8
            i32.load16_u offset=6
            local.set 64
            i32.const 16
            local.set 65
            local.get 64
            local.get 65
            i32.shl
            local.set 66
            local.get 66
            local.get 65
            i32.shr_s
            local.set 67
            local.get 63
            local.get 67
            call $get_xy
          end
        end
        local.get 8
        i32.load offset=16
        local.set 68
        local.get 8
        i32.load16_u offset=6
        local.set 69
        i32.const 16
        local.set 70
        local.get 69
        local.get 70
        i32.shl
        local.set 71
        local.get 71
        local.get 70
        i32.shr_s
        local.set 72
        local.get 8
        i32.load offset=24
        local.set 73
        local.get 68
        local.get 72
        local.get 73
        call $labelPixel
        local.get 8
        i32.load offset=24
        local.set 74
        local.get 8
        i32.load offset=20
        local.set 75
        local.get 74
        local.get 75
        call $rotateColor
        local.get 8
        i32.load offset=20
        local.set 76
        local.get 76
        call $findGroup
        br 1 (;@1;)
      end
      i32.const 1509
      local.set 77
      i32.const 0
      local.set 78
      local.get 77
      local.get 78
      call $printf
      drop
      loop  ;; label = @2
        br 0 (;@2;)
      end
    end
    i32.const 32
    local.set 79
    local.get 8
    local.get 79
    i32.add
    local.set 80
    local.get 80
    global.set $__stack_pointer
    return)
  (func $get_largest_subset (type 13) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 4
    i32.const 32
    local.set 5
    local.get 4
    local.get 5
    i32.sub
    local.set 6
    local.get 6
    global.set $__stack_pointer
    local.get 6
    local.get 0
    i32.store offset=28
    local.get 6
    local.get 1
    i32.store offset=24
    local.get 6
    local.get 2
    i32.store offset=20
    local.get 6
    local.get 3
    i32.store offset=16
    i32.const 0
    local.set 7
    local.get 6
    local.get 7
    i32.store offset=12
    i32.const 0
    local.set 8
    local.get 6
    local.get 8
    i32.store16 offset=10
    block  ;; label = @1
      loop  ;; label = @2
        local.get 6
        i32.load16_u offset=10
        local.set 9
        i32.const 65535
        local.set 10
        local.get 9
        local.get 10
        i32.and
        local.set 11
        i32.const 64
        local.set 12
        local.get 11
        local.set 13
        local.get 12
        local.set 14
        local.get 13
        local.get 14
        i32.lt_s
        local.set 15
        i32.const 1
        local.set 16
        local.get 15
        local.get 16
        i32.and
        local.set 17
        local.get 17
        i32.eqz
        br_if 1 (;@1;)
        local.get 6
        i32.load offset=20
        local.set 18
        local.get 6
        i32.load16_u offset=10
        local.set 19
        i32.const 65535
        local.set 20
        local.get 19
        local.get 20
        i32.and
        local.set 21
        i32.const 2
        local.set 22
        local.get 21
        local.get 22
        i32.shl
        local.set 23
        local.get 18
        local.get 23
        i32.add
        local.set 24
        i32.const 0
        local.set 25
        local.get 24
        local.get 25
        i32.store
        local.get 6
        i32.load16_u offset=10
        local.set 26
        i32.const 1
        local.set 27
        local.get 26
        local.get 27
        i32.add
        local.set 28
        local.get 6
        local.get 28
        i32.store16 offset=10
        br 0 (;@2;)
      end
    end
    i32.const 0
    local.set 29
    local.get 6
    local.get 29
    i32.store16 offset=8
    block  ;; label = @1
      loop  ;; label = @2
        local.get 6
        i32.load16_u offset=8
        local.set 30
        i32.const 65535
        local.set 31
        local.get 30
        local.get 31
        i32.and
        local.set 32
        i32.const 64
        local.set 33
        local.get 32
        local.set 34
        local.get 33
        local.set 35
        local.get 34
        local.get 35
        i32.lt_s
        local.set 36
        i32.const 1
        local.set 37
        local.get 36
        local.get 37
        i32.and
        local.set 38
        local.get 38
        i32.eqz
        br_if 1 (;@1;)
        i32.const 0
        local.set 39
        local.get 39
        i32.load offset=4496
        local.set 40
        local.get 6
        i32.load16_u offset=8
        local.set 41
        i32.const 65535
        local.set 42
        local.get 41
        local.get 42
        i32.and
        local.set 43
        i32.const 1
        local.set 44
        local.get 43
        local.get 44
        i32.shl
        local.set 45
        local.get 40
        local.get 45
        i32.add
        local.set 46
        local.get 46
        i32.load16_u
        local.set 47
        i32.const 16
        local.set 48
        local.get 47
        local.get 48
        i32.shl
        local.set 49
        local.get 49
        local.get 48
        i32.shr_s
        local.set 50
        i32.const 0
        local.set 51
        local.get 51
        i32.load16_u offset=4224
        local.set 52
        i32.const 16
        local.set 53
        local.get 52
        local.get 53
        i32.shl
        local.set 54
        local.get 54
        local.get 53
        i32.shr_s
        local.set 55
        local.get 50
        local.set 56
        local.get 55
        local.set 57
        local.get 56
        local.get 57
        i32.gt_s
        local.set 58
        i32.const 1
        local.set 59
        local.get 58
        local.get 59
        i32.and
        local.set 60
        block  ;; label = @3
          block  ;; label = @4
            local.get 60
            i32.eqz
            br_if 0 (;@4;)
            local.get 6
            i32.load16_u offset=8
            local.set 61
            i32.const 65535
            local.set 62
            local.get 61
            local.get 62
            i32.and
            local.set 63
            local.get 6
            i32.load offset=20
            local.set 64
            local.get 6
            i32.load offset=12
            local.set 65
            i32.const 2
            local.set 66
            local.get 65
            local.get 66
            i32.shl
            local.set 67
            local.get 64
            local.get 67
            i32.add
            local.set 68
            local.get 68
            local.get 63
            i32.store
            local.get 6
            i32.load offset=12
            local.set 69
            i32.const 1
            local.set 70
            local.get 69
            local.get 70
            i32.add
            local.set 71
            local.get 6
            local.get 71
            i32.store offset=12
            i32.const 0
            local.set 72
            local.get 72
            i32.load offset=4536
            local.set 73
            local.get 6
            i32.load16_u offset=8
            local.set 74
            i32.const 65535
            local.set 75
            local.get 74
            local.get 75
            i32.and
            local.set 76
            local.get 73
            local.get 76
            i32.add
            local.set 77
            i32.const 1
            local.set 78
            local.get 77
            local.get 78
            i32.store8
            br 1 (;@3;)
          end
          i32.const 0
          local.set 79
          local.get 79
          i32.load offset=4496
          local.set 80
          local.get 6
          i32.load16_u offset=8
          local.set 81
          i32.const 65535
          local.set 82
          local.get 81
          local.get 82
          i32.and
          local.set 83
          i32.const 1
          local.set 84
          local.get 83
          local.get 84
          i32.shl
          local.set 85
          local.get 80
          local.get 85
          i32.add
          local.set 86
          local.get 86
          i32.load16_u
          local.set 87
          i32.const 16
          local.set 88
          local.get 87
          local.get 88
          i32.shl
          local.set 89
          local.get 89
          local.get 88
          i32.shr_s
          local.set 90
          i32.const 0
          local.set 91
          local.get 91
          i32.load16_u offset=4226
          local.set 92
          i32.const 16
          local.set 93
          local.get 92
          local.get 93
          i32.shl
          local.set 94
          local.get 94
          local.get 93
          i32.shr_s
          local.set 95
          local.get 90
          local.set 96
          local.get 95
          local.set 97
          local.get 96
          local.get 97
          i32.gt_s
          local.set 98
          i32.const 1
          local.set 99
          local.get 98
          local.get 99
          i32.and
          local.set 100
          block  ;; label = @4
            block  ;; label = @5
              local.get 100
              i32.eqz
              br_if 0 (;@5;)
              i32.const 0
              local.set 101
              local.get 101
              i32.load offset=4536
              local.set 102
              local.get 6
              i32.load16_u offset=8
              local.set 103
              i32.const 65535
              local.set 104
              local.get 103
              local.get 104
              i32.and
              local.set 105
              local.get 102
              local.get 105
              i32.add
              local.set 106
              local.get 106
              i32.load8_u
              local.set 107
              i32.const 255
              local.set 108
              local.get 107
              local.get 108
              i32.and
              local.set 109
              block  ;; label = @6
                block  ;; label = @7
                  local.get 109
                  br_if 0 (;@7;)
                  local.get 6
                  i32.load16_u offset=8
                  local.set 110
                  i32.const 65535
                  local.set 111
                  local.get 110
                  local.get 111
                  i32.and
                  local.set 112
                  local.get 112
                  call $check_neighbor_zscore_weight
                  local.set 113
                  i32.const 255
                  local.set 114
                  local.get 113
                  local.get 114
                  i32.and
                  local.set 115
                  local.get 115
                  i32.eqz
                  br_if 1 (;@6;)
                end
                local.get 6
                i32.load16_u offset=8
                local.set 116
                i32.const 65535
                local.set 117
                local.get 116
                local.get 117
                i32.and
                local.set 118
                local.get 6
                i32.load offset=20
                local.set 119
                local.get 6
                i32.load offset=12
                local.set 120
                i32.const 2
                local.set 121
                local.get 120
                local.get 121
                i32.shl
                local.set 122
                local.get 119
                local.get 122
                i32.add
                local.set 123
                local.get 123
                local.get 118
                i32.store
                local.get 6
                i32.load offset=12
                local.set 124
                i32.const 1
                local.set 125
                local.get 124
                local.get 125
                i32.add
                local.set 126
                local.get 6
                local.get 126
                i32.store offset=12
                i32.const 0
                local.set 127
                local.get 127
                i32.load offset=4536
                local.set 128
                local.get 6
                i32.load16_u offset=8
                local.set 129
                i32.const 65535
                local.set 130
                local.get 129
                local.get 130
                i32.and
                local.set 131
                local.get 128
                local.get 131
                i32.add
                local.set 132
                i32.const 1
                local.set 133
                local.get 132
                local.get 133
                i32.store8
              end
              br 1 (;@4;)
            end
            i32.const 0
            local.set 134
            local.get 134
            i32.load offset=4536
            local.set 135
            local.get 6
            i32.load16_u offset=8
            local.set 136
            i32.const 65535
            local.set 137
            local.get 136
            local.get 137
            i32.and
            local.set 138
            local.get 135
            local.get 138
            i32.add
            local.set 139
            i32.const 0
            local.set 140
            local.get 139
            local.get 140
            i32.store8
          end
        end
        local.get 6
        i32.load16_u offset=8
        local.set 141
        i32.const 1
        local.set 142
        local.get 141
        local.get 142
        i32.add
        local.set 143
        local.get 6
        local.get 143
        i32.store16 offset=8
        br 0 (;@2;)
      end
    end
    local.get 6
    i32.load offset=20
    local.set 144
    local.get 6
    i32.load offset=12
    local.set 145
    i32.const 2
    local.set 146
    local.get 145
    local.get 146
    i32.shl
    local.set 147
    local.get 144
    local.get 147
    i32.add
    local.set 148
    i32.const 99
    local.set 149
    local.get 148
    local.get 149
    i32.store
    local.get 6
    i32.load offset=20
    local.set 150
    local.get 6
    i32.load offset=12
    local.set 151
    local.get 6
    i32.load offset=24
    local.set 152
    local.get 6
    i32.load offset=28
    local.set 153
    local.get 6
    i32.load offset=16
    local.set 154
    local.get 150
    local.get 151
    local.get 152
    local.get 153
    local.get 154
    call $find_largestSubset
    local.get 6
    i32.load offset=24
    local.set 155
    local.get 155
    i32.load16_u
    local.set 156
    i32.const 16
    local.set 157
    local.get 156
    local.get 157
    i32.shl
    local.set 158
    local.get 158
    local.get 157
    i32.shr_s
    local.set 159
    i32.const 1
    local.set 160
    local.get 159
    local.set 161
    local.get 160
    local.set 162
    local.get 161
    local.get 162
    i32.eq
    local.set 163
    i32.const 1
    local.set 164
    local.get 163
    local.get 164
    i32.and
    local.set 165
    block  ;; label = @1
      local.get 165
      i32.eqz
      br_if 0 (;@1;)
      local.get 6
      i32.load offset=24
      local.set 166
      i32.const 0
      local.set 167
      local.get 166
      local.get 167
      i32.store16
      local.get 6
      i32.load offset=28
      local.set 168
      i32.const -1
      local.set 169
      local.get 168
      local.get 169
      i32.store
    end
    i32.const 32
    local.set 170
    local.get 6
    local.get 170
    i32.add
    local.set 171
    local.get 171
    global.set $__stack_pointer
    return)
  (func $reset_log_variable (type 8) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 1
    i32.const 16
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    local.get 0
    i32.store offset=12
    i32.const 0
    local.set 4
    local.get 3
    local.get 4
    i32.store16 offset=10
    block  ;; label = @1
      loop  ;; label = @2
        local.get 3
        i32.load16_u offset=10
        local.set 5
        i32.const 65535
        local.set 6
        local.get 5
        local.get 6
        i32.and
        local.set 7
        i32.const 64
        local.set 8
        local.get 7
        local.set 9
        local.get 8
        local.set 10
        local.get 9
        local.get 10
        i32.lt_s
        local.set 11
        i32.const 1
        local.set 12
        local.get 11
        local.get 12
        i32.and
        local.set 13
        local.get 13
        i32.eqz
        br_if 1 (;@1;)
        local.get 3
        i32.load offset=12
        local.set 14
        local.get 3
        i32.load16_u offset=10
        local.set 15
        i32.const 65535
        local.set 16
        local.get 15
        local.get 16
        i32.and
        local.set 17
        local.get 14
        local.get 17
        i32.add
        local.set 18
        i32.const 1
        local.set 19
        local.get 18
        local.get 19
        i32.store8
        local.get 3
        i32.load16_u offset=10
        local.set 20
        i32.const 1
        local.set 21
        local.get 20
        local.get 21
        i32.add
        local.set 22
        local.get 3
        local.get 22
        i32.store16 offset=10
        br 0 (;@2;)
      end
    end
    i32.const 65535
    local.set 23
    i32.const 0
    local.set 24
    local.get 24
    local.get 23
    i32.store16 offset=4504
    i32.const 65535
    local.set 25
    i32.const 0
    local.set 26
    local.get 26
    local.get 25
    i32.store16 offset=4506
    i32.const 65535
    local.set 27
    i32.const 0
    local.set 28
    local.get 28
    local.get 27
    i32.store16 offset=4508
    i32.const 65535
    local.set 29
    i32.const 0
    local.set 30
    local.get 30
    local.get 29
    i32.store16 offset=4510
    i32.const 0
    local.set 31
    i32.const 0
    local.set 32
    local.get 32
    local.get 31
    i32.store offset=4512
    i32.const 0
    local.set 33
    i32.const 0
    local.set 34
    local.get 34
    local.get 33
    i32.store offset=4516
    i32.const 0
    local.set 35
    i32.const 0
    local.set 36
    local.get 36
    local.get 35
    i32.store offset=4520
    i32.const 0
    local.set 37
    i32.const 0
    local.set 38
    local.get 38
    local.get 37
    i32.store offset=4524
    i32.const 0
    local.set 39
    i32.const 0
    local.set 40
    local.get 40
    local.get 39
    i32.store offset=4528
    i32.const 0
    local.set 41
    i32.const 0
    local.set 42
    local.get 42
    local.get 41
    i32.store offset=4532
    return)
  (func $get_filtered_xy (type 11) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 2
    i32.const 48
    local.set 3
    local.get 2
    local.get 3
    i32.sub
    local.set 4
    local.get 4
    local.get 0
    i32.store offset=44
    local.get 4
    local.get 1
    i32.store offset=40
    i32.const 0
    local.set 5
    local.get 4
    local.get 5
    i32.store16 offset=38
    i32.const 0
    local.set 6
    local.get 4
    local.get 6
    i32.store16 offset=36
    i32.const 0
    local.set 7
    local.get 4
    local.get 7
    i32.store offset=32
    i32.const 0
    local.set 8
    local.get 4
    local.get 8
    i32.store8 offset=31
    i32.const 0
    local.set 9
    local.get 4
    local.get 9
    i32.store16 offset=28
    i32.const 0
    local.set 10
    local.get 4
    local.get 10
    i32.store16 offset=26
    i32.const 0
    local.set 11
    local.get 4
    local.get 11
    i32.store offset=20
    i32.const 0
    local.set 12
    local.get 4
    local.get 12
    i32.store8 offset=19
    i32.const 0
    local.set 13
    local.get 4
    local.get 13
    i32.store16 offset=16
    block  ;; label = @1
      loop  ;; label = @2
        local.get 4
        i32.load16_u offset=16
        local.set 14
        i32.const 65535
        local.set 15
        local.get 14
        local.get 15
        i32.and
        local.set 16
        local.get 4
        i32.load offset=40
        local.set 17
        local.get 16
        local.set 18
        local.get 17
        local.set 19
        local.get 18
        local.get 19
        i32.lt_s
        local.set 20
        i32.const 1
        local.set 21
        local.get 20
        local.get 21
        i32.and
        local.set 22
        local.get 22
        i32.eqz
        br_if 1 (;@1;)
        i32.const 0
        local.set 23
        local.get 23
        i32.load offset=4496
        local.set 24
        local.get 4
        i32.load offset=44
        local.set 25
        local.get 4
        i32.load16_u offset=16
        local.set 26
        i32.const 65535
        local.set 27
        local.get 26
        local.get 27
        i32.and
        local.set 28
        i32.const 2
        local.set 29
        local.get 28
        local.get 29
        i32.shl
        local.set 30
        local.get 25
        local.get 30
        i32.add
        local.set 31
        local.get 31
        i32.load
        local.set 32
        i32.const 1
        local.set 33
        local.get 32
        local.get 33
        i32.shl
        local.set 34
        local.get 24
        local.get 34
        i32.add
        local.set 35
        local.get 35
        i32.load16_u
        local.set 36
        local.get 4
        local.get 36
        i32.store16 offset=14
        local.get 4
        i32.load16_u offset=14
        local.set 37
        i32.const 16
        local.set 38
        local.get 37
        local.get 38
        i32.shl
        local.set 39
        local.get 39
        local.get 38
        i32.shr_s
        local.set 40
        i32.const 0
        local.set 41
        local.get 41
        i32.load16_u offset=4228
        local.set 42
        i32.const 16
        local.set 43
        local.get 42
        local.get 43
        i32.shl
        local.set 44
        local.get 44
        local.get 43
        i32.shr_s
        local.set 45
        local.get 40
        local.set 46
        local.get 45
        local.set 47
        local.get 46
        local.get 47
        i32.gt_s
        local.set 48
        i32.const 1
        local.set 49
        local.get 48
        local.get 49
        i32.and
        local.set 50
        block  ;; label = @3
          block  ;; label = @4
            local.get 50
            i32.eqz
            br_if 0 (;@4;)
            local.get 4
            i32.load16_u offset=14
            local.set 51
            i32.const 16
            local.set 52
            local.get 51
            local.get 52
            i32.shl
            local.set 53
            local.get 53
            local.get 52
            i32.shr_s
            local.set 54
            local.get 4
            i32.load offset=20
            local.set 55
            local.get 55
            local.get 54
            i32.add
            local.set 56
            local.get 4
            local.get 56
            i32.store offset=20
            local.get 4
            i32.load8_u offset=19
            local.set 57
            i32.const 255
            local.set 58
            local.get 57
            local.get 58
            i32.and
            local.set 59
            i32.const 1
            local.set 60
            local.get 59
            local.get 60
            i32.add
            local.set 61
            local.get 4
            local.get 61
            i32.store8 offset=19
            br 1 (;@3;)
          end
          local.get 4
          i32.load16_u offset=14
          local.set 62
          i32.const 16
          local.set 63
          local.get 62
          local.get 63
          i32.shl
          local.set 64
          local.get 64
          local.get 63
          i32.shr_s
          local.set 65
          i32.const 0
          local.set 66
          local.get 66
          i32.load16_u offset=4226
          local.set 67
          i32.const 16
          local.set 68
          local.get 67
          local.get 68
          i32.shl
          local.set 69
          local.get 69
          local.get 68
          i32.shr_s
          local.set 70
          local.get 65
          local.set 71
          local.get 70
          local.set 72
          local.get 71
          local.get 72
          i32.gt_s
          local.set 73
          i32.const 1
          local.set 74
          local.get 73
          local.get 74
          i32.and
          local.set 75
          block  ;; label = @4
            local.get 75
            i32.eqz
            br_if 0 (;@4;)
            local.get 4
            i32.load16_u offset=14
            local.set 76
            i32.const 16
            local.set 77
            local.get 76
            local.get 77
            i32.shl
            local.set 78
            local.get 78
            local.get 77
            i32.shr_s
            local.set 79
            local.get 4
            i32.load offset=32
            local.set 80
            local.get 80
            local.get 79
            i32.add
            local.set 81
            local.get 4
            local.get 81
            i32.store offset=32
            local.get 4
            i32.load8_u offset=31
            local.set 82
            i32.const 255
            local.set 83
            local.get 82
            local.get 83
            i32.and
            local.set 84
            i32.const 1
            local.set 85
            local.get 84
            local.get 85
            i32.add
            local.set 86
            local.get 4
            local.get 86
            i32.store8 offset=31
          end
        end
        local.get 4
        i32.load16_u offset=16
        local.set 87
        i32.const 1
        local.set 88
        local.get 87
        local.get 88
        i32.add
        local.set 89
        local.get 4
        local.get 89
        i32.store16 offset=16
        br 0 (;@2;)
      end
    end
    i32.const 0
    local.set 90
    local.get 4
    local.get 90
    i32.store16 offset=12
    block  ;; label = @1
      loop  ;; label = @2
        local.get 4
        i32.load16_u offset=12
        local.set 91
        i32.const 65535
        local.set 92
        local.get 91
        local.get 92
        i32.and
        local.set 93
        local.get 4
        i32.load offset=40
        local.set 94
        local.get 93
        local.set 95
        local.get 94
        local.set 96
        local.get 95
        local.get 96
        i32.lt_s
        local.set 97
        i32.const 1
        local.set 98
        local.get 97
        local.get 98
        i32.and
        local.set 99
        local.get 99
        i32.eqz
        br_if 1 (;@1;)
        local.get 4
        i32.load offset=44
        local.set 100
        local.get 4
        i32.load16_u offset=12
        local.set 101
        i32.const 65535
        local.set 102
        local.get 101
        local.get 102
        i32.and
        local.set 103
        i32.const 2
        local.set 104
        local.get 103
        local.get 104
        i32.shl
        local.set 105
        local.get 100
        local.get 105
        i32.add
        local.set 106
        local.get 106
        i32.load
        local.set 107
        i32.const 8
        local.set 108
        local.get 107
        local.get 108
        i32.rem_s
        local.set 109
        local.get 4
        local.get 109
        i32.store offset=8
        local.get 4
        i32.load offset=44
        local.set 110
        local.get 4
        i32.load16_u offset=12
        local.set 111
        i32.const 65535
        local.set 112
        local.get 111
        local.get 112
        i32.and
        local.set 113
        i32.const 2
        local.set 114
        local.get 113
        local.get 114
        i32.shl
        local.set 115
        local.get 110
        local.get 115
        i32.add
        local.set 116
        local.get 116
        i32.load
        local.set 117
        i32.const 8
        local.set 118
        local.get 117
        local.get 118
        i32.div_s
        local.set 119
        local.get 4
        local.get 119
        i32.store offset=4
        i32.const 0
        local.set 120
        local.get 120
        i32.load offset=4496
        local.set 121
        local.get 4
        i32.load offset=44
        local.set 122
        local.get 4
        i32.load16_u offset=12
        local.set 123
        i32.const 65535
        local.set 124
        local.get 123
        local.get 124
        i32.and
        local.set 125
        i32.const 2
        local.set 126
        local.get 125
        local.get 126
        i32.shl
        local.set 127
        local.get 122
        local.get 127
        i32.add
        local.set 128
        local.get 128
        i32.load
        local.set 129
        i32.const 1
        local.set 130
        local.get 129
        local.get 130
        i32.shl
        local.set 131
        local.get 121
        local.get 131
        i32.add
        local.set 132
        local.get 132
        i32.load16_u
        local.set 133
        local.get 4
        local.get 133
        i32.store16 offset=2
        local.get 4
        i32.load16_u offset=2
        local.set 134
        i32.const 16
        local.set 135
        local.get 134
        local.get 135
        i32.shl
        local.set 136
        local.get 136
        local.get 135
        i32.shr_s
        local.set 137
        i32.const 0
        local.set 138
        local.get 138
        i32.load16_u offset=4228
        local.set 139
        i32.const 16
        local.set 140
        local.get 139
        local.get 140
        i32.shl
        local.set 141
        local.get 141
        local.get 140
        i32.shr_s
        local.set 142
        local.get 137
        local.set 143
        local.get 142
        local.set 144
        local.get 143
        local.get 144
        i32.gt_s
        local.set 145
        i32.const 1
        local.set 146
        local.get 145
        local.get 146
        i32.and
        local.set 147
        block  ;; label = @3
          block  ;; label = @4
            local.get 147
            i32.eqz
            br_if 0 (;@4;)
            local.get 4
            i32.load offset=8
            local.set 148
            local.get 4
            i32.load16_u offset=2
            local.set 149
            i32.const 16
            local.set 150
            local.get 149
            local.get 150
            i32.shl
            local.set 151
            local.get 151
            local.get 150
            i32.shr_s
            local.set 152
            local.get 148
            local.get 152
            i32.mul
            local.set 153
            local.get 4
            i32.load offset=20
            local.set 154
            local.get 153
            local.get 154
            i32.div_s
            local.set 155
            local.get 4
            i32.load16_u offset=28
            local.set 156
            i32.const 16
            local.set 157
            local.get 156
            local.get 157
            i32.shl
            local.set 158
            local.get 158
            local.get 157
            i32.shr_s
            local.set 159
            local.get 159
            local.get 155
            i32.add
            local.set 160
            local.get 4
            local.get 160
            i32.store16 offset=28
            local.get 4
            i32.load offset=4
            local.set 161
            local.get 4
            i32.load16_u offset=2
            local.set 162
            i32.const 16
            local.set 163
            local.get 162
            local.get 163
            i32.shl
            local.set 164
            local.get 164
            local.get 163
            i32.shr_s
            local.set 165
            local.get 161
            local.get 165
            i32.mul
            local.set 166
            local.get 4
            i32.load offset=20
            local.set 167
            local.get 166
            local.get 167
            i32.div_s
            local.set 168
            local.get 4
            i32.load16_u offset=26
            local.set 169
            i32.const 16
            local.set 170
            local.get 169
            local.get 170
            i32.shl
            local.set 171
            local.get 171
            local.get 170
            i32.shr_s
            local.set 172
            local.get 172
            local.get 168
            i32.add
            local.set 173
            local.get 4
            local.get 173
            i32.store16 offset=26
            br 1 (;@3;)
          end
          local.get 4
          i32.load16_u offset=2
          local.set 174
          i32.const 16
          local.set 175
          local.get 174
          local.get 175
          i32.shl
          local.set 176
          local.get 176
          local.get 175
          i32.shr_s
          local.set 177
          i32.const 0
          local.set 178
          local.get 178
          i32.load16_u offset=4226
          local.set 179
          i32.const 16
          local.set 180
          local.get 179
          local.get 180
          i32.shl
          local.set 181
          local.get 181
          local.get 180
          i32.shr_s
          local.set 182
          local.get 177
          local.set 183
          local.get 182
          local.set 184
          local.get 183
          local.get 184
          i32.gt_s
          local.set 185
          i32.const 1
          local.set 186
          local.get 185
          local.get 186
          i32.and
          local.set 187
          block  ;; label = @4
            local.get 187
            i32.eqz
            br_if 0 (;@4;)
            local.get 4
            i32.load offset=8
            local.set 188
            local.get 4
            i32.load16_u offset=2
            local.set 189
            i32.const 16
            local.set 190
            local.get 189
            local.get 190
            i32.shl
            local.set 191
            local.get 191
            local.get 190
            i32.shr_s
            local.set 192
            local.get 188
            local.get 192
            i32.mul
            local.set 193
            local.get 4
            i32.load offset=32
            local.set 194
            local.get 193
            local.get 194
            i32.div_s
            local.set 195
            local.get 4
            i32.load16_u offset=38
            local.set 196
            i32.const 16
            local.set 197
            local.get 196
            local.get 197
            i32.shl
            local.set 198
            local.get 198
            local.get 197
            i32.shr_s
            local.set 199
            local.get 199
            local.get 195
            i32.add
            local.set 200
            local.get 4
            local.get 200
            i32.store16 offset=38
            local.get 4
            i32.load offset=4
            local.set 201
            local.get 4
            i32.load16_u offset=2
            local.set 202
            i32.const 16
            local.set 203
            local.get 202
            local.get 203
            i32.shl
            local.set 204
            local.get 204
            local.get 203
            i32.shr_s
            local.set 205
            local.get 201
            local.get 205
            i32.mul
            local.set 206
            local.get 4
            i32.load offset=32
            local.set 207
            local.get 206
            local.get 207
            i32.div_s
            local.set 208
            local.get 4
            i32.load16_u offset=36
            local.set 209
            i32.const 16
            local.set 210
            local.get 209
            local.get 210
            i32.shl
            local.set 211
            local.get 211
            local.get 210
            i32.shr_s
            local.set 212
            local.get 212
            local.get 208
            i32.add
            local.set 213
            local.get 4
            local.get 213
            i32.store16 offset=36
          end
        end
        local.get 4
        i32.load16_u offset=12
        local.set 214
        i32.const 1
        local.set 215
        local.get 214
        local.get 215
        i32.add
        local.set 216
        local.get 4
        local.get 216
        i32.store16 offset=12
        br 0 (;@2;)
      end
    end
    local.get 4
    i32.load8_u offset=19
    local.set 217
    i32.const 255
    local.set 218
    local.get 217
    local.get 218
    i32.and
    local.set 219
    i32.const 0
    local.set 220
    local.get 219
    local.set 221
    local.get 220
    local.set 222
    local.get 221
    local.get 222
    i32.gt_s
    local.set 223
    i32.const 1
    local.set 224
    local.get 223
    local.get 224
    i32.and
    local.set 225
    block  ;; label = @1
      local.get 225
      i32.eqz
      br_if 0 (;@1;)
      local.get 4
      i32.load16_u offset=28
      local.set 226
      i32.const 0
      local.set 227
      local.get 227
      local.get 226
      i32.store16 offset=4508
      local.get 4
      i32.load16_u offset=26
      local.set 228
      i32.const 0
      local.set 229
      local.get 229
      local.get 228
      i32.store16 offset=4510
    end
    local.get 4
    i32.load8_u offset=31
    local.set 230
    i32.const 255
    local.set 231
    local.get 230
    local.get 231
    i32.and
    local.set 232
    i32.const 0
    local.set 233
    local.get 232
    local.set 234
    local.get 233
    local.set 235
    local.get 234
    local.get 235
    i32.gt_s
    local.set 236
    i32.const 1
    local.set 237
    local.get 236
    local.get 237
    i32.and
    local.set 238
    block  ;; label = @1
      local.get 238
      i32.eqz
      br_if 0 (;@1;)
      local.get 4
      i32.load16_u offset=38
      local.set 239
      i32.const 0
      local.set 240
      local.get 240
      local.get 239
      i32.store16 offset=4504
      local.get 4
      i32.load16_u offset=36
      local.set 241
      i32.const 0
      local.set 242
      local.get 242
      local.get 241
      i32.store16 offset=4506
    end
    return)
  (func $get_xy (type 11) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 2
    i32.const 48
    local.set 3
    local.get 2
    local.get 3
    i32.sub
    local.set 4
    local.get 4
    local.get 0
    i32.store offset=44
    local.get 4
    local.get 1
    i32.store offset=40
    i32.const 0
    local.set 5
    local.get 4
    local.get 5
    i32.store16 offset=38
    i32.const 0
    local.set 6
    local.get 4
    local.get 6
    i32.store16 offset=36
    i32.const 0
    local.set 7
    local.get 4
    local.get 7
    i32.store offset=32
    i32.const 0
    local.set 8
    local.get 4
    local.get 8
    i32.store16 offset=30
    block  ;; label = @1
      loop  ;; label = @2
        local.get 4
        i32.load16_u offset=30
        local.set 9
        i32.const 65535
        local.set 10
        local.get 9
        local.get 10
        i32.and
        local.set 11
        local.get 4
        i32.load offset=40
        local.set 12
        local.get 11
        local.set 13
        local.get 12
        local.set 14
        local.get 13
        local.get 14
        i32.lt_s
        local.set 15
        i32.const 1
        local.set 16
        local.get 15
        local.get 16
        i32.and
        local.set 17
        local.get 17
        i32.eqz
        br_if 1 (;@1;)
        i32.const 0
        local.set 18
        local.get 18
        i32.load offset=4496
        local.set 19
        local.get 4
        i32.load offset=44
        local.set 20
        local.get 4
        i32.load16_u offset=30
        local.set 21
        i32.const 65535
        local.set 22
        local.get 21
        local.get 22
        i32.and
        local.set 23
        i32.const 2
        local.set 24
        local.get 23
        local.get 24
        i32.shl
        local.set 25
        local.get 20
        local.get 25
        i32.add
        local.set 26
        local.get 26
        i32.load
        local.set 27
        i32.const 1
        local.set 28
        local.get 27
        local.get 28
        i32.shl
        local.set 29
        local.get 19
        local.get 29
        i32.add
        local.set 30
        local.get 30
        i32.load16_u
        local.set 31
        local.get 4
        local.get 31
        i32.store16 offset=28
        local.get 4
        i32.load16_u offset=28
        local.set 32
        i32.const 16
        local.set 33
        local.get 32
        local.get 33
        i32.shl
        local.set 34
        local.get 34
        local.get 33
        i32.shr_s
        local.set 35
        local.get 4
        i32.load offset=32
        local.set 36
        local.get 36
        local.get 35
        i32.add
        local.set 37
        local.get 4
        local.get 37
        i32.store offset=32
        local.get 4
        i32.load16_u offset=30
        local.set 38
        i32.const 1
        local.set 39
        local.get 38
        local.get 39
        i32.add
        local.set 40
        local.get 4
        local.get 40
        i32.store16 offset=30
        br 0 (;@2;)
      end
    end
    i32.const 0
    local.set 41
    local.get 4
    local.get 41
    i32.store16 offset=26
    block  ;; label = @1
      loop  ;; label = @2
        local.get 4
        i32.load16_u offset=26
        local.set 42
        i32.const 65535
        local.set 43
        local.get 42
        local.get 43
        i32.and
        local.set 44
        local.get 4
        i32.load offset=40
        local.set 45
        local.get 44
        local.set 46
        local.get 45
        local.set 47
        local.get 46
        local.get 47
        i32.lt_s
        local.set 48
        i32.const 1
        local.set 49
        local.get 48
        local.get 49
        i32.and
        local.set 50
        local.get 50
        i32.eqz
        br_if 1 (;@1;)
        local.get 4
        i32.load offset=44
        local.set 51
        local.get 4
        i32.load16_u offset=26
        local.set 52
        i32.const 65535
        local.set 53
        local.get 52
        local.get 53
        i32.and
        local.set 54
        i32.const 2
        local.set 55
        local.get 54
        local.get 55
        i32.shl
        local.set 56
        local.get 51
        local.get 56
        i32.add
        local.set 57
        local.get 57
        i32.load
        local.set 58
        i32.const 8
        local.set 59
        local.get 58
        local.get 59
        i32.rem_s
        local.set 60
        local.get 4
        local.get 60
        i32.store offset=20
        local.get 4
        i32.load offset=44
        local.set 61
        local.get 4
        i32.load16_u offset=26
        local.set 62
        i32.const 65535
        local.set 63
        local.get 62
        local.get 63
        i32.and
        local.set 64
        i32.const 2
        local.set 65
        local.get 64
        local.get 65
        i32.shl
        local.set 66
        local.get 61
        local.get 66
        i32.add
        local.set 67
        local.get 67
        i32.load
        local.set 68
        i32.const 8
        local.set 69
        local.get 68
        local.get 69
        i32.div_s
        local.set 70
        local.get 4
        local.get 70
        i32.store offset=16
        i32.const 0
        local.set 71
        local.get 71
        i32.load offset=4496
        local.set 72
        local.get 4
        i32.load offset=44
        local.set 73
        local.get 4
        i32.load16_u offset=26
        local.set 74
        i32.const 65535
        local.set 75
        local.get 74
        local.get 75
        i32.and
        local.set 76
        i32.const 2
        local.set 77
        local.get 76
        local.get 77
        i32.shl
        local.set 78
        local.get 73
        local.get 78
        i32.add
        local.set 79
        local.get 79
        i32.load
        local.set 80
        i32.const 1
        local.set 81
        local.get 80
        local.get 81
        i32.shl
        local.set 82
        local.get 72
        local.get 82
        i32.add
        local.set 83
        local.get 83
        i32.load16_u
        local.set 84
        local.get 4
        local.get 84
        i32.store16 offset=14
        local.get 4
        i32.load offset=20
        local.set 85
        i32.const 100
        local.set 86
        local.get 85
        local.get 86
        i32.mul
        local.set 87
        local.get 4
        i32.load16_u offset=14
        local.set 88
        i32.const 16
        local.set 89
        local.get 88
        local.get 89
        i32.shl
        local.set 90
        local.get 90
        local.get 89
        i32.shr_s
        local.set 91
        local.get 87
        local.get 91
        i32.mul
        local.set 92
        local.get 4
        i32.load offset=32
        local.set 93
        local.get 92
        local.get 93
        i32.div_s
        local.set 94
        local.get 4
        i32.load16_u offset=38
        local.set 95
        i32.const 16
        local.set 96
        local.get 95
        local.get 96
        i32.shl
        local.set 97
        local.get 97
        local.get 96
        i32.shr_s
        local.set 98
        local.get 98
        local.get 94
        i32.add
        local.set 99
        local.get 4
        local.get 99
        i32.store16 offset=38
        local.get 4
        i32.load offset=16
        local.set 100
        i32.const 100
        local.set 101
        local.get 100
        local.get 101
        i32.mul
        local.set 102
        local.get 4
        i32.load16_u offset=14
        local.set 103
        i32.const 16
        local.set 104
        local.get 103
        local.get 104
        i32.shl
        local.set 105
        local.get 105
        local.get 104
        i32.shr_s
        local.set 106
        local.get 102
        local.get 106
        i32.mul
        local.set 107
        local.get 4
        i32.load offset=32
        local.set 108
        local.get 107
        local.get 108
        i32.div_s
        local.set 109
        local.get 4
        i32.load16_u offset=36
        local.set 110
        i32.const 16
        local.set 111
        local.get 110
        local.get 111
        i32.shl
        local.set 112
        local.get 112
        local.get 111
        i32.shr_s
        local.set 113
        local.get 113
        local.get 109
        i32.add
        local.set 114
        local.get 4
        local.get 114
        i32.store16 offset=36
        local.get 4
        i32.load16_u offset=26
        local.set 115
        i32.const 1
        local.set 116
        local.get 115
        local.get 116
        i32.add
        local.set 117
        local.get 4
        local.get 117
        i32.store16 offset=26
        br 0 (;@2;)
      end
    end
    local.get 4
    i32.load16_u offset=38
    local.set 118
    i32.const 0
    local.set 119
    local.get 119
    local.get 118
    i32.store16 offset=4504
    local.get 4
    i32.load16_u offset=36
    local.set 120
    i32.const 0
    local.set 121
    local.get 121
    local.get 120
    i32.store16 offset=4506
    return)
  (func $labelPixel (type 14) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 3
    i32.const 32
    local.set 4
    local.get 3
    local.get 4
    i32.sub
    local.set 5
    local.get 5
    local.get 0
    i32.store offset=28
    local.get 5
    local.get 1
    i32.store offset=24
    local.get 5
    local.get 2
    i32.store offset=20
    i32.const 0
    local.set 6
    local.get 5
    local.get 6
    i32.store16 offset=18
    block  ;; label = @1
      loop  ;; label = @2
        local.get 5
        i32.load16_u offset=18
        local.set 7
        i32.const 65535
        local.set 8
        local.get 7
        local.get 8
        i32.and
        local.set 9
        local.get 5
        i32.load offset=24
        local.set 10
        local.get 9
        local.set 11
        local.get 10
        local.set 12
        local.get 11
        local.get 12
        i32.lt_s
        local.set 13
        i32.const 1
        local.set 14
        local.get 13
        local.get 14
        i32.and
        local.set 15
        local.get 15
        i32.eqz
        br_if 1 (;@1;)
        local.get 5
        i32.load offset=28
        local.set 16
        local.get 5
        i32.load16_u offset=18
        local.set 17
        i32.const 65535
        local.set 18
        local.get 17
        local.get 18
        i32.and
        local.set 19
        i32.const 2
        local.set 20
        local.get 19
        local.get 20
        i32.shl
        local.set 21
        local.get 16
        local.get 21
        i32.add
        local.set 22
        local.get 22
        i32.load
        local.set 23
        local.get 5
        local.get 23
        i32.store offset=12
        i32.const 0
        local.set 24
        local.get 24
        i32.load offset=4496
        local.set 25
        local.get 5
        i32.load offset=12
        local.set 26
        i32.const 1
        local.set 27
        local.get 26
        local.get 27
        i32.shl
        local.set 28
        local.get 25
        local.get 28
        i32.add
        local.set 29
        local.get 29
        i32.load16_u
        local.set 30
        i32.const 16
        local.set 31
        local.get 30
        local.get 31
        i32.shl
        local.set 32
        local.get 32
        local.get 31
        i32.shr_s
        local.set 33
        i32.const 0
        local.set 34
        local.get 34
        i32.load16_u offset=4228
        local.set 35
        i32.const 16
        local.set 36
        local.get 35
        local.get 36
        i32.shl
        local.set 37
        local.get 37
        local.get 36
        i32.shr_s
        local.set 38
        local.get 33
        local.set 39
        local.get 38
        local.set 40
        local.get 39
        local.get 40
        i32.gt_s
        local.set 41
        i32.const 1
        local.set 42
        local.get 41
        local.get 42
        i32.and
        local.set 43
        block  ;; label = @3
          block  ;; label = @4
            local.get 43
            i32.eqz
            br_if 0 (;@4;)
            local.get 5
            i32.load offset=20
            local.set 44
            local.get 5
            i32.load offset=12
            local.set 45
            local.get 44
            local.get 45
            i32.add
            local.set 46
            i32.const 4
            local.set 47
            local.get 46
            local.get 47
            i32.store8
            br 1 (;@3;)
          end
          i32.const 0
          local.set 48
          local.get 48
          i32.load offset=4496
          local.set 49
          local.get 5
          i32.load offset=12
          local.set 50
          i32.const 1
          local.set 51
          local.get 50
          local.get 51
          i32.shl
          local.set 52
          local.get 49
          local.get 52
          i32.add
          local.set 53
          local.get 53
          i32.load16_u
          local.set 54
          i32.const 16
          local.set 55
          local.get 54
          local.get 55
          i32.shl
          local.set 56
          local.get 56
          local.get 55
          i32.shr_s
          local.set 57
          i32.const 0
          local.set 58
          local.get 58
          i32.load16_u offset=4224
          local.set 59
          i32.const 16
          local.set 60
          local.get 59
          local.get 60
          i32.shl
          local.set 61
          local.get 61
          local.get 60
          i32.shr_s
          local.set 62
          local.get 57
          local.set 63
          local.get 62
          local.set 64
          local.get 63
          local.get 64
          i32.gt_s
          local.set 65
          i32.const 1
          local.set 66
          local.get 65
          local.get 66
          i32.and
          local.set 67
          block  ;; label = @4
            block  ;; label = @5
              local.get 67
              i32.eqz
              br_if 0 (;@5;)
              local.get 5
              i32.load offset=20
              local.set 68
              local.get 5
              i32.load offset=12
              local.set 69
              local.get 68
              local.get 69
              i32.add
              local.set 70
              i32.const 3
              local.set 71
              local.get 70
              local.get 71
              i32.store8
              br 1 (;@4;)
            end
            i32.const 0
            local.set 72
            local.get 72
            i32.load offset=4496
            local.set 73
            local.get 5
            i32.load offset=12
            local.set 74
            i32.const 1
            local.set 75
            local.get 74
            local.get 75
            i32.shl
            local.set 76
            local.get 73
            local.get 76
            i32.add
            local.set 77
            local.get 77
            i32.load16_u
            local.set 78
            i32.const 16
            local.set 79
            local.get 78
            local.get 79
            i32.shl
            local.set 80
            local.get 80
            local.get 79
            i32.shr_s
            local.set 81
            i32.const 0
            local.set 82
            local.get 82
            i32.load16_u offset=4226
            local.set 83
            i32.const 16
            local.set 84
            local.get 83
            local.get 84
            i32.shl
            local.set 85
            local.get 85
            local.get 84
            i32.shr_s
            local.set 86
            local.get 81
            local.set 87
            local.get 86
            local.set 88
            local.get 87
            local.get 88
            i32.gt_s
            local.set 89
            i32.const 1
            local.set 90
            local.get 89
            local.get 90
            i32.and
            local.set 91
            block  ;; label = @5
              local.get 91
              i32.eqz
              br_if 0 (;@5;)
              local.get 5
              i32.load offset=20
              local.set 92
              local.get 5
              i32.load offset=12
              local.set 93
              local.get 92
              local.get 93
              i32.add
              local.set 94
              i32.const 2
              local.set 95
              local.get 94
              local.get 95
              i32.store8
            end
          end
        end
        local.get 5
        i32.load16_u offset=18
        local.set 96
        i32.const 1
        local.set 97
        local.get 96
        local.get 97
        i32.add
        local.set 98
        local.get 5
        local.get 98
        i32.store16 offset=18
        br 0 (;@2;)
      end
    end
    return)
  (func $rotateColor (type 11) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 2
    i32.const 16
    local.set 3
    local.get 2
    local.get 3
    i32.sub
    local.set 4
    local.get 4
    local.get 0
    i32.store offset=12
    local.get 4
    local.get 1
    i32.store offset=8
    i32.const 0
    local.set 5
    local.get 4
    local.get 5
    i32.store16 offset=6
    block  ;; label = @1
      loop  ;; label = @2
        local.get 4
        i32.load16_u offset=6
        local.set 6
        i32.const 65535
        local.set 7
        local.get 6
        local.get 7
        i32.and
        local.set 8
        i32.const 8
        local.set 9
        local.get 8
        local.set 10
        local.get 9
        local.set 11
        local.get 10
        local.get 11
        i32.lt_s
        local.set 12
        i32.const 1
        local.set 13
        local.get 12
        local.get 13
        i32.and
        local.set 14
        local.get 14
        i32.eqz
        br_if 1 (;@1;)
        i32.const 0
        local.set 15
        local.get 4
        local.get 15
        i32.store16 offset=4
        block  ;; label = @3
          loop  ;; label = @4
            local.get 4
            i32.load16_u offset=4
            local.set 16
            i32.const 65535
            local.set 17
            local.get 16
            local.get 17
            i32.and
            local.set 18
            i32.const 8
            local.set 19
            local.get 18
            local.set 20
            local.get 19
            local.set 21
            local.get 20
            local.get 21
            i32.lt_s
            local.set 22
            i32.const 1
            local.set 23
            local.get 22
            local.get 23
            i32.and
            local.set 24
            local.get 24
            i32.eqz
            br_if 1 (;@3;)
            local.get 4
            i32.load offset=12
            local.set 25
            local.get 4
            i32.load16_u offset=4
            local.set 26
            i32.const 65535
            local.set 27
            local.get 26
            local.get 27
            i32.and
            local.set 28
            i32.const 3
            local.set 29
            local.get 28
            local.get 29
            i32.shl
            local.set 30
            i32.const 7
            local.set 31
            local.get 30
            local.get 31
            i32.add
            local.set 32
            local.get 4
            i32.load16_u offset=6
            local.set 33
            i32.const 65535
            local.set 34
            local.get 33
            local.get 34
            i32.and
            local.set 35
            local.get 32
            local.get 35
            i32.sub
            local.set 36
            local.get 25
            local.get 36
            i32.add
            local.set 37
            local.get 37
            i32.load8_u
            local.set 38
            local.get 4
            i32.load offset=8
            local.set 39
            local.get 4
            i32.load16_u offset=6
            local.set 40
            i32.const 65535
            local.set 41
            local.get 40
            local.get 41
            i32.and
            local.set 42
            i32.const 3
            local.set 43
            local.get 42
            local.get 43
            i32.shl
            local.set 44
            local.get 4
            i32.load16_u offset=4
            local.set 45
            i32.const 65535
            local.set 46
            local.get 45
            local.get 46
            i32.and
            local.set 47
            local.get 44
            local.get 47
            i32.add
            local.set 48
            local.get 39
            local.get 48
            i32.add
            local.set 49
            local.get 49
            local.get 38
            i32.store8
            local.get 4
            i32.load16_u offset=4
            local.set 50
            i32.const 1
            local.set 51
            local.get 50
            local.get 51
            i32.add
            local.set 52
            local.get 4
            local.get 52
            i32.store16 offset=4
            br 0 (;@4;)
          end
        end
        local.get 4
        i32.load16_u offset=6
        local.set 53
        i32.const 1
        local.set 54
        local.get 53
        local.get 54
        i32.add
        local.set 55
        local.get 4
        local.get 55
        i32.store16 offset=6
        br 0 (;@2;)
      end
    end
    return)
  (func $findGroup (type 8) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 1
    i32.const 16
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    local.get 0
    i32.store offset=12
    i32.const 0
    local.set 4
    local.get 3
    local.get 4
    i32.store16 offset=10
    block  ;; label = @1
      loop  ;; label = @2
        local.get 3
        i32.load16_u offset=10
        local.set 5
        i32.const 65535
        local.set 6
        local.get 5
        local.get 6
        i32.and
        local.set 7
        i32.const 32
        local.set 8
        local.get 7
        local.set 9
        local.get 8
        local.set 10
        local.get 9
        local.get 10
        i32.lt_s
        local.set 11
        i32.const 1
        local.set 12
        local.get 11
        local.get 12
        i32.and
        local.set 13
        local.get 13
        i32.eqz
        br_if 1 (;@1;)
        local.get 3
        i32.load offset=12
        local.set 14
        local.get 3
        i32.load16_u offset=10
        local.set 15
        i32.const 65535
        local.set 16
        local.get 15
        local.get 16
        i32.and
        local.set 17
        local.get 14
        local.get 17
        i32.add
        local.set 18
        local.get 18
        i32.load8_u
        local.set 19
        local.get 3
        local.get 19
        i32.store8 offset=9
        local.get 3
        i32.load8_u offset=9
        local.set 20
        i32.const 255
        local.set 21
        local.get 20
        local.get 21
        i32.and
        local.set 22
        i32.const 2
        local.set 23
        local.get 22
        local.set 24
        local.get 23
        local.set 25
        local.get 24
        local.get 25
        i32.eq
        local.set 26
        i32.const 1
        local.set 27
        local.get 26
        local.get 27
        i32.and
        local.set 28
        block  ;; label = @3
          block  ;; label = @4
            local.get 28
            i32.eqz
            br_if 0 (;@4;)
            local.get 3
            i32.load16_u offset=10
            local.set 29
            i32.const 65535
            local.set 30
            local.get 29
            local.get 30
            i32.and
            local.set 31
            i32.const 1
            local.set 32
            local.get 32
            local.get 31
            i32.shl
            local.set 33
            i32.const 0
            local.set 34
            local.get 34
            i32.load offset=4516
            local.set 35
            local.get 35
            local.get 33
            i32.or
            local.set 36
            i32.const 0
            local.set 37
            local.get 37
            local.get 36
            i32.store offset=4516
            br 1 (;@3;)
          end
          local.get 3
          i32.load8_u offset=9
          local.set 38
          i32.const 255
          local.set 39
          local.get 38
          local.get 39
          i32.and
          local.set 40
          i32.const 3
          local.set 41
          local.get 40
          local.set 42
          local.get 41
          local.set 43
          local.get 42
          local.get 43
          i32.eq
          local.set 44
          i32.const 1
          local.set 45
          local.get 44
          local.get 45
          i32.and
          local.set 46
          block  ;; label = @4
            block  ;; label = @5
              local.get 46
              i32.eqz
              br_if 0 (;@5;)
              local.get 3
              i32.load16_u offset=10
              local.set 47
              i32.const 65535
              local.set 48
              local.get 47
              local.get 48
              i32.and
              local.set 49
              i32.const 1
              local.set 50
              local.get 50
              local.get 49
              i32.shl
              local.set 51
              i32.const 0
              local.set 52
              local.get 52
              i32.load offset=4524
              local.set 53
              local.get 53
              local.get 51
              i32.or
              local.set 54
              i32.const 0
              local.set 55
              local.get 55
              local.get 54
              i32.store offset=4524
              br 1 (;@4;)
            end
            local.get 3
            i32.load8_u offset=9
            local.set 56
            i32.const 255
            local.set 57
            local.get 56
            local.get 57
            i32.and
            local.set 58
            i32.const 4
            local.set 59
            local.get 58
            local.set 60
            local.get 59
            local.set 61
            local.get 60
            local.get 61
            i32.eq
            local.set 62
            i32.const 1
            local.set 63
            local.get 62
            local.get 63
            i32.and
            local.set 64
            block  ;; label = @5
              local.get 64
              i32.eqz
              br_if 0 (;@5;)
              local.get 3
              i32.load16_u offset=10
              local.set 65
              i32.const 65535
              local.set 66
              local.get 65
              local.get 66
              i32.and
              local.set 67
              i32.const 1
              local.set 68
              local.get 68
              local.get 67
              i32.shl
              local.set 69
              i32.const 0
              local.set 70
              local.get 70
              i32.load offset=4532
              local.set 71
              local.get 71
              local.get 69
              i32.or
              local.set 72
              i32.const 0
              local.set 73
              local.get 73
              local.get 72
              i32.store offset=4532
            end
          end
        end
        local.get 3
        i32.load offset=12
        local.set 74
        local.get 3
        i32.load16_u offset=10
        local.set 75
        i32.const 65535
        local.set 76
        local.get 75
        local.get 76
        i32.and
        local.set 77
        i32.const 32
        local.set 78
        local.get 77
        local.get 78
        i32.add
        local.set 79
        local.get 74
        local.get 79
        i32.add
        local.set 80
        local.get 80
        i32.load8_u
        local.set 81
        local.get 3
        local.get 81
        i32.store8 offset=9
        local.get 3
        i32.load8_u offset=9
        local.set 82
        i32.const 255
        local.set 83
        local.get 82
        local.get 83
        i32.and
        local.set 84
        i32.const 2
        local.set 85
        local.get 84
        local.set 86
        local.get 85
        local.set 87
        local.get 86
        local.get 87
        i32.eq
        local.set 88
        i32.const 1
        local.set 89
        local.get 88
        local.get 89
        i32.and
        local.set 90
        block  ;; label = @3
          block  ;; label = @4
            local.get 90
            i32.eqz
            br_if 0 (;@4;)
            local.get 3
            i32.load16_u offset=10
            local.set 91
            i32.const 65535
            local.set 92
            local.get 91
            local.get 92
            i32.and
            local.set 93
            i32.const 1
            local.set 94
            local.get 94
            local.get 93
            i32.shl
            local.set 95
            i32.const 0
            local.set 96
            local.get 96
            i32.load offset=4512
            local.set 97
            local.get 97
            local.get 95
            i32.or
            local.set 98
            i32.const 0
            local.set 99
            local.get 99
            local.get 98
            i32.store offset=4512
            br 1 (;@3;)
          end
          local.get 3
          i32.load8_u offset=9
          local.set 100
          i32.const 255
          local.set 101
          local.get 100
          local.get 101
          i32.and
          local.set 102
          i32.const 3
          local.set 103
          local.get 102
          local.set 104
          local.get 103
          local.set 105
          local.get 104
          local.get 105
          i32.eq
          local.set 106
          i32.const 1
          local.set 107
          local.get 106
          local.get 107
          i32.and
          local.set 108
          block  ;; label = @4
            block  ;; label = @5
              local.get 108
              i32.eqz
              br_if 0 (;@5;)
              local.get 3
              i32.load16_u offset=10
              local.set 109
              i32.const 65535
              local.set 110
              local.get 109
              local.get 110
              i32.and
              local.set 111
              i32.const 1
              local.set 112
              local.get 112
              local.get 111
              i32.shl
              local.set 113
              i32.const 0
              local.set 114
              local.get 114
              i32.load offset=4520
              local.set 115
              local.get 115
              local.get 113
              i32.or
              local.set 116
              i32.const 0
              local.set 117
              local.get 117
              local.get 116
              i32.store offset=4520
              br 1 (;@4;)
            end
            local.get 3
            i32.load8_u offset=9
            local.set 118
            i32.const 255
            local.set 119
            local.get 118
            local.get 119
            i32.and
            local.set 120
            i32.const 4
            local.set 121
            local.get 120
            local.set 122
            local.get 121
            local.set 123
            local.get 122
            local.get 123
            i32.eq
            local.set 124
            i32.const 1
            local.set 125
            local.get 124
            local.get 125
            i32.and
            local.set 126
            block  ;; label = @5
              local.get 126
              i32.eqz
              br_if 0 (;@5;)
              local.get 3
              i32.load16_u offset=10
              local.set 127
              i32.const 65535
              local.set 128
              local.get 127
              local.get 128
              i32.and
              local.set 129
              i32.const 1
              local.set 130
              local.get 130
              local.get 129
              i32.shl
              local.set 131
              i32.const 0
              local.set 132
              local.get 132
              i32.load offset=4528
              local.set 133
              local.get 133
              local.get 131
              i32.or
              local.set 134
              i32.const 0
              local.set 135
              local.get 135
              local.get 134
              i32.store offset=4528
            end
          end
        end
        local.get 3
        i32.load16_u offset=10
        local.set 136
        i32.const 1
        local.set 137
        local.get 136
        local.get 137
        i32.add
        local.set 138
        local.get 3
        local.get 138
        i32.store16 offset=10
        br 0 (;@2;)
      end
    end
    return)
  (func $check_neighbor_zscore_weight (type 0) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 1
    i32.const 16
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    global.set $__stack_pointer
    local.get 3
    local.get 0
    i32.store16 offset=12
    local.get 3
    i32.load16_u offset=12
    local.set 4
    i32.const 4544
    local.set 5
    i32.const 65535
    local.set 6
    local.get 4
    local.get 6
    i32.and
    local.set 7
    local.get 7
    local.get 5
    call $get_four_neighbor
    i32.const 0
    local.set 8
    local.get 3
    local.get 8
    i32.store16 offset=10
    block  ;; label = @1
      block  ;; label = @2
        loop  ;; label = @3
          local.get 3
          i32.load16_u offset=10
          local.set 9
          i32.const 65535
          local.set 10
          local.get 9
          local.get 10
          i32.and
          local.set 11
          i32.const 4
          local.set 12
          local.get 11
          local.set 13
          local.get 12
          local.set 14
          local.get 13
          local.get 14
          i32.lt_s
          local.set 15
          i32.const 1
          local.set 16
          local.get 15
          local.get 16
          i32.and
          local.set 17
          local.get 17
          i32.eqz
          br_if 1 (;@2;)
          local.get 3
          i32.load16_u offset=10
          local.set 18
          i32.const 65535
          local.set 19
          local.get 18
          local.get 19
          i32.and
          local.set 20
          i32.const 4544
          local.set 21
          i32.const 1
          local.set 22
          local.get 20
          local.get 22
          i32.shl
          local.set 23
          local.get 21
          local.get 23
          i32.add
          local.set 24
          local.get 24
          i32.load16_u
          local.set 25
          i32.const 16
          local.set 26
          local.get 25
          local.get 26
          i32.shl
          local.set 27
          local.get 27
          local.get 26
          i32.shr_s
          local.set 28
          i32.const -1
          local.set 29
          local.get 28
          local.set 30
          local.get 29
          local.set 31
          local.get 30
          local.get 31
          i32.ne
          local.set 32
          i32.const 1
          local.set 33
          local.get 32
          local.get 33
          i32.and
          local.set 34
          block  ;; label = @4
            local.get 34
            i32.eqz
            br_if 0 (;@4;)
            i32.const 0
            local.set 35
            local.get 35
            i32.load offset=4536
            local.set 36
            local.get 3
            i32.load16_u offset=10
            local.set 37
            i32.const 65535
            local.set 38
            local.get 37
            local.get 38
            i32.and
            local.set 39
            i32.const 4544
            local.set 40
            i32.const 1
            local.set 41
            local.get 39
            local.get 41
            i32.shl
            local.set 42
            local.get 40
            local.get 42
            i32.add
            local.set 43
            local.get 43
            i32.load16_u
            local.set 44
            i32.const 16
            local.set 45
            local.get 44
            local.get 45
            i32.shl
            local.set 46
            local.get 46
            local.get 45
            i32.shr_s
            local.set 47
            local.get 36
            local.get 47
            i32.add
            local.set 48
            local.get 48
            i32.load8_u
            local.set 49
            i32.const 0
            local.set 50
            i32.const 255
            local.set 51
            local.get 49
            local.get 51
            i32.and
            local.set 52
            i32.const 255
            local.set 53
            local.get 50
            local.get 53
            i32.and
            local.set 54
            local.get 52
            local.get 54
            i32.ne
            local.set 55
            i32.const 1
            local.set 56
            local.get 55
            local.get 56
            i32.and
            local.set 57
            block  ;; label = @5
              local.get 57
              i32.eqz
              br_if 0 (;@5;)
              i32.const 1
              local.set 58
              local.get 3
              local.get 58
              i32.store8 offset=15
              br 4 (;@1;)
            end
          end
          local.get 3
          i32.load16_u offset=10
          local.set 59
          i32.const 1
          local.set 60
          local.get 59
          local.get 60
          i32.add
          local.set 61
          local.get 3
          local.get 61
          i32.store16 offset=10
          br 0 (;@3;)
        end
      end
      i32.const 0
      local.set 62
      local.get 3
      local.get 62
      i32.store8 offset=15
    end
    local.get 3
    i32.load8_u offset=15
    local.set 63
    i32.const 255
    local.set 64
    local.get 63
    local.get 64
    i32.and
    local.set 65
    i32.const 16
    local.set 66
    local.get 3
    local.get 66
    i32.add
    local.set 67
    local.get 67
    global.set $__stack_pointer
    local.get 65
    return)
  (func $find_largestSubset (type 15) (param i32 i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 5
    i32.const 32
    local.set 6
    local.get 5
    local.get 6
    i32.sub
    local.set 7
    local.get 7
    global.set $__stack_pointer
    local.get 7
    local.get 0
    i32.store offset=28
    local.get 7
    local.get 1
    i32.store offset=24
    local.get 7
    local.get 2
    i32.store offset=20
    local.get 7
    local.get 3
    i32.store offset=16
    local.get 7
    local.get 4
    i32.store offset=12
    i32.const 0
    local.set 8
    local.get 7
    local.get 8
    i32.store16 offset=10
    block  ;; label = @1
      loop  ;; label = @2
        local.get 7
        i32.load16_u offset=10
        local.set 9
        i32.const 65535
        local.set 10
        local.get 9
        local.get 10
        i32.and
        local.set 11
        i32.const 64
        local.set 12
        local.get 11
        local.set 13
        local.get 12
        local.set 14
        local.get 13
        local.get 14
        i32.lt_s
        local.set 15
        i32.const 1
        local.set 16
        local.get 15
        local.get 16
        i32.and
        local.set 17
        local.get 17
        i32.eqz
        br_if 1 (;@1;)
        local.get 7
        i32.load offset=12
        local.set 18
        local.get 7
        i32.load16_u offset=10
        local.set 19
        i32.const 65535
        local.set 20
        local.get 19
        local.get 20
        i32.and
        local.set 21
        i32.const 2
        local.set 22
        local.get 21
        local.get 22
        i32.shl
        local.set 23
        local.get 18
        local.get 23
        i32.add
        local.set 24
        i32.const 90
        local.set 25
        local.get 24
        local.get 25
        i32.store
        local.get 7
        i32.load16_u offset=10
        local.set 26
        i32.const 1
        local.set 27
        local.get 26
        local.get 27
        i32.add
        local.set 28
        local.get 7
        local.get 28
        i32.store16 offset=10
        br 0 (;@2;)
      end
    end
    i32.const 0
    local.set 29
    local.get 7
    local.get 29
    i32.store offset=4
    i32.const 0
    local.set 30
    local.get 7
    local.get 30
    i32.store
    block  ;; label = @1
      loop  ;; label = @2
        local.get 7
        i32.load offset=28
        local.set 31
        local.get 7
        i32.load offset=24
        local.set 32
        local.get 7
        i32.load offset=12
        local.set 33
        local.get 7
        local.set 34
        local.get 31
        local.get 32
        local.get 33
        local.get 34
        call $get_startIndex
        local.set 35
        i32.const 0
        local.set 36
        i32.const 255
        local.set 37
        local.get 35
        local.get 37
        i32.and
        local.set 38
        i32.const 255
        local.set 39
        local.get 36
        local.get 39
        i32.and
        local.set 40
        local.get 38
        local.get 40
        i32.ne
        local.set 41
        i32.const 1
        local.set 42
        local.get 41
        local.get 42
        i32.and
        local.set 43
        local.get 43
        i32.eqz
        br_if 1 (;@1;)
        local.get 7
        i32.load offset=4
        local.set 44
        local.get 7
        i32.load offset=12
        local.set 45
        local.get 7
        i32.load offset=28
        local.set 46
        local.get 7
        i32.load
        local.set 47
        i32.const 2
        local.set 48
        local.get 47
        local.get 48
        i32.shl
        local.set 49
        local.get 46
        local.get 49
        i32.add
        local.set 50
        local.get 50
        i32.load
        local.set 51
        i32.const 2
        local.set 52
        local.get 51
        local.get 52
        i32.shl
        local.set 53
        local.get 45
        local.get 53
        i32.add
        local.set 54
        local.get 54
        local.get 44
        i32.store
        local.get 7
        i32.load offset=28
        local.set 55
        local.get 7
        i32.load offset=24
        local.set 56
        local.get 7
        i32.load offset=12
        local.set 57
        local.get 7
        i32.load offset=4
        local.set 58
        local.get 55
        local.get 56
        local.get 57
        local.get 58
        call $label_subset
        local.get 7
        i32.load offset=4
        local.set 59
        i32.const 1
        local.set 60
        local.get 59
        local.get 60
        i32.add
        local.set 61
        local.get 7
        local.get 61
        i32.store offset=4
        br 0 (;@2;)
      end
    end
    local.get 7
    i32.load offset=28
    local.set 62
    local.get 7
    i32.load offset=24
    local.set 63
    local.get 7
    i32.load offset=12
    local.set 64
    local.get 7
    i32.load offset=4
    local.set 65
    local.get 7
    i32.load offset=20
    local.set 66
    local.get 7
    i32.load offset=16
    local.set 67
    local.get 62
    local.get 63
    local.get 64
    local.get 65
    local.get 66
    local.get 67
    call $select_largest_subset
    i32.const 32
    local.set 68
    local.get 7
    local.get 68
    i32.add
    local.set 69
    local.get 69
    global.set $__stack_pointer
    return)
  (func $get_four_neighbor (type 11) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 2
    i32.const 16
    local.set 3
    local.get 2
    local.get 3
    i32.sub
    local.set 4
    local.get 4
    local.get 0
    i32.store16 offset=14
    local.get 4
    local.get 1
    i32.store offset=8
    i32.const 0
    local.set 5
    local.get 4
    local.get 5
    i32.store8 offset=7
    block  ;; label = @1
      loop  ;; label = @2
        local.get 4
        i32.load8_u offset=7
        local.set 6
        i32.const 255
        local.set 7
        local.get 6
        local.get 7
        i32.and
        local.set 8
        i32.const 4
        local.set 9
        local.get 8
        local.set 10
        local.get 9
        local.set 11
        local.get 10
        local.get 11
        i32.lt_s
        local.set 12
        i32.const 1
        local.set 13
        local.get 12
        local.get 13
        i32.and
        local.set 14
        local.get 14
        i32.eqz
        br_if 1 (;@1;)
        local.get 4
        i32.load offset=8
        local.set 15
        local.get 4
        i32.load8_u offset=7
        local.set 16
        i32.const 255
        local.set 17
        local.get 16
        local.get 17
        i32.and
        local.set 18
        i32.const 1
        local.set 19
        local.get 18
        local.get 19
        i32.shl
        local.set 20
        local.get 15
        local.get 20
        i32.add
        local.set 21
        i32.const 65535
        local.set 22
        local.get 21
        local.get 22
        i32.store16
        local.get 4
        i32.load8_u offset=7
        local.set 23
        i32.const 1
        local.set 24
        local.get 23
        local.get 24
        i32.add
        local.set 25
        local.get 4
        local.get 25
        i32.store8 offset=7
        br 0 (;@2;)
      end
    end
    local.get 4
    i32.load16_u offset=14
    local.set 26
    i32.const 65535
    local.set 27
    local.get 26
    local.get 27
    i32.and
    local.set 28
    i32.const 8
    local.set 29
    local.get 28
    local.get 29
    i32.div_s
    local.set 30
    block  ;; label = @1
      block  ;; label = @2
        local.get 30
        br_if 0 (;@2;)
        local.get 4
        i32.load16_u offset=14
        local.set 31
        i32.const 65535
        local.set 32
        local.get 31
        local.get 32
        i32.and
        local.set 33
        i32.const 8
        local.set 34
        local.get 33
        local.get 34
        i32.rem_s
        local.set 35
        local.get 35
        br_if 0 (;@2;)
        local.get 4
        i32.load16_u offset=14
        local.set 36
        i32.const 65535
        local.set 37
        local.get 36
        local.get 37
        i32.and
        local.set 38
        i32.const 1
        local.set 39
        local.get 38
        local.get 39
        i32.add
        local.set 40
        local.get 4
        i32.load offset=8
        local.set 41
        local.get 41
        local.get 40
        i32.store16
        local.get 4
        i32.load16_u offset=14
        local.set 42
        i32.const 65535
        local.set 43
        local.get 42
        local.get 43
        i32.and
        local.set 44
        i32.const 8
        local.set 45
        local.get 44
        local.get 45
        i32.add
        local.set 46
        local.get 4
        i32.load offset=8
        local.set 47
        local.get 47
        local.get 46
        i32.store16 offset=2
        br 1 (;@1;)
      end
      local.get 4
      i32.load16_u offset=14
      local.set 48
      i32.const 65535
      local.set 49
      local.get 48
      local.get 49
      i32.and
      local.set 50
      i32.const 8
      local.set 51
      local.get 50
      local.get 51
      i32.div_s
      local.set 52
      block  ;; label = @2
        block  ;; label = @3
          local.get 52
          br_if 0 (;@3;)
          local.get 4
          i32.load16_u offset=14
          local.set 53
          i32.const 65535
          local.set 54
          local.get 53
          local.get 54
          i32.and
          local.set 55
          i32.const 8
          local.set 56
          local.get 55
          local.get 56
          i32.rem_s
          local.set 57
          i32.const 0
          local.set 58
          local.get 57
          local.set 59
          local.get 58
          local.set 60
          local.get 59
          local.get 60
          i32.gt_s
          local.set 61
          i32.const 1
          local.set 62
          local.get 61
          local.get 62
          i32.and
          local.set 63
          local.get 63
          i32.eqz
          br_if 0 (;@3;)
          local.get 4
          i32.load16_u offset=14
          local.set 64
          i32.const 65535
          local.set 65
          local.get 64
          local.get 65
          i32.and
          local.set 66
          i32.const 8
          local.set 67
          local.get 66
          local.get 67
          i32.rem_s
          local.set 68
          i32.const 7
          local.set 69
          local.get 68
          local.set 70
          local.get 69
          local.set 71
          local.get 70
          local.get 71
          i32.lt_s
          local.set 72
          i32.const 1
          local.set 73
          local.get 72
          local.get 73
          i32.and
          local.set 74
          local.get 74
          i32.eqz
          br_if 0 (;@3;)
          local.get 4
          i32.load16_u offset=14
          local.set 75
          i32.const 65535
          local.set 76
          local.get 75
          local.get 76
          i32.and
          local.set 77
          i32.const 1
          local.set 78
          local.get 77
          local.get 78
          i32.sub
          local.set 79
          local.get 4
          i32.load offset=8
          local.set 80
          local.get 80
          local.get 79
          i32.store16
          local.get 4
          i32.load16_u offset=14
          local.set 81
          i32.const 65535
          local.set 82
          local.get 81
          local.get 82
          i32.and
          local.set 83
          i32.const 1
          local.set 84
          local.get 83
          local.get 84
          i32.add
          local.set 85
          local.get 4
          i32.load offset=8
          local.set 86
          local.get 86
          local.get 85
          i32.store16 offset=2
          local.get 4
          i32.load16_u offset=14
          local.set 87
          i32.const 65535
          local.set 88
          local.get 87
          local.get 88
          i32.and
          local.set 89
          i32.const 8
          local.set 90
          local.get 89
          local.get 90
          i32.add
          local.set 91
          local.get 4
          i32.load offset=8
          local.set 92
          local.get 92
          local.get 91
          i32.store16 offset=4
          br 1 (;@2;)
        end
        local.get 4
        i32.load16_u offset=14
        local.set 93
        i32.const 65535
        local.set 94
        local.get 93
        local.get 94
        i32.and
        local.set 95
        i32.const 8
        local.set 96
        local.get 95
        local.get 96
        i32.div_s
        local.set 97
        block  ;; label = @3
          block  ;; label = @4
            local.get 97
            br_if 0 (;@4;)
            local.get 4
            i32.load16_u offset=14
            local.set 98
            i32.const 65535
            local.set 99
            local.get 98
            local.get 99
            i32.and
            local.set 100
            i32.const 8
            local.set 101
            local.get 100
            local.get 101
            i32.rem_s
            local.set 102
            i32.const 7
            local.set 103
            local.get 102
            local.set 104
            local.get 103
            local.set 105
            local.get 104
            local.get 105
            i32.eq
            local.set 106
            i32.const 1
            local.set 107
            local.get 106
            local.get 107
            i32.and
            local.set 108
            local.get 108
            i32.eqz
            br_if 0 (;@4;)
            local.get 4
            i32.load16_u offset=14
            local.set 109
            i32.const 65535
            local.set 110
            local.get 109
            local.get 110
            i32.and
            local.set 111
            i32.const 1
            local.set 112
            local.get 111
            local.get 112
            i32.sub
            local.set 113
            local.get 4
            i32.load offset=8
            local.set 114
            local.get 114
            local.get 113
            i32.store16
            local.get 4
            i32.load16_u offset=14
            local.set 115
            i32.const 65535
            local.set 116
            local.get 115
            local.get 116
            i32.and
            local.set 117
            i32.const 8
            local.set 118
            local.get 117
            local.get 118
            i32.add
            local.set 119
            local.get 4
            i32.load offset=8
            local.set 120
            local.get 120
            local.get 119
            i32.store16 offset=2
            br 1 (;@3;)
          end
          local.get 4
          i32.load16_u offset=14
          local.set 121
          i32.const 65535
          local.set 122
          local.get 121
          local.get 122
          i32.and
          local.set 123
          i32.const 8
          local.set 124
          local.get 123
          local.get 124
          i32.div_s
          local.set 125
          i32.const 0
          local.set 126
          local.get 125
          local.set 127
          local.get 126
          local.set 128
          local.get 127
          local.get 128
          i32.gt_s
          local.set 129
          i32.const 1
          local.set 130
          local.get 129
          local.get 130
          i32.and
          local.set 131
          block  ;; label = @4
            block  ;; label = @5
              local.get 131
              i32.eqz
              br_if 0 (;@5;)
              local.get 4
              i32.load16_u offset=14
              local.set 132
              i32.const 65535
              local.set 133
              local.get 132
              local.get 133
              i32.and
              local.set 134
              i32.const 8
              local.set 135
              local.get 134
              local.get 135
              i32.div_s
              local.set 136
              i32.const 7
              local.set 137
              local.get 136
              local.set 138
              local.get 137
              local.set 139
              local.get 138
              local.get 139
              i32.lt_s
              local.set 140
              i32.const 1
              local.set 141
              local.get 140
              local.get 141
              i32.and
              local.set 142
              local.get 142
              i32.eqz
              br_if 0 (;@5;)
              local.get 4
              i32.load16_u offset=14
              local.set 143
              i32.const 65535
              local.set 144
              local.get 143
              local.get 144
              i32.and
              local.set 145
              i32.const 8
              local.set 146
              local.get 145
              local.get 146
              i32.rem_s
              local.set 147
              local.get 147
              br_if 0 (;@5;)
              local.get 4
              i32.load16_u offset=14
              local.set 148
              i32.const 65535
              local.set 149
              local.get 148
              local.get 149
              i32.and
              local.set 150
              i32.const 8
              local.set 151
              local.get 150
              local.get 151
              i32.sub
              local.set 152
              local.get 4
              i32.load offset=8
              local.set 153
              local.get 153
              local.get 152
              i32.store16
              local.get 4
              i32.load16_u offset=14
              local.set 154
              i32.const 65535
              local.set 155
              local.get 154
              local.get 155
              i32.and
              local.set 156
              i32.const 1
              local.set 157
              local.get 156
              local.get 157
              i32.add
              local.set 158
              local.get 4
              i32.load offset=8
              local.set 159
              local.get 159
              local.get 158
              i32.store16 offset=2
              local.get 4
              i32.load16_u offset=14
              local.set 160
              i32.const 65535
              local.set 161
              local.get 160
              local.get 161
              i32.and
              local.set 162
              i32.const 8
              local.set 163
              local.get 162
              local.get 163
              i32.add
              local.set 164
              local.get 4
              i32.load offset=8
              local.set 165
              local.get 165
              local.get 164
              i32.store16 offset=4
              br 1 (;@4;)
            end
            local.get 4
            i32.load16_u offset=14
            local.set 166
            i32.const 65535
            local.set 167
            local.get 166
            local.get 167
            i32.and
            local.set 168
            i32.const 8
            local.set 169
            local.get 168
            local.get 169
            i32.div_s
            local.set 170
            i32.const 0
            local.set 171
            local.get 170
            local.set 172
            local.get 171
            local.set 173
            local.get 172
            local.get 173
            i32.gt_s
            local.set 174
            i32.const 1
            local.set 175
            local.get 174
            local.get 175
            i32.and
            local.set 176
            block  ;; label = @5
              block  ;; label = @6
                local.get 176
                i32.eqz
                br_if 0 (;@6;)
                local.get 4
                i32.load16_u offset=14
                local.set 177
                i32.const 65535
                local.set 178
                local.get 177
                local.get 178
                i32.and
                local.set 179
                i32.const 8
                local.set 180
                local.get 179
                local.get 180
                i32.div_s
                local.set 181
                i32.const 7
                local.set 182
                local.get 181
                local.set 183
                local.get 182
                local.set 184
                local.get 183
                local.get 184
                i32.lt_s
                local.set 185
                i32.const 1
                local.set 186
                local.get 185
                local.get 186
                i32.and
                local.set 187
                local.get 187
                i32.eqz
                br_if 0 (;@6;)
                local.get 4
                i32.load16_u offset=14
                local.set 188
                i32.const 65535
                local.set 189
                local.get 188
                local.get 189
                i32.and
                local.set 190
                i32.const 8
                local.set 191
                local.get 190
                local.get 191
                i32.rem_s
                local.set 192
                i32.const 0
                local.set 193
                local.get 192
                local.set 194
                local.get 193
                local.set 195
                local.get 194
                local.get 195
                i32.gt_s
                local.set 196
                i32.const 1
                local.set 197
                local.get 196
                local.get 197
                i32.and
                local.set 198
                local.get 198
                i32.eqz
                br_if 0 (;@6;)
                local.get 4
                i32.load16_u offset=14
                local.set 199
                i32.const 65535
                local.set 200
                local.get 199
                local.get 200
                i32.and
                local.set 201
                i32.const 8
                local.set 202
                local.get 201
                local.get 202
                i32.rem_s
                local.set 203
                i32.const 7
                local.set 204
                local.get 203
                local.set 205
                local.get 204
                local.set 206
                local.get 205
                local.get 206
                i32.lt_s
                local.set 207
                i32.const 1
                local.set 208
                local.get 207
                local.get 208
                i32.and
                local.set 209
                local.get 209
                i32.eqz
                br_if 0 (;@6;)
                local.get 4
                i32.load16_u offset=14
                local.set 210
                i32.const 65535
                local.set 211
                local.get 210
                local.get 211
                i32.and
                local.set 212
                i32.const 8
                local.set 213
                local.get 212
                local.get 213
                i32.sub
                local.set 214
                local.get 4
                i32.load offset=8
                local.set 215
                local.get 215
                local.get 214
                i32.store16
                local.get 4
                i32.load16_u offset=14
                local.set 216
                i32.const 65535
                local.set 217
                local.get 216
                local.get 217
                i32.and
                local.set 218
                i32.const 1
                local.set 219
                local.get 218
                local.get 219
                i32.sub
                local.set 220
                local.get 4
                i32.load offset=8
                local.set 221
                local.get 221
                local.get 220
                i32.store16 offset=2
                local.get 4
                i32.load16_u offset=14
                local.set 222
                i32.const 65535
                local.set 223
                local.get 222
                local.get 223
                i32.and
                local.set 224
                i32.const 1
                local.set 225
                local.get 224
                local.get 225
                i32.add
                local.set 226
                local.get 4
                i32.load offset=8
                local.set 227
                local.get 227
                local.get 226
                i32.store16 offset=4
                local.get 4
                i32.load16_u offset=14
                local.set 228
                i32.const 65535
                local.set 229
                local.get 228
                local.get 229
                i32.and
                local.set 230
                i32.const 8
                local.set 231
                local.get 230
                local.get 231
                i32.add
                local.set 232
                local.get 4
                i32.load offset=8
                local.set 233
                local.get 233
                local.get 232
                i32.store16 offset=6
                br 1 (;@5;)
              end
              local.get 4
              i32.load16_u offset=14
              local.set 234
              i32.const 65535
              local.set 235
              local.get 234
              local.get 235
              i32.and
              local.set 236
              i32.const 8
              local.set 237
              local.get 236
              local.get 237
              i32.div_s
              local.set 238
              i32.const 0
              local.set 239
              local.get 238
              local.set 240
              local.get 239
              local.set 241
              local.get 240
              local.get 241
              i32.gt_s
              local.set 242
              i32.const 1
              local.set 243
              local.get 242
              local.get 243
              i32.and
              local.set 244
              block  ;; label = @6
                block  ;; label = @7
                  local.get 244
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 4
                  i32.load16_u offset=14
                  local.set 245
                  i32.const 65535
                  local.set 246
                  local.get 245
                  local.get 246
                  i32.and
                  local.set 247
                  i32.const 8
                  local.set 248
                  local.get 247
                  local.get 248
                  i32.div_s
                  local.set 249
                  i32.const 7
                  local.set 250
                  local.get 249
                  local.set 251
                  local.get 250
                  local.set 252
                  local.get 251
                  local.get 252
                  i32.lt_s
                  local.set 253
                  i32.const 1
                  local.set 254
                  local.get 253
                  local.get 254
                  i32.and
                  local.set 255
                  local.get 255
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 4
                  i32.load16_u offset=14
                  local.set 256
                  i32.const 65535
                  local.set 257
                  local.get 256
                  local.get 257
                  i32.and
                  local.set 258
                  i32.const 8
                  local.set 259
                  local.get 258
                  local.get 259
                  i32.rem_s
                  local.set 260
                  i32.const 7
                  local.set 261
                  local.get 260
                  local.set 262
                  local.get 261
                  local.set 263
                  local.get 262
                  local.get 263
                  i32.eq
                  local.set 264
                  i32.const 1
                  local.set 265
                  local.get 264
                  local.get 265
                  i32.and
                  local.set 266
                  local.get 266
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 4
                  i32.load16_u offset=14
                  local.set 267
                  i32.const 65535
                  local.set 268
                  local.get 267
                  local.get 268
                  i32.and
                  local.set 269
                  i32.const 8
                  local.set 270
                  local.get 269
                  local.get 270
                  i32.sub
                  local.set 271
                  local.get 4
                  i32.load offset=8
                  local.set 272
                  local.get 272
                  local.get 271
                  i32.store16
                  local.get 4
                  i32.load16_u offset=14
                  local.set 273
                  i32.const 65535
                  local.set 274
                  local.get 273
                  local.get 274
                  i32.and
                  local.set 275
                  i32.const 1
                  local.set 276
                  local.get 275
                  local.get 276
                  i32.sub
                  local.set 277
                  local.get 4
                  i32.load offset=8
                  local.set 278
                  local.get 278
                  local.get 277
                  i32.store16 offset=2
                  local.get 4
                  i32.load16_u offset=14
                  local.set 279
                  i32.const 65535
                  local.set 280
                  local.get 279
                  local.get 280
                  i32.and
                  local.set 281
                  i32.const 8
                  local.set 282
                  local.get 281
                  local.get 282
                  i32.add
                  local.set 283
                  local.get 4
                  i32.load offset=8
                  local.set 284
                  local.get 284
                  local.get 283
                  i32.store16 offset=4
                  br 1 (;@6;)
                end
                local.get 4
                i32.load16_u offset=14
                local.set 285
                i32.const 65535
                local.set 286
                local.get 285
                local.get 286
                i32.and
                local.set 287
                i32.const 8
                local.set 288
                local.get 287
                local.get 288
                i32.div_s
                local.set 289
                i32.const 7
                local.set 290
                local.get 289
                local.set 291
                local.get 290
                local.set 292
                local.get 291
                local.get 292
                i32.eq
                local.set 293
                i32.const 1
                local.set 294
                local.get 293
                local.get 294
                i32.and
                local.set 295
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 295
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 4
                    i32.load16_u offset=14
                    local.set 296
                    i32.const 65535
                    local.set 297
                    local.get 296
                    local.get 297
                    i32.and
                    local.set 298
                    i32.const 8
                    local.set 299
                    local.get 298
                    local.get 299
                    i32.rem_s
                    local.set 300
                    local.get 300
                    br_if 0 (;@8;)
                    local.get 4
                    i32.load16_u offset=14
                    local.set 301
                    i32.const 65535
                    local.set 302
                    local.get 301
                    local.get 302
                    i32.and
                    local.set 303
                    i32.const 8
                    local.set 304
                    local.get 303
                    local.get 304
                    i32.sub
                    local.set 305
                    local.get 4
                    i32.load offset=8
                    local.set 306
                    local.get 306
                    local.get 305
                    i32.store16
                    local.get 4
                    i32.load16_u offset=14
                    local.set 307
                    i32.const 65535
                    local.set 308
                    local.get 307
                    local.get 308
                    i32.and
                    local.set 309
                    i32.const 1
                    local.set 310
                    local.get 309
                    local.get 310
                    i32.add
                    local.set 311
                    local.get 4
                    i32.load offset=8
                    local.set 312
                    local.get 312
                    local.get 311
                    i32.store16 offset=2
                    br 1 (;@7;)
                  end
                  local.get 4
                  i32.load16_u offset=14
                  local.set 313
                  i32.const 65535
                  local.set 314
                  local.get 313
                  local.get 314
                  i32.and
                  local.set 315
                  i32.const 8
                  local.set 316
                  local.get 315
                  local.get 316
                  i32.div_s
                  local.set 317
                  i32.const 7
                  local.set 318
                  local.get 317
                  local.set 319
                  local.get 318
                  local.set 320
                  local.get 319
                  local.get 320
                  i32.eq
                  local.set 321
                  i32.const 1
                  local.set 322
                  local.get 321
                  local.get 322
                  i32.and
                  local.set 323
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 323
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 4
                      i32.load16_u offset=14
                      local.set 324
                      i32.const 65535
                      local.set 325
                      local.get 324
                      local.get 325
                      i32.and
                      local.set 326
                      i32.const 8
                      local.set 327
                      local.get 326
                      local.get 327
                      i32.rem_s
                      local.set 328
                      i32.const 0
                      local.set 329
                      local.get 328
                      local.set 330
                      local.get 329
                      local.set 331
                      local.get 330
                      local.get 331
                      i32.gt_s
                      local.set 332
                      i32.const 1
                      local.set 333
                      local.get 332
                      local.get 333
                      i32.and
                      local.set 334
                      local.get 334
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 4
                      i32.load16_u offset=14
                      local.set 335
                      i32.const 65535
                      local.set 336
                      local.get 335
                      local.get 336
                      i32.and
                      local.set 337
                      i32.const 8
                      local.set 338
                      local.get 337
                      local.get 338
                      i32.rem_s
                      local.set 339
                      i32.const 7
                      local.set 340
                      local.get 339
                      local.set 341
                      local.get 340
                      local.set 342
                      local.get 341
                      local.get 342
                      i32.lt_s
                      local.set 343
                      i32.const 1
                      local.set 344
                      local.get 343
                      local.get 344
                      i32.and
                      local.set 345
                      local.get 345
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 4
                      i32.load16_u offset=14
                      local.set 346
                      i32.const 65535
                      local.set 347
                      local.get 346
                      local.get 347
                      i32.and
                      local.set 348
                      i32.const 8
                      local.set 349
                      local.get 348
                      local.get 349
                      i32.sub
                      local.set 350
                      local.get 4
                      i32.load offset=8
                      local.set 351
                      local.get 351
                      local.get 350
                      i32.store16
                      local.get 4
                      i32.load16_u offset=14
                      local.set 352
                      i32.const 65535
                      local.set 353
                      local.get 352
                      local.get 353
                      i32.and
                      local.set 354
                      i32.const 1
                      local.set 355
                      local.get 354
                      local.get 355
                      i32.sub
                      local.set 356
                      local.get 4
                      i32.load offset=8
                      local.set 357
                      local.get 357
                      local.get 356
                      i32.store16 offset=2
                      local.get 4
                      i32.load16_u offset=14
                      local.set 358
                      i32.const 65535
                      local.set 359
                      local.get 358
                      local.get 359
                      i32.and
                      local.set 360
                      i32.const 1
                      local.set 361
                      local.get 360
                      local.get 361
                      i32.add
                      local.set 362
                      local.get 4
                      i32.load offset=8
                      local.set 363
                      local.get 363
                      local.get 362
                      i32.store16 offset=4
                      br 1 (;@8;)
                    end
                    local.get 4
                    i32.load16_u offset=14
                    local.set 364
                    i32.const 65535
                    local.set 365
                    local.get 364
                    local.get 365
                    i32.and
                    local.set 366
                    i32.const 8
                    local.set 367
                    local.get 366
                    local.get 367
                    i32.div_s
                    local.set 368
                    i32.const 7
                    local.set 369
                    local.get 368
                    local.set 370
                    local.get 369
                    local.set 371
                    local.get 370
                    local.get 371
                    i32.eq
                    local.set 372
                    i32.const 1
                    local.set 373
                    local.get 372
                    local.get 373
                    i32.and
                    local.set 374
                    block  ;; label = @9
                      local.get 374
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 4
                      i32.load16_u offset=14
                      local.set 375
                      i32.const 65535
                      local.set 376
                      local.get 375
                      local.get 376
                      i32.and
                      local.set 377
                      i32.const 8
                      local.set 378
                      local.get 377
                      local.get 378
                      i32.rem_s
                      local.set 379
                      i32.const 7
                      local.set 380
                      local.get 379
                      local.set 381
                      local.get 380
                      local.set 382
                      local.get 381
                      local.get 382
                      i32.eq
                      local.set 383
                      i32.const 1
                      local.set 384
                      local.get 383
                      local.get 384
                      i32.and
                      local.set 385
                      local.get 385
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 4
                      i32.load16_u offset=14
                      local.set 386
                      i32.const 65535
                      local.set 387
                      local.get 386
                      local.get 387
                      i32.and
                      local.set 388
                      i32.const 8
                      local.set 389
                      local.get 388
                      local.get 389
                      i32.sub
                      local.set 390
                      local.get 4
                      i32.load offset=8
                      local.set 391
                      local.get 391
                      local.get 390
                      i32.store16
                      local.get 4
                      i32.load16_u offset=14
                      local.set 392
                      i32.const 65535
                      local.set 393
                      local.get 392
                      local.get 393
                      i32.and
                      local.set 394
                      i32.const 1
                      local.set 395
                      local.get 394
                      local.get 395
                      i32.sub
                      local.set 396
                      local.get 4
                      i32.load offset=8
                      local.set 397
                      local.get 397
                      local.get 396
                      i32.store16 offset=2
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
    return)
  (func $get_startIndex (type 5) (param i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 4
    i32.const 32
    local.set 5
    local.get 4
    local.get 5
    i32.sub
    local.set 6
    local.get 6
    local.get 0
    i32.store offset=24
    local.get 6
    local.get 1
    i32.store offset=20
    local.get 6
    local.get 2
    i32.store offset=16
    local.get 6
    local.get 3
    i32.store offset=12
    i32.const 0
    local.set 7
    local.get 6
    local.get 7
    i32.store16 offset=10
    block  ;; label = @1
      block  ;; label = @2
        loop  ;; label = @3
          local.get 6
          i32.load16_u offset=10
          local.set 8
          i32.const 65535
          local.set 9
          local.get 8
          local.get 9
          i32.and
          local.set 10
          local.get 6
          i32.load offset=20
          local.set 11
          local.get 10
          local.set 12
          local.get 11
          local.set 13
          local.get 12
          local.get 13
          i32.lt_s
          local.set 14
          i32.const 1
          local.set 15
          local.get 14
          local.get 15
          i32.and
          local.set 16
          local.get 16
          i32.eqz
          br_if 1 (;@2;)
          local.get 6
          i32.load offset=16
          local.set 17
          local.get 6
          i32.load offset=24
          local.set 18
          local.get 6
          i32.load16_u offset=10
          local.set 19
          i32.const 65535
          local.set 20
          local.get 19
          local.get 20
          i32.and
          local.set 21
          i32.const 2
          local.set 22
          local.get 21
          local.get 22
          i32.shl
          local.set 23
          local.get 18
          local.get 23
          i32.add
          local.set 24
          local.get 24
          i32.load
          local.set 25
          i32.const 2
          local.set 26
          local.get 25
          local.get 26
          i32.shl
          local.set 27
          local.get 17
          local.get 27
          i32.add
          local.set 28
          local.get 28
          i32.load
          local.set 29
          i32.const 90
          local.set 30
          local.get 29
          local.set 31
          local.get 30
          local.set 32
          local.get 31
          local.get 32
          i32.eq
          local.set 33
          i32.const 1
          local.set 34
          local.get 33
          local.get 34
          i32.and
          local.set 35
          block  ;; label = @4
            local.get 35
            i32.eqz
            br_if 0 (;@4;)
            local.get 6
            i32.load16_u offset=10
            local.set 36
            i32.const 65535
            local.set 37
            local.get 36
            local.get 37
            i32.and
            local.set 38
            local.get 6
            i32.load offset=12
            local.set 39
            local.get 39
            local.get 38
            i32.store
            i32.const 1
            local.set 40
            local.get 6
            local.get 40
            i32.store8 offset=31
            br 3 (;@1;)
          end
          local.get 6
          i32.load16_u offset=10
          local.set 41
          i32.const 1
          local.set 42
          local.get 41
          local.get 42
          i32.add
          local.set 43
          local.get 6
          local.get 43
          i32.store16 offset=10
          br 0 (;@3;)
        end
      end
      i32.const 0
      local.set 44
      local.get 6
      local.get 44
      i32.store8 offset=31
    end
    local.get 6
    i32.load8_u offset=31
    local.set 45
    i32.const 255
    local.set 46
    local.get 45
    local.get 46
    i32.and
    local.set 47
    local.get 47
    return)
  (func $label_subset (type 13) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 4
    i32.const 32
    local.set 5
    local.get 4
    local.get 5
    i32.sub
    local.set 6
    local.get 6
    global.set $__stack_pointer
    local.get 6
    local.get 0
    i32.store offset=28
    local.get 6
    local.get 1
    i32.store offset=24
    local.get 6
    local.get 2
    i32.store offset=20
    local.get 6
    local.get 3
    i32.store offset=16
    block  ;; label = @1
      loop  ;; label = @2
        local.get 6
        i32.load offset=20
        local.set 7
        local.get 6
        i32.load offset=16
        local.set 8
        local.get 7
        local.get 8
        call $label_neighbor
        local.set 9
        i32.const 0
        local.set 10
        i32.const 255
        local.set 11
        local.get 9
        local.get 11
        i32.and
        local.set 12
        i32.const 255
        local.set 13
        local.get 10
        local.get 13
        i32.and
        local.set 14
        local.get 12
        local.get 14
        i32.ne
        local.set 15
        i32.const 1
        local.set 16
        local.get 15
        local.get 16
        i32.and
        local.set 17
        local.get 17
        i32.eqz
        br_if 1 (;@1;)
        i32.const 0
        local.set 18
        local.get 6
        local.get 18
        i32.store16 offset=14
        block  ;; label = @3
          loop  ;; label = @4
            local.get 6
            i32.load16_u offset=14
            local.set 19
            i32.const 65535
            local.set 20
            local.get 19
            local.get 20
            i32.and
            local.set 21
            local.get 6
            i32.load offset=24
            local.set 22
            local.get 21
            local.set 23
            local.get 22
            local.set 24
            local.get 23
            local.get 24
            i32.lt_s
            local.set 25
            i32.const 1
            local.set 26
            local.get 25
            local.get 26
            i32.and
            local.set 27
            local.get 27
            i32.eqz
            br_if 1 (;@3;)
            local.get 6
            i32.load offset=20
            local.set 28
            local.get 6
            i32.load offset=28
            local.set 29
            local.get 6
            i32.load16_u offset=14
            local.set 30
            i32.const 65535
            local.set 31
            local.get 30
            local.get 31
            i32.and
            local.set 32
            i32.const 2
            local.set 33
            local.get 32
            local.get 33
            i32.shl
            local.set 34
            local.get 29
            local.get 34
            i32.add
            local.set 35
            local.get 35
            i32.load
            local.set 36
            i32.const 2
            local.set 37
            local.get 36
            local.get 37
            i32.shl
            local.set 38
            local.get 28
            local.get 38
            i32.add
            local.set 39
            local.get 39
            i32.load
            local.set 40
            i32.const 92
            local.set 41
            local.get 40
            local.set 42
            local.get 41
            local.set 43
            local.get 42
            local.get 43
            i32.eq
            local.set 44
            i32.const 1
            local.set 45
            local.get 44
            local.get 45
            i32.and
            local.set 46
            block  ;; label = @5
              local.get 46
              i32.eqz
              br_if 0 (;@5;)
              local.get 6
              i32.load offset=16
              local.set 47
              local.get 6
              i32.load offset=20
              local.set 48
              local.get 6
              i32.load offset=28
              local.set 49
              local.get 6
              i32.load16_u offset=14
              local.set 50
              i32.const 65535
              local.set 51
              local.get 50
              local.get 51
              i32.and
              local.set 52
              i32.const 2
              local.set 53
              local.get 52
              local.get 53
              i32.shl
              local.set 54
              local.get 49
              local.get 54
              i32.add
              local.set 55
              local.get 55
              i32.load
              local.set 56
              i32.const 2
              local.set 57
              local.get 56
              local.get 57
              i32.shl
              local.set 58
              local.get 48
              local.get 58
              i32.add
              local.set 59
              local.get 59
              local.get 47
              i32.store
            end
            local.get 6
            i32.load16_u offset=14
            local.set 60
            i32.const 1
            local.set 61
            local.get 60
            local.get 61
            i32.add
            local.set 62
            local.get 6
            local.get 62
            i32.store16 offset=14
            br 0 (;@4;)
          end
        end
        i32.const 0
        local.set 63
        local.get 6
        local.get 63
        i32.store16 offset=12
        block  ;; label = @3
          loop  ;; label = @4
            local.get 6
            i32.load16_u offset=12
            local.set 64
            i32.const 65535
            local.set 65
            local.get 64
            local.get 65
            i32.and
            local.set 66
            i32.const 64
            local.set 67
            local.get 66
            local.set 68
            local.get 67
            local.set 69
            local.get 68
            local.get 69
            i32.lt_s
            local.set 70
            i32.const 1
            local.set 71
            local.get 70
            local.get 71
            i32.and
            local.set 72
            local.get 72
            i32.eqz
            br_if 1 (;@3;)
            local.get 6
            i32.load offset=20
            local.set 73
            local.get 6
            i32.load16_u offset=12
            local.set 74
            i32.const 65535
            local.set 75
            local.get 74
            local.get 75
            i32.and
            local.set 76
            i32.const 2
            local.set 77
            local.get 76
            local.get 77
            i32.shl
            local.set 78
            local.get 73
            local.get 78
            i32.add
            local.set 79
            local.get 79
            i32.load
            local.set 80
            i32.const 92
            local.set 81
            local.get 80
            local.set 82
            local.get 81
            local.set 83
            local.get 82
            local.get 83
            i32.eq
            local.set 84
            i32.const 1
            local.set 85
            local.get 84
            local.get 85
            i32.and
            local.set 86
            block  ;; label = @5
              local.get 86
              i32.eqz
              br_if 0 (;@5;)
              local.get 6
              i32.load offset=20
              local.set 87
              local.get 6
              i32.load16_u offset=12
              local.set 88
              i32.const 65535
              local.set 89
              local.get 88
              local.get 89
              i32.and
              local.set 90
              i32.const 2
              local.set 91
              local.get 90
              local.get 91
              i32.shl
              local.set 92
              local.get 87
              local.get 92
              i32.add
              local.set 93
              i32.const 91
              local.set 94
              local.get 93
              local.get 94
              i32.store
            end
            local.get 6
            i32.load16_u offset=12
            local.set 95
            i32.const 1
            local.set 96
            local.get 95
            local.get 96
            i32.add
            local.set 97
            local.get 6
            local.get 97
            i32.store16 offset=12
            br 0 (;@4;)
          end
        end
        br 0 (;@2;)
      end
    end
    i32.const 32
    local.set 98
    local.get 6
    local.get 98
    i32.add
    local.set 99
    local.get 99
    global.set $__stack_pointer
    return)
  (func $select_largest_subset (type 12) (param i32 i32 i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 6
    i32.const 48
    local.set 7
    local.get 6
    local.get 7
    i32.sub
    local.set 8
    local.get 8
    local.get 0
    i32.store offset=44
    local.get 8
    local.get 1
    i32.store offset=40
    local.get 8
    local.get 2
    i32.store offset=36
    local.get 8
    local.get 3
    i32.store offset=32
    local.get 8
    local.get 4
    i32.store offset=28
    local.get 8
    local.get 5
    i32.store offset=24
    i32.const 0
    local.set 9
    local.get 8
    local.get 9
    i32.store offset=20
    i32.const 0
    local.set 10
    local.get 8
    local.get 10
    i32.store16 offset=18
    block  ;; label = @1
      loop  ;; label = @2
        local.get 8
        i32.load16_u offset=18
        local.set 11
        i32.const 65535
        local.set 12
        local.get 11
        local.get 12
        i32.and
        local.set 13
        local.get 8
        i32.load offset=32
        local.set 14
        local.get 13
        local.set 15
        local.get 14
        local.set 16
        local.get 15
        local.get 16
        i32.lt_s
        local.set 17
        i32.const 1
        local.set 18
        local.get 17
        local.get 18
        i32.and
        local.set 19
        local.get 19
        i32.eqz
        br_if 1 (;@1;)
        i32.const 0
        local.set 20
        local.get 8
        local.get 20
        i32.store16 offset=16
        i32.const 0
        local.set 21
        local.get 8
        local.get 21
        i32.store16 offset=14
        block  ;; label = @3
          loop  ;; label = @4
            local.get 8
            i32.load16_u offset=14
            local.set 22
            i32.const 65535
            local.set 23
            local.get 22
            local.get 23
            i32.and
            local.set 24
            local.get 8
            i32.load offset=40
            local.set 25
            local.get 24
            local.set 26
            local.get 25
            local.set 27
            local.get 26
            local.get 27
            i32.lt_s
            local.set 28
            i32.const 1
            local.set 29
            local.get 28
            local.get 29
            i32.and
            local.set 30
            local.get 30
            i32.eqz
            br_if 1 (;@3;)
            local.get 8
            i32.load offset=36
            local.set 31
            local.get 8
            i32.load offset=44
            local.set 32
            local.get 8
            i32.load16_u offset=14
            local.set 33
            i32.const 65535
            local.set 34
            local.get 33
            local.get 34
            i32.and
            local.set 35
            i32.const 2
            local.set 36
            local.get 35
            local.get 36
            i32.shl
            local.set 37
            local.get 32
            local.get 37
            i32.add
            local.set 38
            local.get 38
            i32.load
            local.set 39
            i32.const 2
            local.set 40
            local.get 39
            local.get 40
            i32.shl
            local.set 41
            local.get 31
            local.get 41
            i32.add
            local.set 42
            local.get 42
            i32.load
            local.set 43
            local.get 8
            i32.load16_u offset=18
            local.set 44
            i32.const 65535
            local.set 45
            local.get 44
            local.get 45
            i32.and
            local.set 46
            local.get 43
            local.set 47
            local.get 46
            local.set 48
            local.get 47
            local.get 48
            i32.eq
            local.set 49
            i32.const 1
            local.set 50
            local.get 49
            local.get 50
            i32.and
            local.set 51
            block  ;; label = @5
              local.get 51
              i32.eqz
              br_if 0 (;@5;)
              local.get 8
              i32.load16_u offset=16
              local.set 52
              i32.const 1
              local.set 53
              local.get 52
              local.get 53
              i32.add
              local.set 54
              local.get 8
              local.get 54
              i32.store16 offset=16
            end
            local.get 8
            i32.load16_u offset=14
            local.set 55
            i32.const 1
            local.set 56
            local.get 55
            local.get 56
            i32.add
            local.set 57
            local.get 8
            local.get 57
            i32.store16 offset=14
            br 0 (;@4;)
          end
        end
        local.get 8
        i32.load16_u offset=16
        local.set 58
        i32.const 16
        local.set 59
        local.get 58
        local.get 59
        i32.shl
        local.set 60
        local.get 60
        local.get 59
        i32.shr_s
        local.set 61
        local.get 8
        i32.load offset=28
        local.set 62
        local.get 62
        i32.load16_u
        local.set 63
        i32.const 16
        local.set 64
        local.get 63
        local.get 64
        i32.shl
        local.set 65
        local.get 65
        local.get 64
        i32.shr_s
        local.set 66
        local.get 61
        local.set 67
        local.get 66
        local.set 68
        local.get 67
        local.get 68
        i32.gt_s
        local.set 69
        i32.const 1
        local.set 70
        local.get 69
        local.get 70
        i32.and
        local.set 71
        block  ;; label = @3
          local.get 71
          i32.eqz
          br_if 0 (;@3;)
          local.get 8
          i32.load16_u offset=16
          local.set 72
          local.get 8
          i32.load offset=28
          local.set 73
          local.get 73
          local.get 72
          i32.store16
          local.get 8
          i32.load16_u offset=18
          local.set 74
          i32.const 65535
          local.set 75
          local.get 74
          local.get 75
          i32.and
          local.set 76
          local.get 8
          local.get 76
          i32.store offset=20
        end
        local.get 8
        i32.load16_u offset=18
        local.set 77
        i32.const 1
        local.set 78
        local.get 77
        local.get 78
        i32.add
        local.set 79
        local.get 8
        local.get 79
        i32.store16 offset=18
        br 0 (;@2;)
      end
    end
    i32.const 0
    local.set 80
    local.get 8
    local.get 80
    i32.store16 offset=12
    i32.const 0
    local.set 81
    local.get 8
    local.get 81
    i32.store16 offset=10
    block  ;; label = @1
      loop  ;; label = @2
        local.get 8
        i32.load16_u offset=10
        local.set 82
        i32.const 65535
        local.set 83
        local.get 82
        local.get 83
        i32.and
        local.set 84
        i32.const 64
        local.set 85
        local.get 84
        local.set 86
        local.get 85
        local.set 87
        local.get 86
        local.get 87
        i32.lt_s
        local.set 88
        i32.const 1
        local.set 89
        local.get 88
        local.get 89
        i32.and
        local.set 90
        local.get 90
        i32.eqz
        br_if 1 (;@1;)
        local.get 8
        i32.load offset=36
        local.set 91
        local.get 8
        i32.load16_u offset=10
        local.set 92
        i32.const 65535
        local.set 93
        local.get 92
        local.get 93
        i32.and
        local.set 94
        i32.const 2
        local.set 95
        local.get 94
        local.get 95
        i32.shl
        local.set 96
        local.get 91
        local.get 96
        i32.add
        local.set 97
        local.get 97
        i32.load
        local.set 98
        local.get 8
        i32.load offset=20
        local.set 99
        local.get 98
        local.set 100
        local.get 99
        local.set 101
        local.get 100
        local.get 101
        i32.eq
        local.set 102
        i32.const 1
        local.set 103
        local.get 102
        local.get 103
        i32.and
        local.set 104
        block  ;; label = @3
          local.get 104
          i32.eqz
          br_if 0 (;@3;)
          local.get 8
          i32.load16_u offset=10
          local.set 105
          local.get 8
          i32.load offset=24
          local.set 106
          local.get 8
          i32.load16_s offset=12
          local.set 107
          i32.const 2
          local.set 108
          local.get 107
          local.get 108
          i32.shl
          local.set 109
          local.get 106
          local.get 109
          i32.add
          local.set 110
          local.get 110
          local.get 105
          i32.store
          local.get 8
          i32.load16_u offset=12
          local.set 111
          i32.const 1
          local.set 112
          local.get 111
          local.get 112
          i32.add
          local.set 113
          local.get 8
          local.get 113
          i32.store16 offset=12
        end
        local.get 8
        i32.load16_u offset=10
        local.set 114
        i32.const 1
        local.set 115
        local.get 114
        local.get 115
        i32.add
        local.set 116
        local.get 8
        local.get 116
        i32.store16 offset=10
        br 0 (;@2;)
      end
    end
    return)
  (func $label_neighbor (type 3) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 2
    i32.const 16
    local.set 3
    local.get 2
    local.get 3
    i32.sub
    local.set 4
    local.get 4
    global.set $__stack_pointer
    local.get 4
    local.get 0
    i32.store offset=12
    local.get 4
    local.get 1
    i32.store offset=8
    i32.const 0
    local.set 5
    local.get 4
    local.get 5
    i32.store8 offset=7
    i32.const 0
    local.set 6
    local.get 4
    local.get 6
    i32.store16 offset=4
    block  ;; label = @1
      loop  ;; label = @2
        local.get 4
        i32.load16_u offset=4
        local.set 7
        i32.const 65535
        local.set 8
        local.get 7
        local.get 8
        i32.and
        local.set 9
        i32.const 64
        local.set 10
        local.get 9
        local.set 11
        local.get 10
        local.set 12
        local.get 11
        local.get 12
        i32.lt_s
        local.set 13
        i32.const 1
        local.set 14
        local.get 13
        local.get 14
        i32.and
        local.set 15
        local.get 15
        i32.eqz
        br_if 1 (;@1;)
        local.get 4
        i32.load offset=12
        local.set 16
        local.get 4
        i32.load16_u offset=4
        local.set 17
        i32.const 65535
        local.set 18
        local.get 17
        local.get 18
        i32.and
        local.set 19
        i32.const 2
        local.set 20
        local.get 19
        local.get 20
        i32.shl
        local.set 21
        local.get 16
        local.get 21
        i32.add
        local.set 22
        local.get 22
        i32.load
        local.set 23
        local.get 4
        i32.load offset=8
        local.set 24
        local.get 23
        local.set 25
        local.get 24
        local.set 26
        local.get 25
        local.get 26
        i32.eq
        local.set 27
        i32.const 1
        local.set 28
        local.get 27
        local.get 28
        i32.and
        local.set 29
        block  ;; label = @3
          local.get 29
          i32.eqz
          br_if 0 (;@3;)
          local.get 4
          i32.load16_u offset=4
          local.set 30
          i32.const 4544
          local.set 31
          i32.const 65535
          local.set 32
          local.get 30
          local.get 32
          i32.and
          local.set 33
          local.get 33
          local.get 31
          call $get_eight_neighbor
          i32.const 0
          local.set 34
          local.get 4
          local.get 34
          i32.store16 offset=2
          block  ;; label = @4
            loop  ;; label = @5
              local.get 4
              i32.load16_u offset=2
              local.set 35
              i32.const 65535
              local.set 36
              local.get 35
              local.get 36
              i32.and
              local.set 37
              i32.const 8
              local.set 38
              local.get 37
              local.set 39
              local.get 38
              local.set 40
              local.get 39
              local.get 40
              i32.lt_s
              local.set 41
              i32.const 1
              local.set 42
              local.get 41
              local.get 42
              i32.and
              local.set 43
              local.get 43
              i32.eqz
              br_if 1 (;@4;)
              local.get 4
              i32.load16_u offset=2
              local.set 44
              i32.const 65535
              local.set 45
              local.get 44
              local.get 45
              i32.and
              local.set 46
              i32.const 4544
              local.set 47
              i32.const 1
              local.set 48
              local.get 46
              local.get 48
              i32.shl
              local.set 49
              local.get 47
              local.get 49
              i32.add
              local.set 50
              local.get 50
              i32.load16_u
              local.set 51
              i32.const 16
              local.set 52
              local.get 51
              local.get 52
              i32.shl
              local.set 53
              local.get 53
              local.get 52
              i32.shr_s
              local.set 54
              i32.const -1
              local.set 55
              local.get 54
              local.set 56
              local.get 55
              local.set 57
              local.get 56
              local.get 57
              i32.ne
              local.set 58
              i32.const 1
              local.set 59
              local.get 58
              local.get 59
              i32.and
              local.set 60
              block  ;; label = @6
                local.get 60
                i32.eqz
                br_if 0 (;@6;)
                local.get 4
                i32.load offset=12
                local.set 61
                local.get 4
                i32.load16_u offset=2
                local.set 62
                i32.const 65535
                local.set 63
                local.get 62
                local.get 63
                i32.and
                local.set 64
                i32.const 4544
                local.set 65
                i32.const 1
                local.set 66
                local.get 64
                local.get 66
                i32.shl
                local.set 67
                local.get 65
                local.get 67
                i32.add
                local.set 68
                local.get 68
                i32.load16_u
                local.set 69
                i32.const 16
                local.set 70
                local.get 69
                local.get 70
                i32.shl
                local.set 71
                local.get 71
                local.get 70
                i32.shr_s
                local.set 72
                i32.const 2
                local.set 73
                local.get 72
                local.get 73
                i32.shl
                local.set 74
                local.get 61
                local.get 74
                i32.add
                local.set 75
                local.get 75
                i32.load
                local.set 76
                i32.const 90
                local.set 77
                local.get 76
                local.set 78
                local.get 77
                local.set 79
                local.get 78
                local.get 79
                i32.eq
                local.set 80
                i32.const 1
                local.set 81
                local.get 80
                local.get 81
                i32.and
                local.set 82
                local.get 82
                i32.eqz
                br_if 0 (;@6;)
                local.get 4
                i32.load offset=12
                local.set 83
                local.get 4
                i32.load16_u offset=2
                local.set 84
                i32.const 65535
                local.set 85
                local.get 84
                local.get 85
                i32.and
                local.set 86
                i32.const 4544
                local.set 87
                i32.const 1
                local.set 88
                local.get 86
                local.get 88
                i32.shl
                local.set 89
                local.get 87
                local.get 89
                i32.add
                local.set 90
                local.get 90
                i32.load16_u
                local.set 91
                i32.const 16
                local.set 92
                local.get 91
                local.get 92
                i32.shl
                local.set 93
                local.get 93
                local.get 92
                i32.shr_s
                local.set 94
                i32.const 2
                local.set 95
                local.get 94
                local.get 95
                i32.shl
                local.set 96
                local.get 83
                local.get 96
                i32.add
                local.set 97
                i32.const 92
                local.set 98
                local.get 97
                local.get 98
                i32.store
                i32.const 1
                local.set 99
                local.get 4
                local.get 99
                i32.store8 offset=7
              end
              local.get 4
              i32.load16_u offset=2
              local.set 100
              i32.const 1
              local.set 101
              local.get 100
              local.get 101
              i32.add
              local.set 102
              local.get 4
              local.get 102
              i32.store16 offset=2
              br 0 (;@5;)
            end
          end
        end
        local.get 4
        i32.load16_u offset=4
        local.set 103
        i32.const 1
        local.set 104
        local.get 103
        local.get 104
        i32.add
        local.set 105
        local.get 4
        local.get 105
        i32.store16 offset=4
        br 0 (;@2;)
      end
    end
    local.get 4
    i32.load8_u offset=7
    local.set 106
    i32.const 255
    local.set 107
    local.get 106
    local.get 107
    i32.and
    local.set 108
    i32.const 16
    local.set 109
    local.get 4
    local.get 109
    i32.add
    local.set 110
    local.get 110
    global.set $__stack_pointer
    local.get 108
    return)
  (func $get_eight_neighbor (type 11) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 2
    i32.const 16
    local.set 3
    local.get 2
    local.get 3
    i32.sub
    local.set 4
    local.get 4
    local.get 0
    i32.store16 offset=14
    local.get 4
    local.get 1
    i32.store offset=8
    i32.const 0
    local.set 5
    local.get 4
    local.get 5
    i32.store8 offset=7
    block  ;; label = @1
      loop  ;; label = @2
        local.get 4
        i32.load8_u offset=7
        local.set 6
        i32.const 255
        local.set 7
        local.get 6
        local.get 7
        i32.and
        local.set 8
        i32.const 8
        local.set 9
        local.get 8
        local.set 10
        local.get 9
        local.set 11
        local.get 10
        local.get 11
        i32.lt_s
        local.set 12
        i32.const 1
        local.set 13
        local.get 12
        local.get 13
        i32.and
        local.set 14
        local.get 14
        i32.eqz
        br_if 1 (;@1;)
        local.get 4
        i32.load offset=8
        local.set 15
        local.get 4
        i32.load8_u offset=7
        local.set 16
        i32.const 255
        local.set 17
        local.get 16
        local.get 17
        i32.and
        local.set 18
        i32.const 1
        local.set 19
        local.get 18
        local.get 19
        i32.shl
        local.set 20
        local.get 15
        local.get 20
        i32.add
        local.set 21
        i32.const 65535
        local.set 22
        local.get 21
        local.get 22
        i32.store16
        local.get 4
        i32.load8_u offset=7
        local.set 23
        i32.const 1
        local.set 24
        local.get 23
        local.get 24
        i32.add
        local.set 25
        local.get 4
        local.get 25
        i32.store8 offset=7
        br 0 (;@2;)
      end
    end
    local.get 4
    i32.load16_u offset=14
    local.set 26
    i32.const 65535
    local.set 27
    local.get 26
    local.get 27
    i32.and
    local.set 28
    i32.const 8
    local.set 29
    local.get 28
    local.get 29
    i32.div_s
    local.set 30
    block  ;; label = @1
      block  ;; label = @2
        local.get 30
        br_if 0 (;@2;)
        local.get 4
        i32.load16_u offset=14
        local.set 31
        i32.const 65535
        local.set 32
        local.get 31
        local.get 32
        i32.and
        local.set 33
        i32.const 8
        local.set 34
        local.get 33
        local.get 34
        i32.rem_s
        local.set 35
        local.get 35
        br_if 0 (;@2;)
        local.get 4
        i32.load16_u offset=14
        local.set 36
        i32.const 65535
        local.set 37
        local.get 36
        local.get 37
        i32.and
        local.set 38
        i32.const 1
        local.set 39
        local.get 38
        local.get 39
        i32.add
        local.set 40
        local.get 4
        i32.load offset=8
        local.set 41
        local.get 41
        local.get 40
        i32.store16
        local.get 4
        i32.load16_u offset=14
        local.set 42
        i32.const 65535
        local.set 43
        local.get 42
        local.get 43
        i32.and
        local.set 44
        i32.const 8
        local.set 45
        local.get 44
        local.get 45
        i32.add
        local.set 46
        local.get 4
        i32.load offset=8
        local.set 47
        local.get 47
        local.get 46
        i32.store16 offset=2
        local.get 4
        i32.load16_u offset=14
        local.set 48
        i32.const 65535
        local.set 49
        local.get 48
        local.get 49
        i32.and
        local.set 50
        i32.const 8
        local.set 51
        local.get 50
        local.get 51
        i32.add
        local.set 52
        i32.const 1
        local.set 53
        local.get 52
        local.get 53
        i32.add
        local.set 54
        local.get 4
        i32.load offset=8
        local.set 55
        local.get 55
        local.get 54
        i32.store16 offset=4
        br 1 (;@1;)
      end
      local.get 4
      i32.load16_u offset=14
      local.set 56
      i32.const 65535
      local.set 57
      local.get 56
      local.get 57
      i32.and
      local.set 58
      i32.const 8
      local.set 59
      local.get 58
      local.get 59
      i32.div_s
      local.set 60
      block  ;; label = @2
        block  ;; label = @3
          local.get 60
          br_if 0 (;@3;)
          local.get 4
          i32.load16_u offset=14
          local.set 61
          i32.const 65535
          local.set 62
          local.get 61
          local.get 62
          i32.and
          local.set 63
          i32.const 8
          local.set 64
          local.get 63
          local.get 64
          i32.rem_s
          local.set 65
          i32.const 0
          local.set 66
          local.get 65
          local.set 67
          local.get 66
          local.set 68
          local.get 67
          local.get 68
          i32.gt_s
          local.set 69
          i32.const 1
          local.set 70
          local.get 69
          local.get 70
          i32.and
          local.set 71
          local.get 71
          i32.eqz
          br_if 0 (;@3;)
          local.get 4
          i32.load16_u offset=14
          local.set 72
          i32.const 65535
          local.set 73
          local.get 72
          local.get 73
          i32.and
          local.set 74
          i32.const 8
          local.set 75
          local.get 74
          local.get 75
          i32.rem_s
          local.set 76
          i32.const 7
          local.set 77
          local.get 76
          local.set 78
          local.get 77
          local.set 79
          local.get 78
          local.get 79
          i32.lt_s
          local.set 80
          i32.const 1
          local.set 81
          local.get 80
          local.get 81
          i32.and
          local.set 82
          local.get 82
          i32.eqz
          br_if 0 (;@3;)
          local.get 4
          i32.load16_u offset=14
          local.set 83
          i32.const 65535
          local.set 84
          local.get 83
          local.get 84
          i32.and
          local.set 85
          i32.const 1
          local.set 86
          local.get 85
          local.get 86
          i32.sub
          local.set 87
          local.get 4
          i32.load offset=8
          local.set 88
          local.get 88
          local.get 87
          i32.store16
          local.get 4
          i32.load16_u offset=14
          local.set 89
          i32.const 65535
          local.set 90
          local.get 89
          local.get 90
          i32.and
          local.set 91
          i32.const 1
          local.set 92
          local.get 91
          local.get 92
          i32.add
          local.set 93
          local.get 4
          i32.load offset=8
          local.set 94
          local.get 94
          local.get 93
          i32.store16 offset=2
          local.get 4
          i32.load16_u offset=14
          local.set 95
          i32.const 65535
          local.set 96
          local.get 95
          local.get 96
          i32.and
          local.set 97
          i32.const 8
          local.set 98
          local.get 97
          local.get 98
          i32.add
          local.set 99
          i32.const 1
          local.set 100
          local.get 99
          local.get 100
          i32.sub
          local.set 101
          local.get 4
          i32.load offset=8
          local.set 102
          local.get 102
          local.get 101
          i32.store16 offset=4
          local.get 4
          i32.load16_u offset=14
          local.set 103
          i32.const 65535
          local.set 104
          local.get 103
          local.get 104
          i32.and
          local.set 105
          i32.const 8
          local.set 106
          local.get 105
          local.get 106
          i32.add
          local.set 107
          local.get 4
          i32.load offset=8
          local.set 108
          local.get 108
          local.get 107
          i32.store16 offset=6
          local.get 4
          i32.load16_u offset=14
          local.set 109
          i32.const 65535
          local.set 110
          local.get 109
          local.get 110
          i32.and
          local.set 111
          i32.const 8
          local.set 112
          local.get 111
          local.get 112
          i32.add
          local.set 113
          i32.const 1
          local.set 114
          local.get 113
          local.get 114
          i32.add
          local.set 115
          local.get 4
          i32.load offset=8
          local.set 116
          local.get 116
          local.get 115
          i32.store16 offset=8
          br 1 (;@2;)
        end
        local.get 4
        i32.load16_u offset=14
        local.set 117
        i32.const 65535
        local.set 118
        local.get 117
        local.get 118
        i32.and
        local.set 119
        i32.const 8
        local.set 120
        local.get 119
        local.get 120
        i32.div_s
        local.set 121
        block  ;; label = @3
          block  ;; label = @4
            local.get 121
            br_if 0 (;@4;)
            local.get 4
            i32.load16_u offset=14
            local.set 122
            i32.const 65535
            local.set 123
            local.get 122
            local.get 123
            i32.and
            local.set 124
            i32.const 8
            local.set 125
            local.get 124
            local.get 125
            i32.rem_s
            local.set 126
            i32.const 7
            local.set 127
            local.get 126
            local.set 128
            local.get 127
            local.set 129
            local.get 128
            local.get 129
            i32.eq
            local.set 130
            i32.const 1
            local.set 131
            local.get 130
            local.get 131
            i32.and
            local.set 132
            local.get 132
            i32.eqz
            br_if 0 (;@4;)
            local.get 4
            i32.load16_u offset=14
            local.set 133
            i32.const 65535
            local.set 134
            local.get 133
            local.get 134
            i32.and
            local.set 135
            i32.const 1
            local.set 136
            local.get 135
            local.get 136
            i32.sub
            local.set 137
            local.get 4
            i32.load offset=8
            local.set 138
            local.get 138
            local.get 137
            i32.store16
            local.get 4
            i32.load16_u offset=14
            local.set 139
            i32.const 65535
            local.set 140
            local.get 139
            local.get 140
            i32.and
            local.set 141
            i32.const 8
            local.set 142
            local.get 141
            local.get 142
            i32.add
            local.set 143
            i32.const 1
            local.set 144
            local.get 143
            local.get 144
            i32.sub
            local.set 145
            local.get 4
            i32.load offset=8
            local.set 146
            local.get 146
            local.get 145
            i32.store16 offset=2
            local.get 4
            i32.load16_u offset=14
            local.set 147
            i32.const 65535
            local.set 148
            local.get 147
            local.get 148
            i32.and
            local.set 149
            i32.const 8
            local.set 150
            local.get 149
            local.get 150
            i32.add
            local.set 151
            local.get 4
            i32.load offset=8
            local.set 152
            local.get 152
            local.get 151
            i32.store16 offset=4
            br 1 (;@3;)
          end
          local.get 4
          i32.load16_u offset=14
          local.set 153
          i32.const 65535
          local.set 154
          local.get 153
          local.get 154
          i32.and
          local.set 155
          i32.const 8
          local.set 156
          local.get 155
          local.get 156
          i32.div_s
          local.set 157
          i32.const 0
          local.set 158
          local.get 157
          local.set 159
          local.get 158
          local.set 160
          local.get 159
          local.get 160
          i32.gt_s
          local.set 161
          i32.const 1
          local.set 162
          local.get 161
          local.get 162
          i32.and
          local.set 163
          block  ;; label = @4
            block  ;; label = @5
              local.get 163
              i32.eqz
              br_if 0 (;@5;)
              local.get 4
              i32.load16_u offset=14
              local.set 164
              i32.const 65535
              local.set 165
              local.get 164
              local.get 165
              i32.and
              local.set 166
              i32.const 8
              local.set 167
              local.get 166
              local.get 167
              i32.div_s
              local.set 168
              i32.const 7
              local.set 169
              local.get 168
              local.set 170
              local.get 169
              local.set 171
              local.get 170
              local.get 171
              i32.lt_s
              local.set 172
              i32.const 1
              local.set 173
              local.get 172
              local.get 173
              i32.and
              local.set 174
              local.get 174
              i32.eqz
              br_if 0 (;@5;)
              local.get 4
              i32.load16_u offset=14
              local.set 175
              i32.const 65535
              local.set 176
              local.get 175
              local.get 176
              i32.and
              local.set 177
              i32.const 8
              local.set 178
              local.get 177
              local.get 178
              i32.rem_s
              local.set 179
              local.get 179
              br_if 0 (;@5;)
              local.get 4
              i32.load16_u offset=14
              local.set 180
              i32.const 65535
              local.set 181
              local.get 180
              local.get 181
              i32.and
              local.set 182
              i32.const 8
              local.set 183
              local.get 182
              local.get 183
              i32.sub
              local.set 184
              local.get 4
              i32.load offset=8
              local.set 185
              local.get 185
              local.get 184
              i32.store16
              local.get 4
              i32.load16_u offset=14
              local.set 186
              i32.const 65535
              local.set 187
              local.get 186
              local.get 187
              i32.and
              local.set 188
              i32.const 8
              local.set 189
              local.get 188
              local.get 189
              i32.sub
              local.set 190
              i32.const 1
              local.set 191
              local.get 190
              local.get 191
              i32.add
              local.set 192
              local.get 4
              i32.load offset=8
              local.set 193
              local.get 193
              local.get 192
              i32.store16 offset=2
              local.get 4
              i32.load16_u offset=14
              local.set 194
              i32.const 65535
              local.set 195
              local.get 194
              local.get 195
              i32.and
              local.set 196
              i32.const 1
              local.set 197
              local.get 196
              local.get 197
              i32.add
              local.set 198
              local.get 4
              i32.load offset=8
              local.set 199
              local.get 199
              local.get 198
              i32.store16 offset=4
              local.get 4
              i32.load16_u offset=14
              local.set 200
              i32.const 65535
              local.set 201
              local.get 200
              local.get 201
              i32.and
              local.set 202
              i32.const 8
              local.set 203
              local.get 202
              local.get 203
              i32.add
              local.set 204
              local.get 4
              i32.load offset=8
              local.set 205
              local.get 205
              local.get 204
              i32.store16 offset=6
              local.get 4
              i32.load16_u offset=14
              local.set 206
              i32.const 65535
              local.set 207
              local.get 206
              local.get 207
              i32.and
              local.set 208
              i32.const 8
              local.set 209
              local.get 208
              local.get 209
              i32.add
              local.set 210
              i32.const 1
              local.set 211
              local.get 210
              local.get 211
              i32.add
              local.set 212
              local.get 4
              i32.load offset=8
              local.set 213
              local.get 213
              local.get 212
              i32.store16 offset=8
              br 1 (;@4;)
            end
            local.get 4
            i32.load16_u offset=14
            local.set 214
            i32.const 65535
            local.set 215
            local.get 214
            local.get 215
            i32.and
            local.set 216
            i32.const 8
            local.set 217
            local.get 216
            local.get 217
            i32.div_s
            local.set 218
            i32.const 0
            local.set 219
            local.get 218
            local.set 220
            local.get 219
            local.set 221
            local.get 220
            local.get 221
            i32.gt_s
            local.set 222
            i32.const 1
            local.set 223
            local.get 222
            local.get 223
            i32.and
            local.set 224
            block  ;; label = @5
              block  ;; label = @6
                local.get 224
                i32.eqz
                br_if 0 (;@6;)
                local.get 4
                i32.load16_u offset=14
                local.set 225
                i32.const 65535
                local.set 226
                local.get 225
                local.get 226
                i32.and
                local.set 227
                i32.const 8
                local.set 228
                local.get 227
                local.get 228
                i32.div_s
                local.set 229
                i32.const 7
                local.set 230
                local.get 229
                local.set 231
                local.get 230
                local.set 232
                local.get 231
                local.get 232
                i32.lt_s
                local.set 233
                i32.const 1
                local.set 234
                local.get 233
                local.get 234
                i32.and
                local.set 235
                local.get 235
                i32.eqz
                br_if 0 (;@6;)
                local.get 4
                i32.load16_u offset=14
                local.set 236
                i32.const 65535
                local.set 237
                local.get 236
                local.get 237
                i32.and
                local.set 238
                i32.const 8
                local.set 239
                local.get 238
                local.get 239
                i32.rem_s
                local.set 240
                i32.const 0
                local.set 241
                local.get 240
                local.set 242
                local.get 241
                local.set 243
                local.get 242
                local.get 243
                i32.gt_s
                local.set 244
                i32.const 1
                local.set 245
                local.get 244
                local.get 245
                i32.and
                local.set 246
                local.get 246
                i32.eqz
                br_if 0 (;@6;)
                local.get 4
                i32.load16_u offset=14
                local.set 247
                i32.const 65535
                local.set 248
                local.get 247
                local.get 248
                i32.and
                local.set 249
                i32.const 8
                local.set 250
                local.get 249
                local.get 250
                i32.rem_s
                local.set 251
                i32.const 7
                local.set 252
                local.get 251
                local.set 253
                local.get 252
                local.set 254
                local.get 253
                local.get 254
                i32.lt_s
                local.set 255
                i32.const 1
                local.set 256
                local.get 255
                local.get 256
                i32.and
                local.set 257
                local.get 257
                i32.eqz
                br_if 0 (;@6;)
                local.get 4
                i32.load16_u offset=14
                local.set 258
                i32.const 65535
                local.set 259
                local.get 258
                local.get 259
                i32.and
                local.set 260
                i32.const 8
                local.set 261
                local.get 260
                local.get 261
                i32.sub
                local.set 262
                i32.const 1
                local.set 263
                local.get 262
                local.get 263
                i32.sub
                local.set 264
                local.get 4
                i32.load offset=8
                local.set 265
                local.get 265
                local.get 264
                i32.store16
                local.get 4
                i32.load16_u offset=14
                local.set 266
                i32.const 65535
                local.set 267
                local.get 266
                local.get 267
                i32.and
                local.set 268
                i32.const 8
                local.set 269
                local.get 268
                local.get 269
                i32.sub
                local.set 270
                local.get 4
                i32.load offset=8
                local.set 271
                local.get 271
                local.get 270
                i32.store16 offset=2
                local.get 4
                i32.load16_u offset=14
                local.set 272
                i32.const 65535
                local.set 273
                local.get 272
                local.get 273
                i32.and
                local.set 274
                i32.const 8
                local.set 275
                local.get 274
                local.get 275
                i32.sub
                local.set 276
                i32.const 1
                local.set 277
                local.get 276
                local.get 277
                i32.add
                local.set 278
                local.get 4
                i32.load offset=8
                local.set 279
                local.get 279
                local.get 278
                i32.store16 offset=4
                local.get 4
                i32.load16_u offset=14
                local.set 280
                i32.const 65535
                local.set 281
                local.get 280
                local.get 281
                i32.and
                local.set 282
                i32.const 1
                local.set 283
                local.get 282
                local.get 283
                i32.sub
                local.set 284
                local.get 4
                i32.load offset=8
                local.set 285
                local.get 285
                local.get 284
                i32.store16 offset=6
                local.get 4
                i32.load16_u offset=14
                local.set 286
                i32.const 65535
                local.set 287
                local.get 286
                local.get 287
                i32.and
                local.set 288
                i32.const 1
                local.set 289
                local.get 288
                local.get 289
                i32.add
                local.set 290
                local.get 4
                i32.load offset=8
                local.set 291
                local.get 291
                local.get 290
                i32.store16 offset=8
                local.get 4
                i32.load16_u offset=14
                local.set 292
                i32.const 65535
                local.set 293
                local.get 292
                local.get 293
                i32.and
                local.set 294
                i32.const 8
                local.set 295
                local.get 294
                local.get 295
                i32.add
                local.set 296
                i32.const 1
                local.set 297
                local.get 296
                local.get 297
                i32.sub
                local.set 298
                local.get 4
                i32.load offset=8
                local.set 299
                local.get 299
                local.get 298
                i32.store16 offset=10
                local.get 4
                i32.load16_u offset=14
                local.set 300
                i32.const 65535
                local.set 301
                local.get 300
                local.get 301
                i32.and
                local.set 302
                i32.const 8
                local.set 303
                local.get 302
                local.get 303
                i32.add
                local.set 304
                local.get 4
                i32.load offset=8
                local.set 305
                local.get 305
                local.get 304
                i32.store16 offset=12
                local.get 4
                i32.load16_u offset=14
                local.set 306
                i32.const 65535
                local.set 307
                local.get 306
                local.get 307
                i32.and
                local.set 308
                i32.const 8
                local.set 309
                local.get 308
                local.get 309
                i32.add
                local.set 310
                i32.const 1
                local.set 311
                local.get 310
                local.get 311
                i32.add
                local.set 312
                local.get 4
                i32.load offset=8
                local.set 313
                local.get 313
                local.get 312
                i32.store16 offset=14
                br 1 (;@5;)
              end
              local.get 4
              i32.load16_u offset=14
              local.set 314
              i32.const 65535
              local.set 315
              local.get 314
              local.get 315
              i32.and
              local.set 316
              i32.const 8
              local.set 317
              local.get 316
              local.get 317
              i32.div_s
              local.set 318
              i32.const 0
              local.set 319
              local.get 318
              local.set 320
              local.get 319
              local.set 321
              local.get 320
              local.get 321
              i32.gt_s
              local.set 322
              i32.const 1
              local.set 323
              local.get 322
              local.get 323
              i32.and
              local.set 324
              block  ;; label = @6
                block  ;; label = @7
                  local.get 324
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 4
                  i32.load16_u offset=14
                  local.set 325
                  i32.const 65535
                  local.set 326
                  local.get 325
                  local.get 326
                  i32.and
                  local.set 327
                  i32.const 8
                  local.set 328
                  local.get 327
                  local.get 328
                  i32.div_s
                  local.set 329
                  i32.const 7
                  local.set 330
                  local.get 329
                  local.set 331
                  local.get 330
                  local.set 332
                  local.get 331
                  local.get 332
                  i32.lt_s
                  local.set 333
                  i32.const 1
                  local.set 334
                  local.get 333
                  local.get 334
                  i32.and
                  local.set 335
                  local.get 335
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 4
                  i32.load16_u offset=14
                  local.set 336
                  i32.const 65535
                  local.set 337
                  local.get 336
                  local.get 337
                  i32.and
                  local.set 338
                  i32.const 8
                  local.set 339
                  local.get 338
                  local.get 339
                  i32.rem_s
                  local.set 340
                  i32.const 7
                  local.set 341
                  local.get 340
                  local.set 342
                  local.get 341
                  local.set 343
                  local.get 342
                  local.get 343
                  i32.eq
                  local.set 344
                  i32.const 1
                  local.set 345
                  local.get 344
                  local.get 345
                  i32.and
                  local.set 346
                  local.get 346
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 4
                  i32.load16_u offset=14
                  local.set 347
                  i32.const 65535
                  local.set 348
                  local.get 347
                  local.get 348
                  i32.and
                  local.set 349
                  i32.const 8
                  local.set 350
                  local.get 349
                  local.get 350
                  i32.sub
                  local.set 351
                  i32.const 1
                  local.set 352
                  local.get 351
                  local.get 352
                  i32.sub
                  local.set 353
                  local.get 4
                  i32.load offset=8
                  local.set 354
                  local.get 354
                  local.get 353
                  i32.store16
                  local.get 4
                  i32.load16_u offset=14
                  local.set 355
                  i32.const 65535
                  local.set 356
                  local.get 355
                  local.get 356
                  i32.and
                  local.set 357
                  i32.const 8
                  local.set 358
                  local.get 357
                  local.get 358
                  i32.sub
                  local.set 359
                  local.get 4
                  i32.load offset=8
                  local.set 360
                  local.get 360
                  local.get 359
                  i32.store16 offset=2
                  local.get 4
                  i32.load16_u offset=14
                  local.set 361
                  i32.const 65535
                  local.set 362
                  local.get 361
                  local.get 362
                  i32.and
                  local.set 363
                  i32.const 1
                  local.set 364
                  local.get 363
                  local.get 364
                  i32.sub
                  local.set 365
                  local.get 4
                  i32.load offset=8
                  local.set 366
                  local.get 366
                  local.get 365
                  i32.store16 offset=4
                  local.get 4
                  i32.load16_u offset=14
                  local.set 367
                  i32.const 65535
                  local.set 368
                  local.get 367
                  local.get 368
                  i32.and
                  local.set 369
                  i32.const 8
                  local.set 370
                  local.get 369
                  local.get 370
                  i32.add
                  local.set 371
                  i32.const 1
                  local.set 372
                  local.get 371
                  local.get 372
                  i32.sub
                  local.set 373
                  local.get 4
                  i32.load offset=8
                  local.set 374
                  local.get 374
                  local.get 373
                  i32.store16 offset=6
                  local.get 4
                  i32.load16_u offset=14
                  local.set 375
                  i32.const 65535
                  local.set 376
                  local.get 375
                  local.get 376
                  i32.and
                  local.set 377
                  i32.const 8
                  local.set 378
                  local.get 377
                  local.get 378
                  i32.add
                  local.set 379
                  local.get 4
                  i32.load offset=8
                  local.set 380
                  local.get 380
                  local.get 379
                  i32.store16 offset=8
                  br 1 (;@6;)
                end
                local.get 4
                i32.load16_u offset=14
                local.set 381
                i32.const 65535
                local.set 382
                local.get 381
                local.get 382
                i32.and
                local.set 383
                i32.const 8
                local.set 384
                local.get 383
                local.get 384
                i32.div_s
                local.set 385
                i32.const 7
                local.set 386
                local.get 385
                local.set 387
                local.get 386
                local.set 388
                local.get 387
                local.get 388
                i32.eq
                local.set 389
                i32.const 1
                local.set 390
                local.get 389
                local.get 390
                i32.and
                local.set 391
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 391
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 4
                    i32.load16_u offset=14
                    local.set 392
                    i32.const 65535
                    local.set 393
                    local.get 392
                    local.get 393
                    i32.and
                    local.set 394
                    i32.const 8
                    local.set 395
                    local.get 394
                    local.get 395
                    i32.rem_s
                    local.set 396
                    local.get 396
                    br_if 0 (;@8;)
                    local.get 4
                    i32.load16_u offset=14
                    local.set 397
                    i32.const 65535
                    local.set 398
                    local.get 397
                    local.get 398
                    i32.and
                    local.set 399
                    i32.const 8
                    local.set 400
                    local.get 399
                    local.get 400
                    i32.sub
                    local.set 401
                    local.get 4
                    i32.load offset=8
                    local.set 402
                    local.get 402
                    local.get 401
                    i32.store16
                    local.get 4
                    i32.load16_u offset=14
                    local.set 403
                    i32.const 65535
                    local.set 404
                    local.get 403
                    local.get 404
                    i32.and
                    local.set 405
                    i32.const 8
                    local.set 406
                    local.get 405
                    local.get 406
                    i32.sub
                    local.set 407
                    i32.const 1
                    local.set 408
                    local.get 407
                    local.get 408
                    i32.add
                    local.set 409
                    local.get 4
                    i32.load offset=8
                    local.set 410
                    local.get 410
                    local.get 409
                    i32.store16 offset=2
                    local.get 4
                    i32.load16_u offset=14
                    local.set 411
                    i32.const 65535
                    local.set 412
                    local.get 411
                    local.get 412
                    i32.and
                    local.set 413
                    i32.const 1
                    local.set 414
                    local.get 413
                    local.get 414
                    i32.add
                    local.set 415
                    local.get 4
                    i32.load offset=8
                    local.set 416
                    local.get 416
                    local.get 415
                    i32.store16 offset=4
                    br 1 (;@7;)
                  end
                  local.get 4
                  i32.load16_u offset=14
                  local.set 417
                  i32.const 65535
                  local.set 418
                  local.get 417
                  local.get 418
                  i32.and
                  local.set 419
                  i32.const 8
                  local.set 420
                  local.get 419
                  local.get 420
                  i32.div_s
                  local.set 421
                  i32.const 7
                  local.set 422
                  local.get 421
                  local.set 423
                  local.get 422
                  local.set 424
                  local.get 423
                  local.get 424
                  i32.eq
                  local.set 425
                  i32.const 1
                  local.set 426
                  local.get 425
                  local.get 426
                  i32.and
                  local.set 427
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 427
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 4
                      i32.load16_u offset=14
                      local.set 428
                      i32.const 65535
                      local.set 429
                      local.get 428
                      local.get 429
                      i32.and
                      local.set 430
                      i32.const 8
                      local.set 431
                      local.get 430
                      local.get 431
                      i32.rem_s
                      local.set 432
                      i32.const 0
                      local.set 433
                      local.get 432
                      local.set 434
                      local.get 433
                      local.set 435
                      local.get 434
                      local.get 435
                      i32.gt_s
                      local.set 436
                      i32.const 1
                      local.set 437
                      local.get 436
                      local.get 437
                      i32.and
                      local.set 438
                      local.get 438
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 4
                      i32.load16_u offset=14
                      local.set 439
                      i32.const 65535
                      local.set 440
                      local.get 439
                      local.get 440
                      i32.and
                      local.set 441
                      i32.const 8
                      local.set 442
                      local.get 441
                      local.get 442
                      i32.rem_s
                      local.set 443
                      i32.const 7
                      local.set 444
                      local.get 443
                      local.set 445
                      local.get 444
                      local.set 446
                      local.get 445
                      local.get 446
                      i32.lt_s
                      local.set 447
                      i32.const 1
                      local.set 448
                      local.get 447
                      local.get 448
                      i32.and
                      local.set 449
                      local.get 449
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 4
                      i32.load16_u offset=14
                      local.set 450
                      i32.const 65535
                      local.set 451
                      local.get 450
                      local.get 451
                      i32.and
                      local.set 452
                      i32.const 8
                      local.set 453
                      local.get 452
                      local.get 453
                      i32.sub
                      local.set 454
                      i32.const 1
                      local.set 455
                      local.get 454
                      local.get 455
                      i32.sub
                      local.set 456
                      local.get 4
                      i32.load offset=8
                      local.set 457
                      local.get 457
                      local.get 456
                      i32.store16
                      local.get 4
                      i32.load16_u offset=14
                      local.set 458
                      i32.const 65535
                      local.set 459
                      local.get 458
                      local.get 459
                      i32.and
                      local.set 460
                      i32.const 8
                      local.set 461
                      local.get 460
                      local.get 461
                      i32.sub
                      local.set 462
                      local.get 4
                      i32.load offset=8
                      local.set 463
                      local.get 463
                      local.get 462
                      i32.store16 offset=2
                      local.get 4
                      i32.load16_u offset=14
                      local.set 464
                      i32.const 65535
                      local.set 465
                      local.get 464
                      local.get 465
                      i32.and
                      local.set 466
                      i32.const 8
                      local.set 467
                      local.get 466
                      local.get 467
                      i32.sub
                      local.set 468
                      i32.const 1
                      local.set 469
                      local.get 468
                      local.get 469
                      i32.add
                      local.set 470
                      local.get 4
                      i32.load offset=8
                      local.set 471
                      local.get 471
                      local.get 470
                      i32.store16 offset=4
                      local.get 4
                      i32.load16_u offset=14
                      local.set 472
                      i32.const 65535
                      local.set 473
                      local.get 472
                      local.get 473
                      i32.and
                      local.set 474
                      i32.const 1
                      local.set 475
                      local.get 474
                      local.get 475
                      i32.sub
                      local.set 476
                      local.get 4
                      i32.load offset=8
                      local.set 477
                      local.get 477
                      local.get 476
                      i32.store16 offset=6
                      local.get 4
                      i32.load16_u offset=14
                      local.set 478
                      i32.const 65535
                      local.set 479
                      local.get 478
                      local.get 479
                      i32.and
                      local.set 480
                      i32.const 1
                      local.set 481
                      local.get 480
                      local.get 481
                      i32.add
                      local.set 482
                      local.get 4
                      i32.load offset=8
                      local.set 483
                      local.get 483
                      local.get 482
                      i32.store16 offset=8
                      br 1 (;@8;)
                    end
                    local.get 4
                    i32.load16_u offset=14
                    local.set 484
                    i32.const 65535
                    local.set 485
                    local.get 484
                    local.get 485
                    i32.and
                    local.set 486
                    i32.const 8
                    local.set 487
                    local.get 486
                    local.get 487
                    i32.div_s
                    local.set 488
                    i32.const 7
                    local.set 489
                    local.get 488
                    local.set 490
                    local.get 489
                    local.set 491
                    local.get 490
                    local.get 491
                    i32.eq
                    local.set 492
                    i32.const 1
                    local.set 493
                    local.get 492
                    local.get 493
                    i32.and
                    local.set 494
                    block  ;; label = @9
                      local.get 494
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 4
                      i32.load16_u offset=14
                      local.set 495
                      i32.const 65535
                      local.set 496
                      local.get 495
                      local.get 496
                      i32.and
                      local.set 497
                      i32.const 8
                      local.set 498
                      local.get 497
                      local.get 498
                      i32.rem_s
                      local.set 499
                      i32.const 7
                      local.set 500
                      local.get 499
                      local.set 501
                      local.get 500
                      local.set 502
                      local.get 501
                      local.get 502
                      i32.eq
                      local.set 503
                      i32.const 1
                      local.set 504
                      local.get 503
                      local.get 504
                      i32.and
                      local.set 505
                      local.get 505
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 4
                      i32.load16_u offset=14
                      local.set 506
                      i32.const 65535
                      local.set 507
                      local.get 506
                      local.get 507
                      i32.and
                      local.set 508
                      i32.const 8
                      local.set 509
                      local.get 508
                      local.get 509
                      i32.sub
                      local.set 510
                      i32.const 1
                      local.set 511
                      local.get 510
                      local.get 511
                      i32.sub
                      local.set 512
                      local.get 4
                      i32.load offset=8
                      local.set 513
                      local.get 513
                      local.get 512
                      i32.store16
                      local.get 4
                      i32.load16_u offset=14
                      local.set 514
                      i32.const 65535
                      local.set 515
                      local.get 514
                      local.get 515
                      i32.and
                      local.set 516
                      i32.const 8
                      local.set 517
                      local.get 516
                      local.get 517
                      i32.sub
                      local.set 518
                      local.get 4
                      i32.load offset=8
                      local.set 519
                      local.get 519
                      local.get 518
                      i32.store16 offset=2
                      local.get 4
                      i32.load16_u offset=14
                      local.set 520
                      i32.const 65535
                      local.set 521
                      local.get 520
                      local.get 521
                      i32.and
                      local.set 522
                      i32.const 1
                      local.set 523
                      local.get 522
                      local.get 523
                      i32.sub
                      local.set 524
                      local.get 4
                      i32.load offset=8
                      local.set 525
                      local.get 525
                      local.get 524
                      i32.store16 offset=4
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
    return)
  (func $benchmark_measure_heatdetect (type 16) (param i32 i32 i32 i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 7
    i32.const 32
    local.set 8
    local.get 7
    local.get 8
    i32.sub
    local.set 9
    local.get 9
    global.set $__stack_pointer
    local.get 9
    local.get 0
    i32.store offset=28
    local.get 9
    local.get 1
    i32.store offset=24
    local.get 9
    local.get 2
    i32.store offset=20
    local.get 9
    local.get 3
    i32.store offset=16
    local.get 9
    local.get 4
    i32.store offset=12
    local.get 9
    local.get 5
    i32.store offset=8
    local.get 9
    local.get 6
    i32.store offset=4
    i32.const 0
    local.set 10
    local.get 9
    local.get 10
    i32.store16 offset=2
    block  ;; label = @1
      loop  ;; label = @2
        local.get 9
        i32.load16_u offset=2
        local.set 11
        i32.const 65535
        local.set 12
        local.get 11
        local.get 12
        i32.and
        local.set 13
        i32.const 25
        local.set 14
        local.get 13
        local.set 15
        local.get 14
        local.set 16
        local.get 15
        local.get 16
        i32.lt_s
        local.set 17
        i32.const 1
        local.set 18
        local.get 17
        local.get 18
        i32.and
        local.set 19
        local.get 19
        i32.eqz
        br_if 1 (;@1;)
        local.get 9
        i32.load offset=28
        local.set 20
        local.get 9
        i32.load16_u offset=2
        local.set 21
        i32.const 65535
        local.set 22
        local.get 21
        local.get 22
        i32.and
        local.set 23
        i32.const 101
        local.set 24
        local.get 23
        local.get 24
        i32.add
        local.set 25
        local.get 9
        i32.load offset=4
        local.set 26
        i32.const 65535
        local.set 27
        local.get 25
        local.get 27
        i32.and
        local.set 28
        local.get 20
        local.get 28
        local.get 26
        call $get_heat_sensor_data
        drop
        local.get 9
        i32.load offset=28
        local.set 29
        local.get 9
        i32.load offset=24
        local.set 30
        local.get 9
        i32.load offset=20
        local.set 31
        local.get 9
        i32.load offset=16
        local.set 32
        local.get 9
        i32.load offset=12
        local.set 33
        local.get 9
        i32.load offset=8
        local.set 34
        local.get 29
        local.get 30
        local.get 31
        local.get 32
        local.get 33
        local.get 34
        call $heat_detect
        local.get 9
        i32.load16_u offset=2
        local.set 35
        i32.const 1
        local.set 36
        local.get 35
        local.get 36
        i32.add
        local.set 37
        local.get 9
        local.get 37
        i32.store16 offset=2
        br 0 (;@2;)
      end
    end
    i32.const 32
    local.set 38
    local.get 9
    local.get 38
    i32.add
    local.set 39
    local.get 39
    global.set $__stack_pointer
    return)
  (func $bench_heatdetect (type 8) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 1
    i32.const 48
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    global.set $__stack_pointer
    local.get 3
    local.get 0
    i32.store offset=44
    i32.const 1000
    local.set 4
    local.get 3
    local.get 4
    i32.store offset=40
    call $start_BenchmarkMeasurement
    call $io_time_reset
    i32.const 0
    local.set 5
    local.get 3
    local.get 5
    i32.store offset=36
    block  ;; label = @1
      loop  ;; label = @2
        local.get 3
        i32.load offset=36
        local.set 6
        local.get 3
        i32.load offset=40
        local.set 7
        local.get 6
        local.set 8
        local.get 7
        local.set 9
        local.get 8
        local.get 9
        i32.lt_s
        local.set 10
        i32.const 1
        local.set 11
        local.get 10
        local.get 11
        i32.and
        local.set 12
        local.get 12
        i32.eqz
        br_if 1 (;@1;)
        i32.const 128
        local.set 13
        local.get 13
        call $malloc
        local.set 14
        i32.const 0
        local.set 15
        local.get 15
        local.get 14
        i32.store offset=4484
        i32.const 256
        local.set 16
        local.get 16
        call $malloc
        local.set 17
        i32.const 0
        local.set 18
        local.get 18
        local.get 17
        i32.store offset=4488
        i32.const 128
        local.set 19
        local.get 19
        call $malloc
        local.set 20
        i32.const 0
        local.set 21
        local.get 21
        local.get 20
        i32.store offset=4492
        i32.const 128
        local.set 22
        local.get 22
        call $malloc
        local.set 23
        i32.const 0
        local.set 24
        local.get 24
        local.get 23
        i32.store offset=4496
        i32.const 64
        local.set 25
        local.get 25
        call $malloc
        local.set 26
        i32.const 0
        local.set 27
        local.get 27
        local.get 26
        i32.store offset=4536
        i32.const 0
        local.set 28
        local.get 3
        local.get 28
        i32.store16 offset=34
        block  ;; label = @3
          loop  ;; label = @4
            local.get 3
            i32.load16_u offset=34
            local.set 29
            i32.const 65535
            local.set 30
            local.get 29
            local.get 30
            i32.and
            local.set 31
            i32.const 64
            local.set 32
            local.get 31
            local.set 33
            local.get 32
            local.set 34
            local.get 33
            local.get 34
            i32.lt_s
            local.set 35
            i32.const 1
            local.set 36
            local.get 35
            local.get 36
            i32.and
            local.set 37
            local.get 37
            i32.eqz
            br_if 1 (;@3;)
            i32.const 0
            local.set 38
            local.get 38
            i32.load offset=4492
            local.set 39
            local.get 3
            i32.load16_u offset=34
            local.set 40
            i32.const 65535
            local.set 41
            local.get 40
            local.get 41
            i32.and
            local.set 42
            i32.const 1
            local.set 43
            local.get 42
            local.get 43
            i32.shl
            local.set 44
            local.get 39
            local.get 44
            i32.add
            local.set 45
            i32.const 0
            local.set 46
            local.get 45
            local.get 46
            i32.store16
            i32.const 0
            local.set 47
            local.get 47
            i32.load offset=4488
            local.set 48
            local.get 3
            i32.load16_u offset=34
            local.set 49
            i32.const 65535
            local.set 50
            local.get 49
            local.get 50
            i32.and
            local.set 51
            i32.const 2
            local.set 52
            local.get 51
            local.get 52
            i32.shl
            local.set 53
            local.get 48
            local.get 53
            i32.add
            local.set 54
            i32.const 0
            local.set 55
            local.get 54
            local.get 55
            i32.store
            i32.const 0
            local.set 56
            local.get 56
            i32.load offset=4484
            local.set 57
            local.get 3
            i32.load16_u offset=34
            local.set 58
            i32.const 65535
            local.set 59
            local.get 58
            local.get 59
            i32.and
            local.set 60
            i32.const 1
            local.set 61
            local.get 60
            local.get 61
            i32.shl
            local.set 62
            local.get 57
            local.get 62
            i32.add
            local.set 63
            i32.const 0
            local.set 64
            local.get 63
            local.get 64
            i32.store16
            local.get 3
            i32.load16_u offset=34
            local.set 65
            i32.const 1
            local.set 66
            local.get 65
            local.get 66
            i32.add
            local.set 67
            local.get 3
            local.get 67
            i32.store16 offset=34
            br 0 (;@4;)
          end
        end
        local.get 3
        i32.load offset=44
        local.set 68
        local.get 68
        call $heat_calib
        i32.const 128
        local.set 69
        local.get 69
        call $malloc
        local.set 70
        local.get 3
        local.get 70
        i32.store offset=28
        i32.const 64
        local.set 71
        local.get 71
        call $malloc
        local.set 72
        local.get 3
        local.get 72
        i32.store offset=24
        i32.const 64
        local.set 73
        local.get 73
        call $malloc
        local.set 74
        local.get 3
        local.get 74
        i32.store offset=20
        i32.const 256
        local.set 75
        local.get 75
        call $malloc
        local.set 76
        local.get 3
        local.get 76
        i32.store offset=16
        i32.const 256
        local.set 77
        local.get 77
        call $malloc
        local.set 78
        local.get 3
        local.get 78
        i32.store offset=12
        i32.const 256
        local.set 79
        local.get 79
        call $malloc
        local.set 80
        local.get 3
        local.get 80
        i32.store offset=8
        local.get 3
        i32.load offset=28
        local.set 81
        local.get 3
        i32.load offset=24
        local.set 82
        local.get 3
        i32.load offset=20
        local.set 83
        local.get 3
        i32.load offset=16
        local.set 84
        local.get 3
        i32.load offset=12
        local.set 85
        local.get 3
        i32.load offset=8
        local.set 86
        local.get 3
        i32.load offset=44
        local.set 87
        local.get 81
        local.get 82
        local.get 83
        local.get 84
        local.get 85
        local.get 86
        local.get 87
        call $benchmark_measure_heatdetect
        local.get 3
        i32.load offset=36
        local.set 88
        i32.const 1
        local.set 89
        local.get 88
        local.get 89
        i32.add
        local.set 90
        local.get 3
        local.get 90
        i32.store offset=36
        br 0 (;@2;)
      end
    end
    call $io_time_print
    call $stop_BenchmarkMeasurement
    i32.const 48
    local.set 91
    local.get 3
    local.get 91
    i32.add
    local.set 92
    local.get 92
    global.set $__stack_pointer
    return)
  (func $main (type 3) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 2
    i32.const 32
    local.set 3
    local.get 2
    local.get 3
    i32.sub
    local.set 4
    local.get 4
    global.set $__stack_pointer
    i32.const 0
    local.set 5
    local.get 4
    local.get 5
    i32.store offset=28
    local.get 4
    local.get 0
    i32.store offset=24
    local.get 4
    local.get 1
    i32.store offset=20
    local.get 4
    i32.load offset=24
    local.set 6
    i32.const 2
    local.set 7
    local.get 6
    local.set 8
    local.get 7
    local.set 9
    local.get 8
    local.get 9
    i32.ne
    local.set 10
    i32.const 1
    local.set 11
    local.get 10
    local.get 11
    i32.and
    local.set 12
    block  ;; label = @1
      block  ;; label = @2
        local.get 12
        i32.eqz
        br_if 0 (;@2;)
        local.get 4
        i32.load offset=20
        local.set 13
        local.get 13
        i32.load
        local.set 14
        local.get 4
        local.get 14
        i32.store
        i32.const 1358
        local.set 15
        local.get 15
        local.get 4
        call $printf
        drop
        i32.const 1
        local.set 16
        local.get 4
        local.get 16
        i32.store offset=28
        br 1 (;@1;)
      end
      i32.const 0
      local.set 17
      local.get 4
      local.get 17
      i32.store offset=16
      local.get 4
      i32.load offset=20
      local.set 18
      local.get 18
      i32.load offset=4
      local.set 19
      i32.const 1261
      local.set 20
      local.get 19
      local.get 20
      call $strcmp
      local.set 21
      block  ;; label = @2
        block  ;; label = @3
          local.get 21
          br_if 0 (;@3;)
          i32.const 1194
          local.set 22
          local.get 4
          local.get 22
          i32.store offset=16
          br 1 (;@2;)
        end
        local.get 4
        i32.load offset=20
        local.set 23
        local.get 23
        i32.load offset=4
        local.set 24
        i32.const 1024
        local.set 25
        local.get 24
        local.get 25
        call $strcmp
        local.set 26
        block  ;; label = @3
          block  ;; label = @4
            local.get 26
            br_if 0 (;@4;)
            i32.const 1136
            local.set 27
            local.get 4
            local.get 27
            i32.store offset=16
            br 1 (;@3;)
          end
          local.get 4
          i32.load offset=20
          local.set 28
          local.get 28
          i32.load offset=4
          local.set 29
          i32.const 1292
          local.set 30
          local.get 29
          local.get 30
          call $strcmp
          local.set 31
          block  ;; label = @4
            block  ;; label = @5
              local.get 31
              br_if 0 (;@5;)
              i32.const 1068
              local.set 32
              local.get 4
              local.get 32
              i32.store offset=16
              br 1 (;@4;)
            end
            i32.const 1335
            local.set 33
            i32.const 0
            local.set 34
            local.get 33
            local.get 34
            call $printf
            drop
            i32.const 1
            local.set 35
            local.get 4
            local.get 35
            i32.store offset=28
            br 3 (;@1;)
          end
        end
      end
      local.get 4
      i32.load offset=16
      local.set 36
      local.get 36
      call $bench_heatdetect
      i32.const 0
      local.set 37
      local.get 4
      local.get 37
      i32.store offset=28
    end
    local.get 4
    i32.load offset=28
    local.set 38
    i32.const 32
    local.set 39
    local.get 4
    local.get 39
    i32.add
    local.set 40
    local.get 40
    global.set $__stack_pointer
    local.get 38
    return)
  (func $start_BenchmarkMeasurement (type 9)
    (local i32 i32)
    i32.const 4560
    local.set 0
    i32.const 0
    local.set 1
    local.get 0
    local.get 1
    call $gettimeofday
    drop
    return)
  (func $stop_BenchmarkMeasurement (type 9)
    (local i32 i32 i32 i32 i32 i32 i64 i32 i64 i64 i64 i64 i32 i64 i64 i32 i64 i64 i32 i32 i32)
    global.get $__stack_pointer
    local.set 0
    i32.const 16
    local.set 1
    local.get 0
    local.get 1
    i32.sub
    local.set 2
    local.get 2
    global.set $__stack_pointer
    i32.const 4576
    local.set 3
    i32.const 0
    local.set 4
    local.get 3
    local.get 4
    call $gettimeofday
    drop
    i32.const 0
    local.set 5
    local.get 5
    i64.load offset=4576
    local.set 6
    i32.const 0
    local.set 7
    local.get 7
    i64.load offset=4560
    local.set 8
    local.get 6
    local.get 8
    i64.sub
    local.set 9
    i64.const 1000000
    local.set 10
    local.get 9
    local.get 10
    i64.mul
    local.set 11
    i32.const 0
    local.set 12
    local.get 12
    i64.load offset=4584
    local.set 13
    local.get 11
    local.get 13
    i64.add
    local.set 14
    i32.const 0
    local.set 15
    local.get 15
    i64.load offset=4568
    local.set 16
    local.get 14
    local.get 16
    i64.sub
    local.set 17
    local.get 17
    i32.wrap_i64
    local.set 18
    local.get 2
    local.get 18
    i32.store offset=12
    i32.const 16
    local.set 19
    local.get 2
    local.get 19
    i32.add
    local.set 20
    local.get 20
    global.set $__stack_pointer
    return)
  (func $io_time_reset (type 9)
    (local i32 i32)
    i32.const 0
    local.set 0
    i32.const 0
    local.set 1
    local.get 1
    local.get 0
    i32.store offset=4592
    return)
  (func $io_time_print (type 9)
    return)
  (func $io_time_set (type 9)
    (local i32 i32)
    i32.const 4600
    local.set 0
    i32.const 0
    local.set 1
    local.get 0
    local.get 1
    call $gettimeofday
    drop
    return)
  (func $io_time_add (type 9)
    (local i32 i32 i32 i64 i32 i64 i64 i64 i64 i32 i64 i64 i32 i64 i64 i32 i32 i32 i64 i64 i32 i32)
    i32.const 4616
    local.set 0
    i32.const 0
    local.set 1
    local.get 0
    local.get 1
    call $gettimeofday
    drop
    i32.const 0
    local.set 2
    local.get 2
    i64.load offset=4616
    local.set 3
    i32.const 0
    local.set 4
    local.get 4
    i64.load offset=4600
    local.set 5
    local.get 3
    local.get 5
    i64.sub
    local.set 6
    i64.const 1000000
    local.set 7
    local.get 6
    local.get 7
    i64.mul
    local.set 8
    i32.const 0
    local.set 9
    local.get 9
    i64.load offset=4624
    local.set 10
    local.get 8
    local.get 10
    i64.add
    local.set 11
    i32.const 0
    local.set 12
    local.get 12
    i64.load offset=4608
    local.set 13
    local.get 11
    local.get 13
    i64.sub
    local.set 14
    i32.const 0
    local.set 15
    local.get 15
    i32.load offset=4592
    local.set 16
    local.get 16
    local.set 17
    local.get 17
    i64.extend_i32_s
    local.set 18
    local.get 18
    local.get 14
    i64.add
    local.set 19
    local.get 19
    i32.wrap_i64
    local.set 20
    i32.const 0
    local.set 21
    local.get 21
    local.get 20
    i32.store offset=4592
    return)
  (func $malloc (type 0) (param i32) (result i32)
    local.get 0
    call $dlmalloc)
  (func $dlmalloc (type 0) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    block  ;; label = @1
      i32.const 0
      i32.load offset=4656
      br_if 0 (;@1;)
      i32.const 0
      call $sbrk
      i32.const 71792
      i32.sub
      local.tee 2
      i32.const 89
      i32.lt_u
      br_if 0 (;@1;)
      i32.const 0
      local.set 3
      block  ;; label = @2
        i32.const 0
        i32.load offset=5104
        local.tee 4
        br_if 0 (;@2;)
        i32.const 0
        i64.const -1
        i64.store offset=5116 align=4
        i32.const 0
        i64.const 281474976776192
        i64.store offset=5108 align=4
        i32.const 0
        local.get 1
        i32.const 8
        i32.add
        i32.const -16
        i32.and
        i32.const 1431655768
        i32.xor
        local.tee 4
        i32.store offset=5104
        i32.const 0
        i32.const 0
        i32.store offset=5124
        i32.const 0
        i32.const 0
        i32.store offset=5076
      end
      i32.const 0
      local.get 2
      i32.store offset=5084
      i32.const 0
      i32.const 71792
      i32.store offset=5080
      i32.const 0
      i32.const 71792
      i32.store offset=4648
      i32.const 0
      local.get 4
      i32.store offset=4668
      i32.const 0
      i32.const -1
      i32.store offset=4664
      loop  ;; label = @2
        local.get 3
        i32.const 4692
        i32.add
        local.get 3
        i32.const 4680
        i32.add
        local.tee 4
        i32.store
        local.get 4
        local.get 3
        i32.const 4672
        i32.add
        local.tee 5
        i32.store
        local.get 3
        i32.const 4684
        i32.add
        local.get 5
        i32.store
        local.get 3
        i32.const 4700
        i32.add
        local.get 3
        i32.const 4688
        i32.add
        local.tee 5
        i32.store
        local.get 5
        local.get 4
        i32.store
        local.get 3
        i32.const 4708
        i32.add
        local.get 3
        i32.const 4696
        i32.add
        local.tee 4
        i32.store
        local.get 4
        local.get 5
        i32.store
        local.get 3
        i32.const 4704
        i32.add
        local.get 4
        i32.store
        local.get 3
        i32.const 32
        i32.add
        local.tee 3
        i32.const 256
        i32.ne
        br_if 0 (;@2;)
      end
      i32.const 71792
      i32.const -8
      i32.const 71792
      i32.sub
      i32.const 15
      i32.and
      i32.const 0
      i32.const 71792
      i32.const 8
      i32.add
      i32.const 15
      i32.and
      select
      local.tee 3
      i32.add
      local.tee 4
      i32.const 4
      i32.add
      local.get 2
      i32.const -56
      i32.add
      local.tee 5
      local.get 3
      i32.sub
      local.tee 3
      i32.const 1
      i32.or
      i32.store
      i32.const 0
      i32.const 0
      i32.load offset=5120
      i32.store offset=4660
      i32.const 0
      local.get 3
      i32.store offset=4644
      i32.const 0
      local.get 4
      i32.store offset=4656
      i32.const 71792
      local.get 5
      i32.add
      i32.const 56
      i32.store offset=4
    end
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            local.get 0
                            i32.const 236
                            i32.gt_u
                            br_if 0 (;@12;)
                            block  ;; label = @13
                              i32.const 0
                              i32.load offset=4632
                              local.tee 6
                              i32.const 16
                              local.get 0
                              i32.const 19
                              i32.add
                              i32.const -16
                              i32.and
                              local.get 0
                              i32.const 11
                              i32.lt_u
                              select
                              local.tee 2
                              i32.const 3
                              i32.shr_u
                              local.tee 4
                              i32.shr_u
                              local.tee 3
                              i32.const 3
                              i32.and
                              i32.eqz
                              br_if 0 (;@13;)
                              block  ;; label = @14
                                block  ;; label = @15
                                  local.get 3
                                  i32.const 1
                                  i32.and
                                  local.get 4
                                  i32.or
                                  i32.const 1
                                  i32.xor
                                  local.tee 5
                                  i32.const 3
                                  i32.shl
                                  local.tee 4
                                  i32.const 4672
                                  i32.add
                                  local.tee 3
                                  local.get 4
                                  i32.const 4680
                                  i32.add
                                  i32.load
                                  local.tee 4
                                  i32.load offset=8
                                  local.tee 2
                                  i32.ne
                                  br_if 0 (;@15;)
                                  i32.const 0
                                  local.get 6
                                  i32.const -2
                                  local.get 5
                                  i32.rotl
                                  i32.and
                                  i32.store offset=4632
                                  br 1 (;@14;)
                                end
                                local.get 3
                                local.get 2
                                i32.store offset=8
                                local.get 2
                                local.get 3
                                i32.store offset=12
                              end
                              local.get 4
                              i32.const 8
                              i32.add
                              local.set 3
                              local.get 4
                              local.get 5
                              i32.const 3
                              i32.shl
                              local.tee 5
                              i32.const 3
                              i32.or
                              i32.store offset=4
                              local.get 4
                              local.get 5
                              i32.add
                              local.tee 4
                              local.get 4
                              i32.load offset=4
                              i32.const 1
                              i32.or
                              i32.store offset=4
                              br 12 (;@1;)
                            end
                            local.get 2
                            i32.const 0
                            i32.load offset=4640
                            local.tee 7
                            i32.le_u
                            br_if 1 (;@11;)
                            block  ;; label = @13
                              local.get 3
                              i32.eqz
                              br_if 0 (;@13;)
                              block  ;; label = @14
                                block  ;; label = @15
                                  local.get 3
                                  local.get 4
                                  i32.shl
                                  i32.const 2
                                  local.get 4
                                  i32.shl
                                  local.tee 3
                                  i32.const 0
                                  local.get 3
                                  i32.sub
                                  i32.or
                                  i32.and
                                  local.tee 3
                                  i32.const 0
                                  local.get 3
                                  i32.sub
                                  i32.and
                                  i32.const -1
                                  i32.add
                                  local.tee 3
                                  local.get 3
                                  i32.const 12
                                  i32.shr_u
                                  i32.const 16
                                  i32.and
                                  local.tee 3
                                  i32.shr_u
                                  local.tee 4
                                  i32.const 5
                                  i32.shr_u
                                  i32.const 8
                                  i32.and
                                  local.tee 5
                                  local.get 3
                                  i32.or
                                  local.get 4
                                  local.get 5
                                  i32.shr_u
                                  local.tee 3
                                  i32.const 2
                                  i32.shr_u
                                  i32.const 4
                                  i32.and
                                  local.tee 4
                                  i32.or
                                  local.get 3
                                  local.get 4
                                  i32.shr_u
                                  local.tee 3
                                  i32.const 1
                                  i32.shr_u
                                  i32.const 2
                                  i32.and
                                  local.tee 4
                                  i32.or
                                  local.get 3
                                  local.get 4
                                  i32.shr_u
                                  local.tee 3
                                  i32.const 1
                                  i32.shr_u
                                  i32.const 1
                                  i32.and
                                  local.tee 4
                                  i32.or
                                  local.get 3
                                  local.get 4
                                  i32.shr_u
                                  i32.add
                                  local.tee 4
                                  i32.const 3
                                  i32.shl
                                  local.tee 3
                                  i32.const 4672
                                  i32.add
                                  local.tee 5
                                  local.get 3
                                  i32.const 4680
                                  i32.add
                                  i32.load
                                  local.tee 3
                                  i32.load offset=8
                                  local.tee 0
                                  i32.ne
                                  br_if 0 (;@15;)
                                  i32.const 0
                                  local.get 6
                                  i32.const -2
                                  local.get 4
                                  i32.rotl
                                  i32.and
                                  local.tee 6
                                  i32.store offset=4632
                                  br 1 (;@14;)
                                end
                                local.get 5
                                local.get 0
                                i32.store offset=8
                                local.get 0
                                local.get 5
                                i32.store offset=12
                              end
                              local.get 3
                              local.get 2
                              i32.const 3
                              i32.or
                              i32.store offset=4
                              local.get 3
                              local.get 4
                              i32.const 3
                              i32.shl
                              local.tee 4
                              i32.add
                              local.get 4
                              local.get 2
                              i32.sub
                              local.tee 5
                              i32.store
                              local.get 3
                              local.get 2
                              i32.add
                              local.tee 0
                              local.get 5
                              i32.const 1
                              i32.or
                              i32.store offset=4
                              block  ;; label = @14
                                local.get 7
                                i32.eqz
                                br_if 0 (;@14;)
                                local.get 7
                                i32.const -8
                                i32.and
                                i32.const 4672
                                i32.add
                                local.set 2
                                i32.const 0
                                i32.load offset=4652
                                local.set 4
                                block  ;; label = @15
                                  block  ;; label = @16
                                    local.get 6
                                    i32.const 1
                                    local.get 7
                                    i32.const 3
                                    i32.shr_u
                                    i32.shl
                                    local.tee 8
                                    i32.and
                                    br_if 0 (;@16;)
                                    i32.const 0
                                    local.get 6
                                    local.get 8
                                    i32.or
                                    i32.store offset=4632
                                    local.get 2
                                    local.set 8
                                    br 1 (;@15;)
                                  end
                                  local.get 2
                                  i32.load offset=8
                                  local.set 8
                                end
                                local.get 8
                                local.get 4
                                i32.store offset=12
                                local.get 2
                                local.get 4
                                i32.store offset=8
                                local.get 4
                                local.get 2
                                i32.store offset=12
                                local.get 4
                                local.get 8
                                i32.store offset=8
                              end
                              local.get 3
                              i32.const 8
                              i32.add
                              local.set 3
                              i32.const 0
                              local.get 0
                              i32.store offset=4652
                              i32.const 0
                              local.get 5
                              i32.store offset=4640
                              br 12 (;@1;)
                            end
                            i32.const 0
                            i32.load offset=4636
                            local.tee 9
                            i32.eqz
                            br_if 1 (;@11;)
                            local.get 9
                            i32.const 0
                            local.get 9
                            i32.sub
                            i32.and
                            i32.const -1
                            i32.add
                            local.tee 3
                            local.get 3
                            i32.const 12
                            i32.shr_u
                            i32.const 16
                            i32.and
                            local.tee 3
                            i32.shr_u
                            local.tee 4
                            i32.const 5
                            i32.shr_u
                            i32.const 8
                            i32.and
                            local.tee 5
                            local.get 3
                            i32.or
                            local.get 4
                            local.get 5
                            i32.shr_u
                            local.tee 3
                            i32.const 2
                            i32.shr_u
                            i32.const 4
                            i32.and
                            local.tee 4
                            i32.or
                            local.get 3
                            local.get 4
                            i32.shr_u
                            local.tee 3
                            i32.const 1
                            i32.shr_u
                            i32.const 2
                            i32.and
                            local.tee 4
                            i32.or
                            local.get 3
                            local.get 4
                            i32.shr_u
                            local.tee 3
                            i32.const 1
                            i32.shr_u
                            i32.const 1
                            i32.and
                            local.tee 4
                            i32.or
                            local.get 3
                            local.get 4
                            i32.shr_u
                            i32.add
                            i32.const 2
                            i32.shl
                            i32.const 4936
                            i32.add
                            i32.load
                            local.tee 0
                            i32.load offset=4
                            i32.const -8
                            i32.and
                            local.get 2
                            i32.sub
                            local.set 4
                            local.get 0
                            local.set 5
                            block  ;; label = @13
                              loop  ;; label = @14
                                block  ;; label = @15
                                  local.get 5
                                  i32.load offset=16
                                  local.tee 3
                                  br_if 0 (;@15;)
                                  local.get 5
                                  i32.const 20
                                  i32.add
                                  i32.load
                                  local.tee 3
                                  i32.eqz
                                  br_if 2 (;@13;)
                                end
                                local.get 3
                                i32.load offset=4
                                i32.const -8
                                i32.and
                                local.get 2
                                i32.sub
                                local.tee 5
                                local.get 4
                                local.get 5
                                local.get 4
                                i32.lt_u
                                local.tee 5
                                select
                                local.set 4
                                local.get 3
                                local.get 0
                                local.get 5
                                select
                                local.set 0
                                local.get 3
                                local.set 5
                                br 0 (;@14;)
                              end
                            end
                            local.get 0
                            i32.load offset=24
                            local.set 10
                            block  ;; label = @13
                              local.get 0
                              i32.load offset=12
                              local.tee 8
                              local.get 0
                              i32.eq
                              br_if 0 (;@13;)
                              local.get 0
                              i32.load offset=8
                              local.tee 3
                              i32.const 0
                              i32.load offset=4648
                              i32.lt_u
                              drop
                              local.get 8
                              local.get 3
                              i32.store offset=8
                              local.get 3
                              local.get 8
                              i32.store offset=12
                              br 11 (;@2;)
                            end
                            block  ;; label = @13
                              local.get 0
                              i32.const 20
                              i32.add
                              local.tee 5
                              i32.load
                              local.tee 3
                              br_if 0 (;@13;)
                              local.get 0
                              i32.load offset=16
                              local.tee 3
                              i32.eqz
                              br_if 3 (;@10;)
                              local.get 0
                              i32.const 16
                              i32.add
                              local.set 5
                            end
                            loop  ;; label = @13
                              local.get 5
                              local.set 11
                              local.get 3
                              local.tee 8
                              i32.const 20
                              i32.add
                              local.tee 5
                              i32.load
                              local.tee 3
                              br_if 0 (;@13;)
                              local.get 8
                              i32.const 16
                              i32.add
                              local.set 5
                              local.get 8
                              i32.load offset=16
                              local.tee 3
                              br_if 0 (;@13;)
                            end
                            local.get 11
                            i32.const 0
                            i32.store
                            br 10 (;@2;)
                          end
                          i32.const -1
                          local.set 2
                          local.get 0
                          i32.const -65
                          i32.gt_u
                          br_if 0 (;@11;)
                          local.get 0
                          i32.const 19
                          i32.add
                          local.tee 3
                          i32.const -16
                          i32.and
                          local.set 2
                          i32.const 0
                          i32.load offset=4636
                          local.tee 7
                          i32.eqz
                          br_if 0 (;@11;)
                          i32.const 0
                          local.set 11
                          block  ;; label = @12
                            local.get 2
                            i32.const 256
                            i32.lt_u
                            br_if 0 (;@12;)
                            i32.const 31
                            local.set 11
                            local.get 2
                            i32.const 16777215
                            i32.gt_u
                            br_if 0 (;@12;)
                            local.get 3
                            i32.const 8
                            i32.shr_u
                            local.tee 3
                            local.get 3
                            i32.const 1048320
                            i32.add
                            i32.const 16
                            i32.shr_u
                            i32.const 8
                            i32.and
                            local.tee 3
                            i32.shl
                            local.tee 4
                            local.get 4
                            i32.const 520192
                            i32.add
                            i32.const 16
                            i32.shr_u
                            i32.const 4
                            i32.and
                            local.tee 4
                            i32.shl
                            local.tee 5
                            local.get 5
                            i32.const 245760
                            i32.add
                            i32.const 16
                            i32.shr_u
                            i32.const 2
                            i32.and
                            local.tee 5
                            i32.shl
                            i32.const 15
                            i32.shr_u
                            local.get 3
                            local.get 4
                            i32.or
                            local.get 5
                            i32.or
                            i32.sub
                            local.tee 3
                            i32.const 1
                            i32.shl
                            local.get 2
                            local.get 3
                            i32.const 21
                            i32.add
                            i32.shr_u
                            i32.const 1
                            i32.and
                            i32.or
                            i32.const 28
                            i32.add
                            local.set 11
                          end
                          i32.const 0
                          local.get 2
                          i32.sub
                          local.set 4
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  local.get 11
                                  i32.const 2
                                  i32.shl
                                  i32.const 4936
                                  i32.add
                                  i32.load
                                  local.tee 5
                                  br_if 0 (;@15;)
                                  i32.const 0
                                  local.set 3
                                  i32.const 0
                                  local.set 8
                                  br 1 (;@14;)
                                end
                                i32.const 0
                                local.set 3
                                local.get 2
                                i32.const 0
                                i32.const 25
                                local.get 11
                                i32.const 1
                                i32.shr_u
                                i32.sub
                                local.get 11
                                i32.const 31
                                i32.eq
                                select
                                i32.shl
                                local.set 0
                                i32.const 0
                                local.set 8
                                loop  ;; label = @15
                                  block  ;; label = @16
                                    local.get 5
                                    i32.load offset=4
                                    i32.const -8
                                    i32.and
                                    local.get 2
                                    i32.sub
                                    local.tee 6
                                    local.get 4
                                    i32.ge_u
                                    br_if 0 (;@16;)
                                    local.get 6
                                    local.set 4
                                    local.get 5
                                    local.set 8
                                    local.get 6
                                    br_if 0 (;@16;)
                                    i32.const 0
                                    local.set 4
                                    local.get 5
                                    local.set 8
                                    local.get 5
                                    local.set 3
                                    br 3 (;@13;)
                                  end
                                  local.get 3
                                  local.get 5
                                  i32.const 20
                                  i32.add
                                  i32.load
                                  local.tee 6
                                  local.get 6
                                  local.get 5
                                  local.get 0
                                  i32.const 29
                                  i32.shr_u
                                  i32.const 4
                                  i32.and
                                  i32.add
                                  i32.const 16
                                  i32.add
                                  i32.load
                                  local.tee 5
                                  i32.eq
                                  select
                                  local.get 3
                                  local.get 6
                                  select
                                  local.set 3
                                  local.get 0
                                  i32.const 1
                                  i32.shl
                                  local.set 0
                                  local.get 5
                                  br_if 0 (;@15;)
                                end
                              end
                              block  ;; label = @14
                                local.get 3
                                local.get 8
                                i32.or
                                br_if 0 (;@14;)
                                i32.const 0
                                local.set 8
                                i32.const 2
                                local.get 11
                                i32.shl
                                local.tee 3
                                i32.const 0
                                local.get 3
                                i32.sub
                                i32.or
                                local.get 7
                                i32.and
                                local.tee 3
                                i32.eqz
                                br_if 3 (;@11;)
                                local.get 3
                                i32.const 0
                                local.get 3
                                i32.sub
                                i32.and
                                i32.const -1
                                i32.add
                                local.tee 3
                                local.get 3
                                i32.const 12
                                i32.shr_u
                                i32.const 16
                                i32.and
                                local.tee 3
                                i32.shr_u
                                local.tee 5
                                i32.const 5
                                i32.shr_u
                                i32.const 8
                                i32.and
                                local.tee 0
                                local.get 3
                                i32.or
                                local.get 5
                                local.get 0
                                i32.shr_u
                                local.tee 3
                                i32.const 2
                                i32.shr_u
                                i32.const 4
                                i32.and
                                local.tee 5
                                i32.or
                                local.get 3
                                local.get 5
                                i32.shr_u
                                local.tee 3
                                i32.const 1
                                i32.shr_u
                                i32.const 2
                                i32.and
                                local.tee 5
                                i32.or
                                local.get 3
                                local.get 5
                                i32.shr_u
                                local.tee 3
                                i32.const 1
                                i32.shr_u
                                i32.const 1
                                i32.and
                                local.tee 5
                                i32.or
                                local.get 3
                                local.get 5
                                i32.shr_u
                                i32.add
                                i32.const 2
                                i32.shl
                                i32.const 4936
                                i32.add
                                i32.load
                                local.set 3
                              end
                              local.get 3
                              i32.eqz
                              br_if 1 (;@12;)
                            end
                            loop  ;; label = @13
                              local.get 3
                              i32.load offset=4
                              i32.const -8
                              i32.and
                              local.get 2
                              i32.sub
                              local.tee 6
                              local.get 4
                              i32.lt_u
                              local.set 0
                              block  ;; label = @14
                                local.get 3
                                i32.load offset=16
                                local.tee 5
                                br_if 0 (;@14;)
                                local.get 3
                                i32.const 20
                                i32.add
                                i32.load
                                local.set 5
                              end
                              local.get 6
                              local.get 4
                              local.get 0
                              select
                              local.set 4
                              local.get 3
                              local.get 8
                              local.get 0
                              select
                              local.set 8
                              local.get 5
                              local.set 3
                              local.get 5
                              br_if 0 (;@13;)
                            end
                          end
                          local.get 8
                          i32.eqz
                          br_if 0 (;@11;)
                          local.get 4
                          i32.const 0
                          i32.load offset=4640
                          local.get 2
                          i32.sub
                          i32.ge_u
                          br_if 0 (;@11;)
                          local.get 8
                          i32.load offset=24
                          local.set 11
                          block  ;; label = @12
                            local.get 8
                            i32.load offset=12
                            local.tee 0
                            local.get 8
                            i32.eq
                            br_if 0 (;@12;)
                            local.get 8
                            i32.load offset=8
                            local.tee 3
                            i32.const 0
                            i32.load offset=4648
                            i32.lt_u
                            drop
                            local.get 0
                            local.get 3
                            i32.store offset=8
                            local.get 3
                            local.get 0
                            i32.store offset=12
                            br 9 (;@3;)
                          end
                          block  ;; label = @12
                            local.get 8
                            i32.const 20
                            i32.add
                            local.tee 5
                            i32.load
                            local.tee 3
                            br_if 0 (;@12;)
                            local.get 8
                            i32.load offset=16
                            local.tee 3
                            i32.eqz
                            br_if 3 (;@9;)
                            local.get 8
                            i32.const 16
                            i32.add
                            local.set 5
                          end
                          loop  ;; label = @12
                            local.get 5
                            local.set 6
                            local.get 3
                            local.tee 0
                            i32.const 20
                            i32.add
                            local.tee 5
                            i32.load
                            local.tee 3
                            br_if 0 (;@12;)
                            local.get 0
                            i32.const 16
                            i32.add
                            local.set 5
                            local.get 0
                            i32.load offset=16
                            local.tee 3
                            br_if 0 (;@12;)
                          end
                          local.get 6
                          i32.const 0
                          i32.store
                          br 8 (;@3;)
                        end
                        block  ;; label = @11
                          i32.const 0
                          i32.load offset=4640
                          local.tee 3
                          local.get 2
                          i32.lt_u
                          br_if 0 (;@11;)
                          i32.const 0
                          i32.load offset=4652
                          local.set 4
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 3
                              local.get 2
                              i32.sub
                              local.tee 5
                              i32.const 16
                              i32.lt_u
                              br_if 0 (;@13;)
                              local.get 4
                              local.get 2
                              i32.add
                              local.tee 0
                              local.get 5
                              i32.const 1
                              i32.or
                              i32.store offset=4
                              i32.const 0
                              local.get 5
                              i32.store offset=4640
                              i32.const 0
                              local.get 0
                              i32.store offset=4652
                              local.get 4
                              local.get 3
                              i32.add
                              local.get 5
                              i32.store
                              local.get 4
                              local.get 2
                              i32.const 3
                              i32.or
                              i32.store offset=4
                              br 1 (;@12;)
                            end
                            local.get 4
                            local.get 3
                            i32.const 3
                            i32.or
                            i32.store offset=4
                            local.get 4
                            local.get 3
                            i32.add
                            local.tee 3
                            local.get 3
                            i32.load offset=4
                            i32.const 1
                            i32.or
                            i32.store offset=4
                            i32.const 0
                            i32.const 0
                            i32.store offset=4652
                            i32.const 0
                            i32.const 0
                            i32.store offset=4640
                          end
                          local.get 4
                          i32.const 8
                          i32.add
                          local.set 3
                          br 10 (;@1;)
                        end
                        block  ;; label = @11
                          i32.const 0
                          i32.load offset=4644
                          local.tee 0
                          local.get 2
                          i32.le_u
                          br_if 0 (;@11;)
                          i32.const 0
                          i32.load offset=4656
                          local.tee 3
                          local.get 2
                          i32.add
                          local.tee 4
                          local.get 0
                          local.get 2
                          i32.sub
                          local.tee 5
                          i32.const 1
                          i32.or
                          i32.store offset=4
                          i32.const 0
                          local.get 5
                          i32.store offset=4644
                          i32.const 0
                          local.get 4
                          i32.store offset=4656
                          local.get 3
                          local.get 2
                          i32.const 3
                          i32.or
                          i32.store offset=4
                          local.get 3
                          i32.const 8
                          i32.add
                          local.set 3
                          br 10 (;@1;)
                        end
                        block  ;; label = @11
                          block  ;; label = @12
                            i32.const 0
                            i32.load offset=5104
                            i32.eqz
                            br_if 0 (;@12;)
                            i32.const 0
                            i32.load offset=5112
                            local.set 4
                            br 1 (;@11;)
                          end
                          i32.const 0
                          i64.const -1
                          i64.store offset=5116 align=4
                          i32.const 0
                          i64.const 281474976776192
                          i64.store offset=5108 align=4
                          i32.const 0
                          local.get 1
                          i32.const 12
                          i32.add
                          i32.const -16
                          i32.and
                          i32.const 1431655768
                          i32.xor
                          i32.store offset=5104
                          i32.const 0
                          i32.const 0
                          i32.store offset=5124
                          i32.const 0
                          i32.const 0
                          i32.store offset=5076
                          i32.const 65536
                          local.set 4
                        end
                        i32.const 0
                        local.set 3
                        block  ;; label = @11
                          local.get 4
                          local.get 2
                          i32.const 71
                          i32.add
                          local.tee 7
                          i32.add
                          local.tee 6
                          i32.const 0
                          local.get 4
                          i32.sub
                          local.tee 11
                          i32.and
                          local.tee 8
                          local.get 2
                          i32.gt_u
                          br_if 0 (;@11;)
                          i32.const 0
                          i32.const 48
                          i32.store offset=5128
                          br 10 (;@1;)
                        end
                        block  ;; label = @11
                          i32.const 0
                          i32.load offset=5072
                          local.tee 3
                          i32.eqz
                          br_if 0 (;@11;)
                          block  ;; label = @12
                            i32.const 0
                            i32.load offset=5064
                            local.tee 4
                            local.get 8
                            i32.add
                            local.tee 5
                            local.get 4
                            i32.le_u
                            br_if 0 (;@12;)
                            local.get 5
                            local.get 3
                            i32.le_u
                            br_if 1 (;@11;)
                          end
                          i32.const 0
                          local.set 3
                          i32.const 0
                          i32.const 48
                          i32.store offset=5128
                          br 10 (;@1;)
                        end
                        i32.const 0
                        i32.load8_u offset=5076
                        i32.const 4
                        i32.and
                        br_if 4 (;@6;)
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              i32.const 0
                              i32.load offset=4656
                              local.tee 4
                              i32.eqz
                              br_if 0 (;@13;)
                              i32.const 5080
                              local.set 3
                              loop  ;; label = @14
                                block  ;; label = @15
                                  local.get 3
                                  i32.load
                                  local.tee 5
                                  local.get 4
                                  i32.gt_u
                                  br_if 0 (;@15;)
                                  local.get 5
                                  local.get 3
                                  i32.load offset=4
                                  i32.add
                                  local.get 4
                                  i32.gt_u
                                  br_if 3 (;@12;)
                                end
                                local.get 3
                                i32.load offset=8
                                local.tee 3
                                br_if 0 (;@14;)
                              end
                            end
                            i32.const 0
                            call $sbrk
                            local.tee 0
                            i32.const -1
                            i32.eq
                            br_if 5 (;@7;)
                            local.get 8
                            local.set 6
                            block  ;; label = @13
                              i32.const 0
                              i32.load offset=5108
                              local.tee 3
                              i32.const -1
                              i32.add
                              local.tee 4
                              local.get 0
                              i32.and
                              i32.eqz
                              br_if 0 (;@13;)
                              local.get 8
                              local.get 0
                              i32.sub
                              local.get 4
                              local.get 0
                              i32.add
                              i32.const 0
                              local.get 3
                              i32.sub
                              i32.and
                              i32.add
                              local.set 6
                            end
                            local.get 6
                            local.get 2
                            i32.le_u
                            br_if 5 (;@7;)
                            local.get 6
                            i32.const 2147483646
                            i32.gt_u
                            br_if 5 (;@7;)
                            block  ;; label = @13
                              i32.const 0
                              i32.load offset=5072
                              local.tee 3
                              i32.eqz
                              br_if 0 (;@13;)
                              i32.const 0
                              i32.load offset=5064
                              local.tee 4
                              local.get 6
                              i32.add
                              local.tee 5
                              local.get 4
                              i32.le_u
                              br_if 6 (;@7;)
                              local.get 5
                              local.get 3
                              i32.gt_u
                              br_if 6 (;@7;)
                            end
                            local.get 6
                            call $sbrk
                            local.tee 3
                            local.get 0
                            i32.ne
                            br_if 1 (;@11;)
                            br 7 (;@5;)
                          end
                          local.get 6
                          local.get 0
                          i32.sub
                          local.get 11
                          i32.and
                          local.tee 6
                          i32.const 2147483646
                          i32.gt_u
                          br_if 4 (;@7;)
                          local.get 6
                          call $sbrk
                          local.tee 0
                          local.get 3
                          i32.load
                          local.get 3
                          i32.load offset=4
                          i32.add
                          i32.eq
                          br_if 3 (;@8;)
                          local.get 0
                          local.set 3
                        end
                        block  ;; label = @11
                          local.get 3
                          i32.const -1
                          i32.eq
                          br_if 0 (;@11;)
                          local.get 2
                          i32.const 72
                          i32.add
                          local.get 6
                          i32.le_u
                          br_if 0 (;@11;)
                          block  ;; label = @12
                            local.get 7
                            local.get 6
                            i32.sub
                            i32.const 0
                            i32.load offset=5112
                            local.tee 4
                            i32.add
                            i32.const 0
                            local.get 4
                            i32.sub
                            i32.and
                            local.tee 4
                            i32.const 2147483646
                            i32.le_u
                            br_if 0 (;@12;)
                            local.get 3
                            local.set 0
                            br 7 (;@5;)
                          end
                          block  ;; label = @12
                            local.get 4
                            call $sbrk
                            i32.const -1
                            i32.eq
                            br_if 0 (;@12;)
                            local.get 4
                            local.get 6
                            i32.add
                            local.set 6
                            local.get 3
                            local.set 0
                            br 7 (;@5;)
                          end
                          i32.const 0
                          local.get 6
                          i32.sub
                          call $sbrk
                          drop
                          br 4 (;@7;)
                        end
                        local.get 3
                        local.set 0
                        local.get 3
                        i32.const -1
                        i32.ne
                        br_if 5 (;@5;)
                        br 3 (;@7;)
                      end
                      i32.const 0
                      local.set 8
                      br 7 (;@2;)
                    end
                    i32.const 0
                    local.set 0
                    br 5 (;@3;)
                  end
                  local.get 0
                  i32.const -1
                  i32.ne
                  br_if 2 (;@5;)
                end
                i32.const 0
                i32.const 0
                i32.load offset=5076
                i32.const 4
                i32.or
                i32.store offset=5076
              end
              local.get 8
              i32.const 2147483646
              i32.gt_u
              br_if 1 (;@4;)
              local.get 8
              call $sbrk
              local.set 0
              i32.const 0
              call $sbrk
              local.set 3
              local.get 0
              i32.const -1
              i32.eq
              br_if 1 (;@4;)
              local.get 3
              i32.const -1
              i32.eq
              br_if 1 (;@4;)
              local.get 0
              local.get 3
              i32.ge_u
              br_if 1 (;@4;)
              local.get 3
              local.get 0
              i32.sub
              local.tee 6
              local.get 2
              i32.const 56
              i32.add
              i32.le_u
              br_if 1 (;@4;)
            end
            i32.const 0
            i32.const 0
            i32.load offset=5064
            local.get 6
            i32.add
            local.tee 3
            i32.store offset=5064
            block  ;; label = @5
              local.get 3
              i32.const 0
              i32.load offset=5068
              i32.le_u
              br_if 0 (;@5;)
              i32.const 0
              local.get 3
              i32.store offset=5068
            end
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    i32.const 0
                    i32.load offset=4656
                    local.tee 4
                    i32.eqz
                    br_if 0 (;@8;)
                    i32.const 5080
                    local.set 3
                    loop  ;; label = @9
                      local.get 0
                      local.get 3
                      i32.load
                      local.tee 5
                      local.get 3
                      i32.load offset=4
                      local.tee 8
                      i32.add
                      i32.eq
                      br_if 2 (;@7;)
                      local.get 3
                      i32.load offset=8
                      local.tee 3
                      br_if 0 (;@9;)
                      br 3 (;@6;)
                    end
                  end
                  block  ;; label = @8
                    block  ;; label = @9
                      i32.const 0
                      i32.load offset=4648
                      local.tee 3
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 0
                      local.get 3
                      i32.ge_u
                      br_if 1 (;@8;)
                    end
                    i32.const 0
                    local.get 0
                    i32.store offset=4648
                  end
                  i32.const 0
                  local.set 3
                  i32.const 0
                  local.get 6
                  i32.store offset=5084
                  i32.const 0
                  local.get 0
                  i32.store offset=5080
                  i32.const 0
                  i32.const -1
                  i32.store offset=4664
                  i32.const 0
                  i32.const 0
                  i32.load offset=5104
                  i32.store offset=4668
                  i32.const 0
                  i32.const 0
                  i32.store offset=5092
                  loop  ;; label = @8
                    local.get 3
                    i32.const 4692
                    i32.add
                    local.get 3
                    i32.const 4680
                    i32.add
                    local.tee 4
                    i32.store
                    local.get 4
                    local.get 3
                    i32.const 4672
                    i32.add
                    local.tee 5
                    i32.store
                    local.get 3
                    i32.const 4684
                    i32.add
                    local.get 5
                    i32.store
                    local.get 3
                    i32.const 4700
                    i32.add
                    local.get 3
                    i32.const 4688
                    i32.add
                    local.tee 5
                    i32.store
                    local.get 5
                    local.get 4
                    i32.store
                    local.get 3
                    i32.const 4708
                    i32.add
                    local.get 3
                    i32.const 4696
                    i32.add
                    local.tee 4
                    i32.store
                    local.get 4
                    local.get 5
                    i32.store
                    local.get 3
                    i32.const 4704
                    i32.add
                    local.get 4
                    i32.store
                    local.get 3
                    i32.const 32
                    i32.add
                    local.tee 3
                    i32.const 256
                    i32.ne
                    br_if 0 (;@8;)
                  end
                  local.get 0
                  i32.const -8
                  local.get 0
                  i32.sub
                  i32.const 15
                  i32.and
                  i32.const 0
                  local.get 0
                  i32.const 8
                  i32.add
                  i32.const 15
                  i32.and
                  select
                  local.tee 3
                  i32.add
                  local.tee 4
                  local.get 6
                  i32.const -56
                  i32.add
                  local.tee 5
                  local.get 3
                  i32.sub
                  local.tee 3
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  i32.const 0
                  i32.const 0
                  i32.load offset=5120
                  i32.store offset=4660
                  i32.const 0
                  local.get 3
                  i32.store offset=4644
                  i32.const 0
                  local.get 4
                  i32.store offset=4656
                  local.get 0
                  local.get 5
                  i32.add
                  i32.const 56
                  i32.store offset=4
                  br 2 (;@5;)
                end
                local.get 3
                i32.load8_u offset=12
                i32.const 8
                i32.and
                br_if 0 (;@6;)
                local.get 4
                local.get 5
                i32.lt_u
                br_if 0 (;@6;)
                local.get 4
                local.get 0
                i32.ge_u
                br_if 0 (;@6;)
                local.get 4
                i32.const -8
                local.get 4
                i32.sub
                i32.const 15
                i32.and
                i32.const 0
                local.get 4
                i32.const 8
                i32.add
                i32.const 15
                i32.and
                select
                local.tee 5
                i32.add
                local.tee 0
                i32.const 0
                i32.load offset=4644
                local.get 6
                i32.add
                local.tee 11
                local.get 5
                i32.sub
                local.tee 5
                i32.const 1
                i32.or
                i32.store offset=4
                local.get 3
                local.get 8
                local.get 6
                i32.add
                i32.store offset=4
                i32.const 0
                i32.const 0
                i32.load offset=5120
                i32.store offset=4660
                i32.const 0
                local.get 5
                i32.store offset=4644
                i32.const 0
                local.get 0
                i32.store offset=4656
                local.get 4
                local.get 11
                i32.add
                i32.const 56
                i32.store offset=4
                br 1 (;@5;)
              end
              block  ;; label = @6
                local.get 0
                i32.const 0
                i32.load offset=4648
                local.tee 8
                i32.ge_u
                br_if 0 (;@6;)
                i32.const 0
                local.get 0
                i32.store offset=4648
                local.get 0
                local.set 8
              end
              local.get 0
              local.get 6
              i32.add
              local.set 5
              i32.const 5080
              local.set 3
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            loop  ;; label = @13
                              local.get 3
                              i32.load
                              local.get 5
                              i32.eq
                              br_if 1 (;@12;)
                              local.get 3
                              i32.load offset=8
                              local.tee 3
                              br_if 0 (;@13;)
                              br 2 (;@11;)
                            end
                          end
                          local.get 3
                          i32.load8_u offset=12
                          i32.const 8
                          i32.and
                          i32.eqz
                          br_if 1 (;@10;)
                        end
                        i32.const 5080
                        local.set 3
                        loop  ;; label = @11
                          block  ;; label = @12
                            local.get 3
                            i32.load
                            local.tee 5
                            local.get 4
                            i32.gt_u
                            br_if 0 (;@12;)
                            local.get 5
                            local.get 3
                            i32.load offset=4
                            i32.add
                            local.tee 5
                            local.get 4
                            i32.gt_u
                            br_if 3 (;@9;)
                          end
                          local.get 3
                          i32.load offset=8
                          local.set 3
                          br 0 (;@11;)
                        end
                      end
                      local.get 3
                      local.get 0
                      i32.store
                      local.get 3
                      local.get 3
                      i32.load offset=4
                      local.get 6
                      i32.add
                      i32.store offset=4
                      local.get 0
                      i32.const -8
                      local.get 0
                      i32.sub
                      i32.const 15
                      i32.and
                      i32.const 0
                      local.get 0
                      i32.const 8
                      i32.add
                      i32.const 15
                      i32.and
                      select
                      i32.add
                      local.tee 11
                      local.get 2
                      i32.const 3
                      i32.or
                      i32.store offset=4
                      local.get 5
                      i32.const -8
                      local.get 5
                      i32.sub
                      i32.const 15
                      i32.and
                      i32.const 0
                      local.get 5
                      i32.const 8
                      i32.add
                      i32.const 15
                      i32.and
                      select
                      i32.add
                      local.tee 6
                      local.get 11
                      local.get 2
                      i32.add
                      local.tee 2
                      i32.sub
                      local.set 3
                      block  ;; label = @10
                        local.get 6
                        local.get 4
                        i32.ne
                        br_if 0 (;@10;)
                        i32.const 0
                        local.get 2
                        i32.store offset=4656
                        i32.const 0
                        i32.const 0
                        i32.load offset=4644
                        local.get 3
                        i32.add
                        local.tee 3
                        i32.store offset=4644
                        local.get 2
                        local.get 3
                        i32.const 1
                        i32.or
                        i32.store offset=4
                        br 3 (;@7;)
                      end
                      block  ;; label = @10
                        local.get 6
                        i32.const 0
                        i32.load offset=4652
                        i32.ne
                        br_if 0 (;@10;)
                        i32.const 0
                        local.get 2
                        i32.store offset=4652
                        i32.const 0
                        i32.const 0
                        i32.load offset=4640
                        local.get 3
                        i32.add
                        local.tee 3
                        i32.store offset=4640
                        local.get 2
                        local.get 3
                        i32.const 1
                        i32.or
                        i32.store offset=4
                        local.get 2
                        local.get 3
                        i32.add
                        local.get 3
                        i32.store
                        br 3 (;@7;)
                      end
                      block  ;; label = @10
                        local.get 6
                        i32.load offset=4
                        local.tee 4
                        i32.const 3
                        i32.and
                        i32.const 1
                        i32.ne
                        br_if 0 (;@10;)
                        local.get 4
                        i32.const -8
                        i32.and
                        local.set 7
                        block  ;; label = @11
                          block  ;; label = @12
                            local.get 4
                            i32.const 255
                            i32.gt_u
                            br_if 0 (;@12;)
                            local.get 6
                            i32.load offset=8
                            local.tee 5
                            local.get 4
                            i32.const 3
                            i32.shr_u
                            local.tee 8
                            i32.const 3
                            i32.shl
                            i32.const 4672
                            i32.add
                            local.tee 0
                            i32.eq
                            drop
                            block  ;; label = @13
                              local.get 6
                              i32.load offset=12
                              local.tee 4
                              local.get 5
                              i32.ne
                              br_if 0 (;@13;)
                              i32.const 0
                              i32.const 0
                              i32.load offset=4632
                              i32.const -2
                              local.get 8
                              i32.rotl
                              i32.and
                              i32.store offset=4632
                              br 2 (;@11;)
                            end
                            local.get 4
                            local.get 0
                            i32.eq
                            drop
                            local.get 4
                            local.get 5
                            i32.store offset=8
                            local.get 5
                            local.get 4
                            i32.store offset=12
                            br 1 (;@11;)
                          end
                          local.get 6
                          i32.load offset=24
                          local.set 9
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 6
                              i32.load offset=12
                              local.tee 0
                              local.get 6
                              i32.eq
                              br_if 0 (;@13;)
                              local.get 6
                              i32.load offset=8
                              local.tee 4
                              local.get 8
                              i32.lt_u
                              drop
                              local.get 0
                              local.get 4
                              i32.store offset=8
                              local.get 4
                              local.get 0
                              i32.store offset=12
                              br 1 (;@12;)
                            end
                            block  ;; label = @13
                              local.get 6
                              i32.const 20
                              i32.add
                              local.tee 4
                              i32.load
                              local.tee 5
                              br_if 0 (;@13;)
                              local.get 6
                              i32.const 16
                              i32.add
                              local.tee 4
                              i32.load
                              local.tee 5
                              br_if 0 (;@13;)
                              i32.const 0
                              local.set 0
                              br 1 (;@12;)
                            end
                            loop  ;; label = @13
                              local.get 4
                              local.set 8
                              local.get 5
                              local.tee 0
                              i32.const 20
                              i32.add
                              local.tee 4
                              i32.load
                              local.tee 5
                              br_if 0 (;@13;)
                              local.get 0
                              i32.const 16
                              i32.add
                              local.set 4
                              local.get 0
                              i32.load offset=16
                              local.tee 5
                              br_if 0 (;@13;)
                            end
                            local.get 8
                            i32.const 0
                            i32.store
                          end
                          local.get 9
                          i32.eqz
                          br_if 0 (;@11;)
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 6
                              local.get 6
                              i32.load offset=28
                              local.tee 5
                              i32.const 2
                              i32.shl
                              i32.const 4936
                              i32.add
                              local.tee 4
                              i32.load
                              i32.ne
                              br_if 0 (;@13;)
                              local.get 4
                              local.get 0
                              i32.store
                              local.get 0
                              br_if 1 (;@12;)
                              i32.const 0
                              i32.const 0
                              i32.load offset=4636
                              i32.const -2
                              local.get 5
                              i32.rotl
                              i32.and
                              i32.store offset=4636
                              br 2 (;@11;)
                            end
                            local.get 9
                            i32.const 16
                            i32.const 20
                            local.get 9
                            i32.load offset=16
                            local.get 6
                            i32.eq
                            select
                            i32.add
                            local.get 0
                            i32.store
                            local.get 0
                            i32.eqz
                            br_if 1 (;@11;)
                          end
                          local.get 0
                          local.get 9
                          i32.store offset=24
                          block  ;; label = @12
                            local.get 6
                            i32.load offset=16
                            local.tee 4
                            i32.eqz
                            br_if 0 (;@12;)
                            local.get 0
                            local.get 4
                            i32.store offset=16
                            local.get 4
                            local.get 0
                            i32.store offset=24
                          end
                          local.get 6
                          i32.load offset=20
                          local.tee 4
                          i32.eqz
                          br_if 0 (;@11;)
                          local.get 0
                          i32.const 20
                          i32.add
                          local.get 4
                          i32.store
                          local.get 4
                          local.get 0
                          i32.store offset=24
                        end
                        local.get 7
                        local.get 3
                        i32.add
                        local.set 3
                        local.get 6
                        local.get 7
                        i32.add
                        local.tee 6
                        i32.load offset=4
                        local.set 4
                      end
                      local.get 6
                      local.get 4
                      i32.const -2
                      i32.and
                      i32.store offset=4
                      local.get 2
                      local.get 3
                      i32.add
                      local.get 3
                      i32.store
                      local.get 2
                      local.get 3
                      i32.const 1
                      i32.or
                      i32.store offset=4
                      block  ;; label = @10
                        local.get 3
                        i32.const 255
                        i32.gt_u
                        br_if 0 (;@10;)
                        local.get 3
                        i32.const -8
                        i32.and
                        i32.const 4672
                        i32.add
                        local.set 4
                        block  ;; label = @11
                          block  ;; label = @12
                            i32.const 0
                            i32.load offset=4632
                            local.tee 5
                            i32.const 1
                            local.get 3
                            i32.const 3
                            i32.shr_u
                            i32.shl
                            local.tee 3
                            i32.and
                            br_if 0 (;@12;)
                            i32.const 0
                            local.get 5
                            local.get 3
                            i32.or
                            i32.store offset=4632
                            local.get 4
                            local.set 3
                            br 1 (;@11;)
                          end
                          local.get 4
                          i32.load offset=8
                          local.set 3
                        end
                        local.get 3
                        local.get 2
                        i32.store offset=12
                        local.get 4
                        local.get 2
                        i32.store offset=8
                        local.get 2
                        local.get 4
                        i32.store offset=12
                        local.get 2
                        local.get 3
                        i32.store offset=8
                        br 3 (;@7;)
                      end
                      i32.const 31
                      local.set 4
                      block  ;; label = @10
                        local.get 3
                        i32.const 16777215
                        i32.gt_u
                        br_if 0 (;@10;)
                        local.get 3
                        i32.const 8
                        i32.shr_u
                        local.tee 4
                        local.get 4
                        i32.const 1048320
                        i32.add
                        i32.const 16
                        i32.shr_u
                        i32.const 8
                        i32.and
                        local.tee 4
                        i32.shl
                        local.tee 5
                        local.get 5
                        i32.const 520192
                        i32.add
                        i32.const 16
                        i32.shr_u
                        i32.const 4
                        i32.and
                        local.tee 5
                        i32.shl
                        local.tee 0
                        local.get 0
                        i32.const 245760
                        i32.add
                        i32.const 16
                        i32.shr_u
                        i32.const 2
                        i32.and
                        local.tee 0
                        i32.shl
                        i32.const 15
                        i32.shr_u
                        local.get 4
                        local.get 5
                        i32.or
                        local.get 0
                        i32.or
                        i32.sub
                        local.tee 4
                        i32.const 1
                        i32.shl
                        local.get 3
                        local.get 4
                        i32.const 21
                        i32.add
                        i32.shr_u
                        i32.const 1
                        i32.and
                        i32.or
                        i32.const 28
                        i32.add
                        local.set 4
                      end
                      local.get 2
                      local.get 4
                      i32.store offset=28
                      local.get 2
                      i64.const 0
                      i64.store offset=16 align=4
                      local.get 4
                      i32.const 2
                      i32.shl
                      i32.const 4936
                      i32.add
                      local.set 5
                      block  ;; label = @10
                        i32.const 0
                        i32.load offset=4636
                        local.tee 0
                        i32.const 1
                        local.get 4
                        i32.shl
                        local.tee 8
                        i32.and
                        br_if 0 (;@10;)
                        local.get 5
                        local.get 2
                        i32.store
                        i32.const 0
                        local.get 0
                        local.get 8
                        i32.or
                        i32.store offset=4636
                        local.get 2
                        local.get 5
                        i32.store offset=24
                        local.get 2
                        local.get 2
                        i32.store offset=8
                        local.get 2
                        local.get 2
                        i32.store offset=12
                        br 3 (;@7;)
                      end
                      local.get 3
                      i32.const 0
                      i32.const 25
                      local.get 4
                      i32.const 1
                      i32.shr_u
                      i32.sub
                      local.get 4
                      i32.const 31
                      i32.eq
                      select
                      i32.shl
                      local.set 4
                      local.get 5
                      i32.load
                      local.set 0
                      loop  ;; label = @10
                        local.get 0
                        local.tee 5
                        i32.load offset=4
                        i32.const -8
                        i32.and
                        local.get 3
                        i32.eq
                        br_if 2 (;@8;)
                        local.get 4
                        i32.const 29
                        i32.shr_u
                        local.set 0
                        local.get 4
                        i32.const 1
                        i32.shl
                        local.set 4
                        local.get 5
                        local.get 0
                        i32.const 4
                        i32.and
                        i32.add
                        i32.const 16
                        i32.add
                        local.tee 8
                        i32.load
                        local.tee 0
                        br_if 0 (;@10;)
                      end
                      local.get 8
                      local.get 2
                      i32.store
                      local.get 2
                      local.get 5
                      i32.store offset=24
                      local.get 2
                      local.get 2
                      i32.store offset=12
                      local.get 2
                      local.get 2
                      i32.store offset=8
                      br 2 (;@7;)
                    end
                    local.get 0
                    i32.const -8
                    local.get 0
                    i32.sub
                    i32.const 15
                    i32.and
                    i32.const 0
                    local.get 0
                    i32.const 8
                    i32.add
                    i32.const 15
                    i32.and
                    select
                    local.tee 3
                    i32.add
                    local.tee 11
                    local.get 6
                    i32.const -56
                    i32.add
                    local.tee 8
                    local.get 3
                    i32.sub
                    local.tee 3
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    local.get 0
                    local.get 8
                    i32.add
                    i32.const 56
                    i32.store offset=4
                    local.get 4
                    local.get 5
                    i32.const 55
                    local.get 5
                    i32.sub
                    i32.const 15
                    i32.and
                    i32.const 0
                    local.get 5
                    i32.const -55
                    i32.add
                    i32.const 15
                    i32.and
                    select
                    i32.add
                    i32.const -63
                    i32.add
                    local.tee 8
                    local.get 8
                    local.get 4
                    i32.const 16
                    i32.add
                    i32.lt_u
                    select
                    local.tee 8
                    i32.const 35
                    i32.store offset=4
                    i32.const 0
                    i32.const 0
                    i32.load offset=5120
                    i32.store offset=4660
                    i32.const 0
                    local.get 3
                    i32.store offset=4644
                    i32.const 0
                    local.get 11
                    i32.store offset=4656
                    local.get 8
                    i32.const 16
                    i32.add
                    i32.const 0
                    i64.load offset=5088 align=4
                    i64.store align=4
                    local.get 8
                    i32.const 0
                    i64.load offset=5080 align=4
                    i64.store offset=8 align=4
                    i32.const 0
                    local.get 8
                    i32.const 8
                    i32.add
                    i32.store offset=5088
                    i32.const 0
                    local.get 6
                    i32.store offset=5084
                    i32.const 0
                    local.get 0
                    i32.store offset=5080
                    i32.const 0
                    i32.const 0
                    i32.store offset=5092
                    local.get 8
                    i32.const 36
                    i32.add
                    local.set 3
                    loop  ;; label = @9
                      local.get 3
                      i32.const 7
                      i32.store
                      local.get 3
                      i32.const 4
                      i32.add
                      local.tee 3
                      local.get 5
                      i32.lt_u
                      br_if 0 (;@9;)
                    end
                    local.get 8
                    local.get 4
                    i32.eq
                    br_if 3 (;@5;)
                    local.get 8
                    local.get 8
                    i32.load offset=4
                    i32.const -2
                    i32.and
                    i32.store offset=4
                    local.get 8
                    local.get 8
                    local.get 4
                    i32.sub
                    local.tee 0
                    i32.store
                    local.get 4
                    local.get 0
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    block  ;; label = @9
                      local.get 0
                      i32.const 255
                      i32.gt_u
                      br_if 0 (;@9;)
                      local.get 0
                      i32.const -8
                      i32.and
                      i32.const 4672
                      i32.add
                      local.set 3
                      block  ;; label = @10
                        block  ;; label = @11
                          i32.const 0
                          i32.load offset=4632
                          local.tee 5
                          i32.const 1
                          local.get 0
                          i32.const 3
                          i32.shr_u
                          i32.shl
                          local.tee 0
                          i32.and
                          br_if 0 (;@11;)
                          i32.const 0
                          local.get 5
                          local.get 0
                          i32.or
                          i32.store offset=4632
                          local.get 3
                          local.set 5
                          br 1 (;@10;)
                        end
                        local.get 3
                        i32.load offset=8
                        local.set 5
                      end
                      local.get 5
                      local.get 4
                      i32.store offset=12
                      local.get 3
                      local.get 4
                      i32.store offset=8
                      local.get 4
                      local.get 3
                      i32.store offset=12
                      local.get 4
                      local.get 5
                      i32.store offset=8
                      br 4 (;@5;)
                    end
                    i32.const 31
                    local.set 3
                    block  ;; label = @9
                      local.get 0
                      i32.const 16777215
                      i32.gt_u
                      br_if 0 (;@9;)
                      local.get 0
                      i32.const 8
                      i32.shr_u
                      local.tee 3
                      local.get 3
                      i32.const 1048320
                      i32.add
                      i32.const 16
                      i32.shr_u
                      i32.const 8
                      i32.and
                      local.tee 3
                      i32.shl
                      local.tee 5
                      local.get 5
                      i32.const 520192
                      i32.add
                      i32.const 16
                      i32.shr_u
                      i32.const 4
                      i32.and
                      local.tee 5
                      i32.shl
                      local.tee 8
                      local.get 8
                      i32.const 245760
                      i32.add
                      i32.const 16
                      i32.shr_u
                      i32.const 2
                      i32.and
                      local.tee 8
                      i32.shl
                      i32.const 15
                      i32.shr_u
                      local.get 3
                      local.get 5
                      i32.or
                      local.get 8
                      i32.or
                      i32.sub
                      local.tee 3
                      i32.const 1
                      i32.shl
                      local.get 0
                      local.get 3
                      i32.const 21
                      i32.add
                      i32.shr_u
                      i32.const 1
                      i32.and
                      i32.or
                      i32.const 28
                      i32.add
                      local.set 3
                    end
                    local.get 4
                    local.get 3
                    i32.store offset=28
                    local.get 4
                    i64.const 0
                    i64.store offset=16 align=4
                    local.get 3
                    i32.const 2
                    i32.shl
                    i32.const 4936
                    i32.add
                    local.set 5
                    block  ;; label = @9
                      i32.const 0
                      i32.load offset=4636
                      local.tee 8
                      i32.const 1
                      local.get 3
                      i32.shl
                      local.tee 6
                      i32.and
                      br_if 0 (;@9;)
                      local.get 5
                      local.get 4
                      i32.store
                      i32.const 0
                      local.get 8
                      local.get 6
                      i32.or
                      i32.store offset=4636
                      local.get 4
                      local.get 5
                      i32.store offset=24
                      local.get 4
                      local.get 4
                      i32.store offset=8
                      local.get 4
                      local.get 4
                      i32.store offset=12
                      br 4 (;@5;)
                    end
                    local.get 0
                    i32.const 0
                    i32.const 25
                    local.get 3
                    i32.const 1
                    i32.shr_u
                    i32.sub
                    local.get 3
                    i32.const 31
                    i32.eq
                    select
                    i32.shl
                    local.set 3
                    local.get 5
                    i32.load
                    local.set 8
                    loop  ;; label = @9
                      local.get 8
                      local.tee 5
                      i32.load offset=4
                      i32.const -8
                      i32.and
                      local.get 0
                      i32.eq
                      br_if 3 (;@6;)
                      local.get 3
                      i32.const 29
                      i32.shr_u
                      local.set 8
                      local.get 3
                      i32.const 1
                      i32.shl
                      local.set 3
                      local.get 5
                      local.get 8
                      i32.const 4
                      i32.and
                      i32.add
                      i32.const 16
                      i32.add
                      local.tee 6
                      i32.load
                      local.tee 8
                      br_if 0 (;@9;)
                    end
                    local.get 6
                    local.get 4
                    i32.store
                    local.get 4
                    local.get 5
                    i32.store offset=24
                    local.get 4
                    local.get 4
                    i32.store offset=12
                    local.get 4
                    local.get 4
                    i32.store offset=8
                    br 3 (;@5;)
                  end
                  local.get 5
                  i32.load offset=8
                  local.tee 3
                  local.get 2
                  i32.store offset=12
                  local.get 5
                  local.get 2
                  i32.store offset=8
                  local.get 2
                  i32.const 0
                  i32.store offset=24
                  local.get 2
                  local.get 5
                  i32.store offset=12
                  local.get 2
                  local.get 3
                  i32.store offset=8
                end
                local.get 11
                i32.const 8
                i32.add
                local.set 3
                br 5 (;@1;)
              end
              local.get 5
              i32.load offset=8
              local.tee 3
              local.get 4
              i32.store offset=12
              local.get 5
              local.get 4
              i32.store offset=8
              local.get 4
              i32.const 0
              i32.store offset=24
              local.get 4
              local.get 5
              i32.store offset=12
              local.get 4
              local.get 3
              i32.store offset=8
            end
            i32.const 0
            i32.load offset=4644
            local.tee 3
            local.get 2
            i32.le_u
            br_if 0 (;@4;)
            i32.const 0
            i32.load offset=4656
            local.tee 4
            local.get 2
            i32.add
            local.tee 5
            local.get 3
            local.get 2
            i32.sub
            local.tee 3
            i32.const 1
            i32.or
            i32.store offset=4
            i32.const 0
            local.get 3
            i32.store offset=4644
            i32.const 0
            local.get 5
            i32.store offset=4656
            local.get 4
            local.get 2
            i32.const 3
            i32.or
            i32.store offset=4
            local.get 4
            i32.const 8
            i32.add
            local.set 3
            br 3 (;@1;)
          end
          i32.const 0
          local.set 3
          i32.const 0
          i32.const 48
          i32.store offset=5128
          br 2 (;@1;)
        end
        block  ;; label = @3
          local.get 11
          i32.eqz
          br_if 0 (;@3;)
          block  ;; label = @4
            block  ;; label = @5
              local.get 8
              local.get 8
              i32.load offset=28
              local.tee 5
              i32.const 2
              i32.shl
              i32.const 4936
              i32.add
              local.tee 3
              i32.load
              i32.ne
              br_if 0 (;@5;)
              local.get 3
              local.get 0
              i32.store
              local.get 0
              br_if 1 (;@4;)
              i32.const 0
              local.get 7
              i32.const -2
              local.get 5
              i32.rotl
              i32.and
              local.tee 7
              i32.store offset=4636
              br 2 (;@3;)
            end
            local.get 11
            i32.const 16
            i32.const 20
            local.get 11
            i32.load offset=16
            local.get 8
            i32.eq
            select
            i32.add
            local.get 0
            i32.store
            local.get 0
            i32.eqz
            br_if 1 (;@3;)
          end
          local.get 0
          local.get 11
          i32.store offset=24
          block  ;; label = @4
            local.get 8
            i32.load offset=16
            local.tee 3
            i32.eqz
            br_if 0 (;@4;)
            local.get 0
            local.get 3
            i32.store offset=16
            local.get 3
            local.get 0
            i32.store offset=24
          end
          local.get 8
          i32.const 20
          i32.add
          i32.load
          local.tee 3
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          i32.const 20
          i32.add
          local.get 3
          i32.store
          local.get 3
          local.get 0
          i32.store offset=24
        end
        block  ;; label = @3
          block  ;; label = @4
            local.get 4
            i32.const 15
            i32.gt_u
            br_if 0 (;@4;)
            local.get 8
            local.get 4
            local.get 2
            i32.add
            local.tee 3
            i32.const 3
            i32.or
            i32.store offset=4
            local.get 8
            local.get 3
            i32.add
            local.tee 3
            local.get 3
            i32.load offset=4
            i32.const 1
            i32.or
            i32.store offset=4
            br 1 (;@3;)
          end
          local.get 8
          local.get 2
          i32.add
          local.tee 0
          local.get 4
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 8
          local.get 2
          i32.const 3
          i32.or
          i32.store offset=4
          local.get 0
          local.get 4
          i32.add
          local.get 4
          i32.store
          block  ;; label = @4
            local.get 4
            i32.const 255
            i32.gt_u
            br_if 0 (;@4;)
            local.get 4
            i32.const -8
            i32.and
            i32.const 4672
            i32.add
            local.set 3
            block  ;; label = @5
              block  ;; label = @6
                i32.const 0
                i32.load offset=4632
                local.tee 5
                i32.const 1
                local.get 4
                i32.const 3
                i32.shr_u
                i32.shl
                local.tee 4
                i32.and
                br_if 0 (;@6;)
                i32.const 0
                local.get 5
                local.get 4
                i32.or
                i32.store offset=4632
                local.get 3
                local.set 4
                br 1 (;@5;)
              end
              local.get 3
              i32.load offset=8
              local.set 4
            end
            local.get 4
            local.get 0
            i32.store offset=12
            local.get 3
            local.get 0
            i32.store offset=8
            local.get 0
            local.get 3
            i32.store offset=12
            local.get 0
            local.get 4
            i32.store offset=8
            br 1 (;@3;)
          end
          i32.const 31
          local.set 3
          block  ;; label = @4
            local.get 4
            i32.const 16777215
            i32.gt_u
            br_if 0 (;@4;)
            local.get 4
            i32.const 8
            i32.shr_u
            local.tee 3
            local.get 3
            i32.const 1048320
            i32.add
            i32.const 16
            i32.shr_u
            i32.const 8
            i32.and
            local.tee 3
            i32.shl
            local.tee 5
            local.get 5
            i32.const 520192
            i32.add
            i32.const 16
            i32.shr_u
            i32.const 4
            i32.and
            local.tee 5
            i32.shl
            local.tee 2
            local.get 2
            i32.const 245760
            i32.add
            i32.const 16
            i32.shr_u
            i32.const 2
            i32.and
            local.tee 2
            i32.shl
            i32.const 15
            i32.shr_u
            local.get 3
            local.get 5
            i32.or
            local.get 2
            i32.or
            i32.sub
            local.tee 3
            i32.const 1
            i32.shl
            local.get 4
            local.get 3
            i32.const 21
            i32.add
            i32.shr_u
            i32.const 1
            i32.and
            i32.or
            i32.const 28
            i32.add
            local.set 3
          end
          local.get 0
          local.get 3
          i32.store offset=28
          local.get 0
          i64.const 0
          i64.store offset=16 align=4
          local.get 3
          i32.const 2
          i32.shl
          i32.const 4936
          i32.add
          local.set 5
          block  ;; label = @4
            local.get 7
            i32.const 1
            local.get 3
            i32.shl
            local.tee 2
            i32.and
            br_if 0 (;@4;)
            local.get 5
            local.get 0
            i32.store
            i32.const 0
            local.get 7
            local.get 2
            i32.or
            i32.store offset=4636
            local.get 0
            local.get 5
            i32.store offset=24
            local.get 0
            local.get 0
            i32.store offset=8
            local.get 0
            local.get 0
            i32.store offset=12
            br 1 (;@3;)
          end
          local.get 4
          i32.const 0
          i32.const 25
          local.get 3
          i32.const 1
          i32.shr_u
          i32.sub
          local.get 3
          i32.const 31
          i32.eq
          select
          i32.shl
          local.set 3
          local.get 5
          i32.load
          local.set 2
          block  ;; label = @4
            loop  ;; label = @5
              local.get 2
              local.tee 5
              i32.load offset=4
              i32.const -8
              i32.and
              local.get 4
              i32.eq
              br_if 1 (;@4;)
              local.get 3
              i32.const 29
              i32.shr_u
              local.set 2
              local.get 3
              i32.const 1
              i32.shl
              local.set 3
              local.get 5
              local.get 2
              i32.const 4
              i32.and
              i32.add
              i32.const 16
              i32.add
              local.tee 6
              i32.load
              local.tee 2
              br_if 0 (;@5;)
            end
            local.get 6
            local.get 0
            i32.store
            local.get 0
            local.get 5
            i32.store offset=24
            local.get 0
            local.get 0
            i32.store offset=12
            local.get 0
            local.get 0
            i32.store offset=8
            br 1 (;@3;)
          end
          local.get 5
          i32.load offset=8
          local.tee 3
          local.get 0
          i32.store offset=12
          local.get 5
          local.get 0
          i32.store offset=8
          local.get 0
          i32.const 0
          i32.store offset=24
          local.get 0
          local.get 5
          i32.store offset=12
          local.get 0
          local.get 3
          i32.store offset=8
        end
        local.get 8
        i32.const 8
        i32.add
        local.set 3
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 10
        i32.eqz
        br_if 0 (;@2;)
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            local.get 0
            i32.load offset=28
            local.tee 5
            i32.const 2
            i32.shl
            i32.const 4936
            i32.add
            local.tee 3
            i32.load
            i32.ne
            br_if 0 (;@4;)
            local.get 3
            local.get 8
            i32.store
            local.get 8
            br_if 1 (;@3;)
            i32.const 0
            local.get 9
            i32.const -2
            local.get 5
            i32.rotl
            i32.and
            i32.store offset=4636
            br 2 (;@2;)
          end
          local.get 10
          i32.const 16
          i32.const 20
          local.get 10
          i32.load offset=16
          local.get 0
          i32.eq
          select
          i32.add
          local.get 8
          i32.store
          local.get 8
          i32.eqz
          br_if 1 (;@2;)
        end
        local.get 8
        local.get 10
        i32.store offset=24
        block  ;; label = @3
          local.get 0
          i32.load offset=16
          local.tee 3
          i32.eqz
          br_if 0 (;@3;)
          local.get 8
          local.get 3
          i32.store offset=16
          local.get 3
          local.get 8
          i32.store offset=24
        end
        local.get 0
        i32.const 20
        i32.add
        i32.load
        local.tee 3
        i32.eqz
        br_if 0 (;@2;)
        local.get 8
        i32.const 20
        i32.add
        local.get 3
        i32.store
        local.get 3
        local.get 8
        i32.store offset=24
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 4
          i32.const 15
          i32.gt_u
          br_if 0 (;@3;)
          local.get 0
          local.get 4
          local.get 2
          i32.add
          local.tee 3
          i32.const 3
          i32.or
          i32.store offset=4
          local.get 0
          local.get 3
          i32.add
          local.tee 3
          local.get 3
          i32.load offset=4
          i32.const 1
          i32.or
          i32.store offset=4
          br 1 (;@2;)
        end
        local.get 0
        local.get 2
        i32.add
        local.tee 5
        local.get 4
        i32.const 1
        i32.or
        i32.store offset=4
        local.get 0
        local.get 2
        i32.const 3
        i32.or
        i32.store offset=4
        local.get 5
        local.get 4
        i32.add
        local.get 4
        i32.store
        block  ;; label = @3
          local.get 7
          i32.eqz
          br_if 0 (;@3;)
          local.get 7
          i32.const -8
          i32.and
          i32.const 4672
          i32.add
          local.set 2
          i32.const 0
          i32.load offset=4652
          local.set 3
          block  ;; label = @4
            block  ;; label = @5
              i32.const 1
              local.get 7
              i32.const 3
              i32.shr_u
              i32.shl
              local.tee 8
              local.get 6
              i32.and
              br_if 0 (;@5;)
              i32.const 0
              local.get 8
              local.get 6
              i32.or
              i32.store offset=4632
              local.get 2
              local.set 8
              br 1 (;@4;)
            end
            local.get 2
            i32.load offset=8
            local.set 8
          end
          local.get 8
          local.get 3
          i32.store offset=12
          local.get 2
          local.get 3
          i32.store offset=8
          local.get 3
          local.get 2
          i32.store offset=12
          local.get 3
          local.get 8
          i32.store offset=8
        end
        i32.const 0
        local.get 5
        i32.store offset=4652
        i32.const 0
        local.get 4
        i32.store offset=4640
      end
      local.get 0
      i32.const 8
      i32.add
      local.set 3
    end
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 3)
  (func $free (type 8) (param i32)
    local.get 0
    call $dlfree)
  (func $dlfree (type 8) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const -8
      i32.add
      local.tee 1
      local.get 0
      i32.const -4
      i32.add
      i32.load
      local.tee 2
      i32.const -8
      i32.and
      local.tee 0
      i32.add
      local.set 3
      block  ;; label = @2
        local.get 2
        i32.const 1
        i32.and
        br_if 0 (;@2;)
        local.get 2
        i32.const 3
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 1
        local.get 1
        i32.load
        local.tee 2
        i32.sub
        local.tee 1
        i32.const 0
        i32.load offset=4648
        local.tee 4
        i32.lt_u
        br_if 1 (;@1;)
        local.get 2
        local.get 0
        i32.add
        local.set 0
        block  ;; label = @3
          local.get 1
          i32.const 0
          i32.load offset=4652
          i32.eq
          br_if 0 (;@3;)
          block  ;; label = @4
            local.get 2
            i32.const 255
            i32.gt_u
            br_if 0 (;@4;)
            local.get 1
            i32.load offset=8
            local.tee 4
            local.get 2
            i32.const 3
            i32.shr_u
            local.tee 5
            i32.const 3
            i32.shl
            i32.const 4672
            i32.add
            local.tee 6
            i32.eq
            drop
            block  ;; label = @5
              local.get 1
              i32.load offset=12
              local.tee 2
              local.get 4
              i32.ne
              br_if 0 (;@5;)
              i32.const 0
              i32.const 0
              i32.load offset=4632
              i32.const -2
              local.get 5
              i32.rotl
              i32.and
              i32.store offset=4632
              br 3 (;@2;)
            end
            local.get 2
            local.get 6
            i32.eq
            drop
            local.get 2
            local.get 4
            i32.store offset=8
            local.get 4
            local.get 2
            i32.store offset=12
            br 2 (;@2;)
          end
          local.get 1
          i32.load offset=24
          local.set 7
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              i32.load offset=12
              local.tee 6
              local.get 1
              i32.eq
              br_if 0 (;@5;)
              local.get 1
              i32.load offset=8
              local.tee 2
              local.get 4
              i32.lt_u
              drop
              local.get 6
              local.get 2
              i32.store offset=8
              local.get 2
              local.get 6
              i32.store offset=12
              br 1 (;@4;)
            end
            block  ;; label = @5
              local.get 1
              i32.const 20
              i32.add
              local.tee 2
              i32.load
              local.tee 4
              br_if 0 (;@5;)
              local.get 1
              i32.const 16
              i32.add
              local.tee 2
              i32.load
              local.tee 4
              br_if 0 (;@5;)
              i32.const 0
              local.set 6
              br 1 (;@4;)
            end
            loop  ;; label = @5
              local.get 2
              local.set 5
              local.get 4
              local.tee 6
              i32.const 20
              i32.add
              local.tee 2
              i32.load
              local.tee 4
              br_if 0 (;@5;)
              local.get 6
              i32.const 16
              i32.add
              local.set 2
              local.get 6
              i32.load offset=16
              local.tee 4
              br_if 0 (;@5;)
            end
            local.get 5
            i32.const 0
            i32.store
          end
          local.get 7
          i32.eqz
          br_if 1 (;@2;)
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              local.get 1
              i32.load offset=28
              local.tee 4
              i32.const 2
              i32.shl
              i32.const 4936
              i32.add
              local.tee 2
              i32.load
              i32.ne
              br_if 0 (;@5;)
              local.get 2
              local.get 6
              i32.store
              local.get 6
              br_if 1 (;@4;)
              i32.const 0
              i32.const 0
              i32.load offset=4636
              i32.const -2
              local.get 4
              i32.rotl
              i32.and
              i32.store offset=4636
              br 3 (;@2;)
            end
            local.get 7
            i32.const 16
            i32.const 20
            local.get 7
            i32.load offset=16
            local.get 1
            i32.eq
            select
            i32.add
            local.get 6
            i32.store
            local.get 6
            i32.eqz
            br_if 2 (;@2;)
          end
          local.get 6
          local.get 7
          i32.store offset=24
          block  ;; label = @4
            local.get 1
            i32.load offset=16
            local.tee 2
            i32.eqz
            br_if 0 (;@4;)
            local.get 6
            local.get 2
            i32.store offset=16
            local.get 2
            local.get 6
            i32.store offset=24
          end
          local.get 1
          i32.load offset=20
          local.tee 2
          i32.eqz
          br_if 1 (;@2;)
          local.get 6
          i32.const 20
          i32.add
          local.get 2
          i32.store
          local.get 2
          local.get 6
          i32.store offset=24
          br 1 (;@2;)
        end
        local.get 3
        i32.load offset=4
        local.tee 2
        i32.const 3
        i32.and
        i32.const 3
        i32.ne
        br_if 0 (;@2;)
        local.get 3
        local.get 2
        i32.const -2
        i32.and
        i32.store offset=4
        i32.const 0
        local.get 0
        i32.store offset=4640
        local.get 1
        local.get 0
        i32.add
        local.get 0
        i32.store
        local.get 1
        local.get 0
        i32.const 1
        i32.or
        i32.store offset=4
        return
      end
      local.get 1
      local.get 3
      i32.ge_u
      br_if 0 (;@1;)
      local.get 3
      i32.load offset=4
      local.tee 2
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.const 2
          i32.and
          br_if 0 (;@3;)
          block  ;; label = @4
            local.get 3
            i32.const 0
            i32.load offset=4656
            i32.ne
            br_if 0 (;@4;)
            i32.const 0
            local.get 1
            i32.store offset=4656
            i32.const 0
            i32.const 0
            i32.load offset=4644
            local.get 0
            i32.add
            local.tee 0
            i32.store offset=4644
            local.get 1
            local.get 0
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 1
            i32.const 0
            i32.load offset=4652
            i32.ne
            br_if 3 (;@1;)
            i32.const 0
            i32.const 0
            i32.store offset=4640
            i32.const 0
            i32.const 0
            i32.store offset=4652
            return
          end
          block  ;; label = @4
            local.get 3
            i32.const 0
            i32.load offset=4652
            i32.ne
            br_if 0 (;@4;)
            i32.const 0
            local.get 1
            i32.store offset=4652
            i32.const 0
            i32.const 0
            i32.load offset=4640
            local.get 0
            i32.add
            local.tee 0
            i32.store offset=4640
            local.get 1
            local.get 0
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 1
            local.get 0
            i32.add
            local.get 0
            i32.store
            return
          end
          local.get 2
          i32.const -8
          i32.and
          local.get 0
          i32.add
          local.set 0
          block  ;; label = @4
            block  ;; label = @5
              local.get 2
              i32.const 255
              i32.gt_u
              br_if 0 (;@5;)
              local.get 3
              i32.load offset=8
              local.tee 4
              local.get 2
              i32.const 3
              i32.shr_u
              local.tee 5
              i32.const 3
              i32.shl
              i32.const 4672
              i32.add
              local.tee 6
              i32.eq
              drop
              block  ;; label = @6
                local.get 3
                i32.load offset=12
                local.tee 2
                local.get 4
                i32.ne
                br_if 0 (;@6;)
                i32.const 0
                i32.const 0
                i32.load offset=4632
                i32.const -2
                local.get 5
                i32.rotl
                i32.and
                i32.store offset=4632
                br 2 (;@4;)
              end
              local.get 2
              local.get 6
              i32.eq
              drop
              local.get 2
              local.get 4
              i32.store offset=8
              local.get 4
              local.get 2
              i32.store offset=12
              br 1 (;@4;)
            end
            local.get 3
            i32.load offset=24
            local.set 7
            block  ;; label = @5
              block  ;; label = @6
                local.get 3
                i32.load offset=12
                local.tee 6
                local.get 3
                i32.eq
                br_if 0 (;@6;)
                local.get 3
                i32.load offset=8
                local.tee 2
                i32.const 0
                i32.load offset=4648
                i32.lt_u
                drop
                local.get 6
                local.get 2
                i32.store offset=8
                local.get 2
                local.get 6
                i32.store offset=12
                br 1 (;@5;)
              end
              block  ;; label = @6
                local.get 3
                i32.const 20
                i32.add
                local.tee 2
                i32.load
                local.tee 4
                br_if 0 (;@6;)
                local.get 3
                i32.const 16
                i32.add
                local.tee 2
                i32.load
                local.tee 4
                br_if 0 (;@6;)
                i32.const 0
                local.set 6
                br 1 (;@5;)
              end
              loop  ;; label = @6
                local.get 2
                local.set 5
                local.get 4
                local.tee 6
                i32.const 20
                i32.add
                local.tee 2
                i32.load
                local.tee 4
                br_if 0 (;@6;)
                local.get 6
                i32.const 16
                i32.add
                local.set 2
                local.get 6
                i32.load offset=16
                local.tee 4
                br_if 0 (;@6;)
              end
              local.get 5
              i32.const 0
              i32.store
            end
            local.get 7
            i32.eqz
            br_if 0 (;@4;)
            block  ;; label = @5
              block  ;; label = @6
                local.get 3
                local.get 3
                i32.load offset=28
                local.tee 4
                i32.const 2
                i32.shl
                i32.const 4936
                i32.add
                local.tee 2
                i32.load
                i32.ne
                br_if 0 (;@6;)
                local.get 2
                local.get 6
                i32.store
                local.get 6
                br_if 1 (;@5;)
                i32.const 0
                i32.const 0
                i32.load offset=4636
                i32.const -2
                local.get 4
                i32.rotl
                i32.and
                i32.store offset=4636
                br 2 (;@4;)
              end
              local.get 7
              i32.const 16
              i32.const 20
              local.get 7
              i32.load offset=16
              local.get 3
              i32.eq
              select
              i32.add
              local.get 6
              i32.store
              local.get 6
              i32.eqz
              br_if 1 (;@4;)
            end
            local.get 6
            local.get 7
            i32.store offset=24
            block  ;; label = @5
              local.get 3
              i32.load offset=16
              local.tee 2
              i32.eqz
              br_if 0 (;@5;)
              local.get 6
              local.get 2
              i32.store offset=16
              local.get 2
              local.get 6
              i32.store offset=24
            end
            local.get 3
            i32.load offset=20
            local.tee 2
            i32.eqz
            br_if 0 (;@4;)
            local.get 6
            i32.const 20
            i32.add
            local.get 2
            i32.store
            local.get 2
            local.get 6
            i32.store offset=24
          end
          local.get 1
          local.get 0
          i32.add
          local.get 0
          i32.store
          local.get 1
          local.get 0
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 1
          i32.const 0
          i32.load offset=4652
          i32.ne
          br_if 1 (;@2;)
          i32.const 0
          local.get 0
          i32.store offset=4640
          return
        end
        local.get 3
        local.get 2
        i32.const -2
        i32.and
        i32.store offset=4
        local.get 1
        local.get 0
        i32.add
        local.get 0
        i32.store
        local.get 1
        local.get 0
        i32.const 1
        i32.or
        i32.store offset=4
      end
      block  ;; label = @2
        local.get 0
        i32.const 255
        i32.gt_u
        br_if 0 (;@2;)
        local.get 0
        i32.const -8
        i32.and
        i32.const 4672
        i32.add
        local.set 2
        block  ;; label = @3
          block  ;; label = @4
            i32.const 0
            i32.load offset=4632
            local.tee 4
            i32.const 1
            local.get 0
            i32.const 3
            i32.shr_u
            i32.shl
            local.tee 0
            i32.and
            br_if 0 (;@4;)
            i32.const 0
            local.get 4
            local.get 0
            i32.or
            i32.store offset=4632
            local.get 2
            local.set 0
            br 1 (;@3;)
          end
          local.get 2
          i32.load offset=8
          local.set 0
        end
        local.get 0
        local.get 1
        i32.store offset=12
        local.get 2
        local.get 1
        i32.store offset=8
        local.get 1
        local.get 2
        i32.store offset=12
        local.get 1
        local.get 0
        i32.store offset=8
        return
      end
      i32.const 31
      local.set 2
      block  ;; label = @2
        local.get 0
        i32.const 16777215
        i32.gt_u
        br_if 0 (;@2;)
        local.get 0
        i32.const 8
        i32.shr_u
        local.tee 2
        local.get 2
        i32.const 1048320
        i32.add
        i32.const 16
        i32.shr_u
        i32.const 8
        i32.and
        local.tee 2
        i32.shl
        local.tee 4
        local.get 4
        i32.const 520192
        i32.add
        i32.const 16
        i32.shr_u
        i32.const 4
        i32.and
        local.tee 4
        i32.shl
        local.tee 6
        local.get 6
        i32.const 245760
        i32.add
        i32.const 16
        i32.shr_u
        i32.const 2
        i32.and
        local.tee 6
        i32.shl
        i32.const 15
        i32.shr_u
        local.get 2
        local.get 4
        i32.or
        local.get 6
        i32.or
        i32.sub
        local.tee 2
        i32.const 1
        i32.shl
        local.get 0
        local.get 2
        i32.const 21
        i32.add
        i32.shr_u
        i32.const 1
        i32.and
        i32.or
        i32.const 28
        i32.add
        local.set 2
      end
      local.get 1
      local.get 2
      i32.store offset=28
      local.get 1
      i64.const 0
      i64.store offset=16 align=4
      local.get 2
      i32.const 2
      i32.shl
      i32.const 4936
      i32.add
      local.set 4
      block  ;; label = @2
        block  ;; label = @3
          i32.const 0
          i32.load offset=4636
          local.tee 6
          i32.const 1
          local.get 2
          i32.shl
          local.tee 3
          i32.and
          br_if 0 (;@3;)
          local.get 4
          local.get 1
          i32.store
          i32.const 0
          local.get 6
          local.get 3
          i32.or
          i32.store offset=4636
          local.get 1
          local.get 4
          i32.store offset=24
          local.get 1
          local.get 1
          i32.store offset=8
          local.get 1
          local.get 1
          i32.store offset=12
          br 1 (;@2;)
        end
        local.get 0
        i32.const 0
        i32.const 25
        local.get 2
        i32.const 1
        i32.shr_u
        i32.sub
        local.get 2
        i32.const 31
        i32.eq
        select
        i32.shl
        local.set 2
        local.get 4
        i32.load
        local.set 6
        block  ;; label = @3
          loop  ;; label = @4
            local.get 6
            local.tee 4
            i32.load offset=4
            i32.const -8
            i32.and
            local.get 0
            i32.eq
            br_if 1 (;@3;)
            local.get 2
            i32.const 29
            i32.shr_u
            local.set 6
            local.get 2
            i32.const 1
            i32.shl
            local.set 2
            local.get 4
            local.get 6
            i32.const 4
            i32.and
            i32.add
            i32.const 16
            i32.add
            local.tee 3
            i32.load
            local.tee 6
            br_if 0 (;@4;)
          end
          local.get 3
          local.get 1
          i32.store
          local.get 1
          local.get 4
          i32.store offset=24
          local.get 1
          local.get 1
          i32.store offset=12
          local.get 1
          local.get 1
          i32.store offset=8
          br 1 (;@2;)
        end
        local.get 4
        i32.load offset=8
        local.tee 0
        local.get 1
        i32.store offset=12
        local.get 4
        local.get 1
        i32.store offset=8
        local.get 1
        i32.const 0
        i32.store offset=24
        local.get 1
        local.get 4
        i32.store offset=12
        local.get 1
        local.get 0
        i32.store offset=8
      end
      i32.const 0
      i32.const 0
      i32.load offset=4664
      i32.const -1
      i32.add
      local.tee 1
      i32.const -1
      local.get 1
      select
      i32.store offset=4664
    end)
  (func $calloc (type 3) (param i32 i32) (result i32)
    (local i32 i64)
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        br_if 0 (;@2;)
        i32.const 0
        local.set 2
        br 1 (;@1;)
      end
      local.get 0
      i64.extend_i32_u
      local.get 1
      i64.extend_i32_u
      i64.mul
      local.tee 3
      i32.wrap_i64
      local.set 2
      local.get 1
      local.get 0
      i32.or
      i32.const 65536
      i32.lt_u
      br_if 0 (;@1;)
      i32.const -1
      local.get 2
      local.get 3
      i64.const 32
      i64.shr_u
      i32.wrap_i64
      i32.const 0
      i32.ne
      select
      local.set 2
    end
    block  ;; label = @1
      local.get 2
      call $dlmalloc
      local.tee 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const -4
      i32.add
      i32.load8_u
      i32.const 3
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const 0
      local.get 2
      call $memset
      drop
    end
    local.get 0)
  (func $realloc (type 3) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      local.get 1
      call $dlmalloc
      return
    end
    block  ;; label = @1
      local.get 1
      i32.const -64
      i32.lt_u
      br_if 0 (;@1;)
      i32.const 0
      i32.const 48
      i32.store offset=5128
      i32.const 0
      return
    end
    i32.const 16
    local.get 1
    i32.const 19
    i32.add
    i32.const -16
    i32.and
    local.get 1
    i32.const 11
    i32.lt_u
    select
    local.set 2
    local.get 0
    i32.const -4
    i32.add
    local.tee 3
    i32.load
    local.tee 4
    i32.const -8
    i32.and
    local.set 5
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 4
          i32.const 3
          i32.and
          br_if 0 (;@3;)
          local.get 2
          i32.const 256
          i32.lt_u
          br_if 1 (;@2;)
          local.get 5
          local.get 2
          i32.const 4
          i32.or
          i32.lt_u
          br_if 1 (;@2;)
          local.get 5
          local.get 2
          i32.sub
          i32.const 0
          i32.load offset=5112
          i32.const 1
          i32.shl
          i32.le_u
          br_if 2 (;@1;)
          br 1 (;@2;)
        end
        local.get 0
        i32.const -8
        i32.add
        local.tee 6
        local.get 5
        i32.add
        local.set 7
        block  ;; label = @3
          local.get 5
          local.get 2
          i32.lt_u
          br_if 0 (;@3;)
          local.get 5
          local.get 2
          i32.sub
          local.tee 1
          i32.const 16
          i32.lt_u
          br_if 2 (;@1;)
          local.get 3
          local.get 2
          local.get 4
          i32.const 1
          i32.and
          i32.or
          i32.const 2
          i32.or
          i32.store
          local.get 6
          local.get 2
          i32.add
          local.tee 2
          local.get 1
          i32.const 3
          i32.or
          i32.store offset=4
          local.get 7
          local.get 7
          i32.load offset=4
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 2
          local.get 1
          call $dispose_chunk
          local.get 0
          return
        end
        block  ;; label = @3
          local.get 7
          i32.const 0
          i32.load offset=4656
          i32.ne
          br_if 0 (;@3;)
          i32.const 0
          i32.load offset=4644
          local.get 5
          i32.add
          local.tee 5
          local.get 2
          i32.le_u
          br_if 1 (;@2;)
          local.get 3
          local.get 2
          local.get 4
          i32.const 1
          i32.and
          i32.or
          i32.const 2
          i32.or
          i32.store
          i32.const 0
          local.get 6
          local.get 2
          i32.add
          local.tee 1
          i32.store offset=4656
          i32.const 0
          local.get 5
          local.get 2
          i32.sub
          local.tee 2
          i32.store offset=4644
          local.get 1
          local.get 2
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 0
          return
        end
        block  ;; label = @3
          local.get 7
          i32.const 0
          i32.load offset=4652
          i32.ne
          br_if 0 (;@3;)
          i32.const 0
          i32.load offset=4640
          local.get 5
          i32.add
          local.tee 5
          local.get 2
          i32.lt_u
          br_if 1 (;@2;)
          block  ;; label = @4
            block  ;; label = @5
              local.get 5
              local.get 2
              i32.sub
              local.tee 1
              i32.const 16
              i32.lt_u
              br_if 0 (;@5;)
              local.get 3
              local.get 2
              local.get 4
              i32.const 1
              i32.and
              i32.or
              i32.const 2
              i32.or
              i32.store
              local.get 6
              local.get 2
              i32.add
              local.tee 2
              local.get 1
              i32.const 1
              i32.or
              i32.store offset=4
              local.get 6
              local.get 5
              i32.add
              local.tee 5
              local.get 1
              i32.store
              local.get 5
              local.get 5
              i32.load offset=4
              i32.const -2
              i32.and
              i32.store offset=4
              br 1 (;@4;)
            end
            local.get 3
            local.get 4
            i32.const 1
            i32.and
            local.get 5
            i32.or
            i32.const 2
            i32.or
            i32.store
            local.get 6
            local.get 5
            i32.add
            local.tee 1
            local.get 1
            i32.load offset=4
            i32.const 1
            i32.or
            i32.store offset=4
            i32.const 0
            local.set 1
            i32.const 0
            local.set 2
          end
          i32.const 0
          local.get 2
          i32.store offset=4652
          i32.const 0
          local.get 1
          i32.store offset=4640
          local.get 0
          return
        end
        local.get 7
        i32.load offset=4
        local.tee 8
        i32.const 2
        i32.and
        br_if 0 (;@2;)
        local.get 8
        i32.const -8
        i32.and
        local.get 5
        i32.add
        local.tee 9
        local.get 2
        i32.lt_u
        br_if 0 (;@2;)
        local.get 9
        local.get 2
        i32.sub
        local.set 10
        block  ;; label = @3
          block  ;; label = @4
            local.get 8
            i32.const 255
            i32.gt_u
            br_if 0 (;@4;)
            local.get 7
            i32.load offset=8
            local.tee 1
            local.get 8
            i32.const 3
            i32.shr_u
            local.tee 11
            i32.const 3
            i32.shl
            i32.const 4672
            i32.add
            local.tee 8
            i32.eq
            drop
            block  ;; label = @5
              local.get 7
              i32.load offset=12
              local.tee 5
              local.get 1
              i32.ne
              br_if 0 (;@5;)
              i32.const 0
              i32.const 0
              i32.load offset=4632
              i32.const -2
              local.get 11
              i32.rotl
              i32.and
              i32.store offset=4632
              br 2 (;@3;)
            end
            local.get 5
            local.get 8
            i32.eq
            drop
            local.get 5
            local.get 1
            i32.store offset=8
            local.get 1
            local.get 5
            i32.store offset=12
            br 1 (;@3;)
          end
          local.get 7
          i32.load offset=24
          local.set 12
          block  ;; label = @4
            block  ;; label = @5
              local.get 7
              i32.load offset=12
              local.tee 8
              local.get 7
              i32.eq
              br_if 0 (;@5;)
              local.get 7
              i32.load offset=8
              local.tee 1
              i32.const 0
              i32.load offset=4648
              i32.lt_u
              drop
              local.get 8
              local.get 1
              i32.store offset=8
              local.get 1
              local.get 8
              i32.store offset=12
              br 1 (;@4;)
            end
            block  ;; label = @5
              local.get 7
              i32.const 20
              i32.add
              local.tee 1
              i32.load
              local.tee 5
              br_if 0 (;@5;)
              local.get 7
              i32.const 16
              i32.add
              local.tee 1
              i32.load
              local.tee 5
              br_if 0 (;@5;)
              i32.const 0
              local.set 8
              br 1 (;@4;)
            end
            loop  ;; label = @5
              local.get 1
              local.set 11
              local.get 5
              local.tee 8
              i32.const 20
              i32.add
              local.tee 1
              i32.load
              local.tee 5
              br_if 0 (;@5;)
              local.get 8
              i32.const 16
              i32.add
              local.set 1
              local.get 8
              i32.load offset=16
              local.tee 5
              br_if 0 (;@5;)
            end
            local.get 11
            i32.const 0
            i32.store
          end
          local.get 12
          i32.eqz
          br_if 0 (;@3;)
          block  ;; label = @4
            block  ;; label = @5
              local.get 7
              local.get 7
              i32.load offset=28
              local.tee 5
              i32.const 2
              i32.shl
              i32.const 4936
              i32.add
              local.tee 1
              i32.load
              i32.ne
              br_if 0 (;@5;)
              local.get 1
              local.get 8
              i32.store
              local.get 8
              br_if 1 (;@4;)
              i32.const 0
              i32.const 0
              i32.load offset=4636
              i32.const -2
              local.get 5
              i32.rotl
              i32.and
              i32.store offset=4636
              br 2 (;@3;)
            end
            local.get 12
            i32.const 16
            i32.const 20
            local.get 12
            i32.load offset=16
            local.get 7
            i32.eq
            select
            i32.add
            local.get 8
            i32.store
            local.get 8
            i32.eqz
            br_if 1 (;@3;)
          end
          local.get 8
          local.get 12
          i32.store offset=24
          block  ;; label = @4
            local.get 7
            i32.load offset=16
            local.tee 1
            i32.eqz
            br_if 0 (;@4;)
            local.get 8
            local.get 1
            i32.store offset=16
            local.get 1
            local.get 8
            i32.store offset=24
          end
          local.get 7
          i32.load offset=20
          local.tee 1
          i32.eqz
          br_if 0 (;@3;)
          local.get 8
          i32.const 20
          i32.add
          local.get 1
          i32.store
          local.get 1
          local.get 8
          i32.store offset=24
        end
        block  ;; label = @3
          local.get 10
          i32.const 15
          i32.gt_u
          br_if 0 (;@3;)
          local.get 3
          local.get 4
          i32.const 1
          i32.and
          local.get 9
          i32.or
          i32.const 2
          i32.or
          i32.store
          local.get 6
          local.get 9
          i32.add
          local.tee 1
          local.get 1
          i32.load offset=4
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 0
          return
        end
        local.get 3
        local.get 2
        local.get 4
        i32.const 1
        i32.and
        i32.or
        i32.const 2
        i32.or
        i32.store
        local.get 6
        local.get 2
        i32.add
        local.tee 1
        local.get 10
        i32.const 3
        i32.or
        i32.store offset=4
        local.get 6
        local.get 9
        i32.add
        local.tee 2
        local.get 2
        i32.load offset=4
        i32.const 1
        i32.or
        i32.store offset=4
        local.get 1
        local.get 10
        call $dispose_chunk
        local.get 0
        return
      end
      block  ;; label = @2
        local.get 1
        call $dlmalloc
        local.tee 2
        br_if 0 (;@2;)
        i32.const 0
        return
      end
      local.get 2
      local.get 0
      i32.const -4
      i32.const -8
      local.get 3
      i32.load
      local.tee 5
      i32.const 3
      i32.and
      select
      local.get 5
      i32.const -8
      i32.and
      i32.add
      local.tee 5
      local.get 1
      local.get 5
      local.get 1
      i32.lt_u
      select
      call $memcpy
      local.set 1
      local.get 0
      call $dlfree
      local.get 1
      local.set 0
    end
    local.get 0)
  (func $dispose_chunk (type 11) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32)
    local.get 0
    local.get 1
    i32.add
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load offset=4
        local.tee 3
        i32.const 1
        i32.and
        br_if 0 (;@2;)
        local.get 3
        i32.const 3
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.load
        local.tee 3
        local.get 1
        i32.add
        local.set 1
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            local.get 3
            i32.sub
            local.tee 0
            i32.const 0
            i32.load offset=4652
            i32.eq
            br_if 0 (;@4;)
            block  ;; label = @5
              local.get 3
              i32.const 255
              i32.gt_u
              br_if 0 (;@5;)
              local.get 0
              i32.load offset=8
              local.tee 4
              local.get 3
              i32.const 3
              i32.shr_u
              local.tee 5
              i32.const 3
              i32.shl
              i32.const 4672
              i32.add
              local.tee 6
              i32.eq
              drop
              local.get 0
              i32.load offset=12
              local.tee 3
              local.get 4
              i32.ne
              br_if 2 (;@3;)
              i32.const 0
              i32.const 0
              i32.load offset=4632
              i32.const -2
              local.get 5
              i32.rotl
              i32.and
              i32.store offset=4632
              br 3 (;@2;)
            end
            local.get 0
            i32.load offset=24
            local.set 7
            block  ;; label = @5
              block  ;; label = @6
                local.get 0
                i32.load offset=12
                local.tee 6
                local.get 0
                i32.eq
                br_if 0 (;@6;)
                local.get 0
                i32.load offset=8
                local.tee 3
                i32.const 0
                i32.load offset=4648
                i32.lt_u
                drop
                local.get 6
                local.get 3
                i32.store offset=8
                local.get 3
                local.get 6
                i32.store offset=12
                br 1 (;@5;)
              end
              block  ;; label = @6
                local.get 0
                i32.const 20
                i32.add
                local.tee 3
                i32.load
                local.tee 4
                br_if 0 (;@6;)
                local.get 0
                i32.const 16
                i32.add
                local.tee 3
                i32.load
                local.tee 4
                br_if 0 (;@6;)
                i32.const 0
                local.set 6
                br 1 (;@5;)
              end
              loop  ;; label = @6
                local.get 3
                local.set 5
                local.get 4
                local.tee 6
                i32.const 20
                i32.add
                local.tee 3
                i32.load
                local.tee 4
                br_if 0 (;@6;)
                local.get 6
                i32.const 16
                i32.add
                local.set 3
                local.get 6
                i32.load offset=16
                local.tee 4
                br_if 0 (;@6;)
              end
              local.get 5
              i32.const 0
              i32.store
            end
            local.get 7
            i32.eqz
            br_if 2 (;@2;)
            block  ;; label = @5
              block  ;; label = @6
                local.get 0
                local.get 0
                i32.load offset=28
                local.tee 4
                i32.const 2
                i32.shl
                i32.const 4936
                i32.add
                local.tee 3
                i32.load
                i32.ne
                br_if 0 (;@6;)
                local.get 3
                local.get 6
                i32.store
                local.get 6
                br_if 1 (;@5;)
                i32.const 0
                i32.const 0
                i32.load offset=4636
                i32.const -2
                local.get 4
                i32.rotl
                i32.and
                i32.store offset=4636
                br 4 (;@2;)
              end
              local.get 7
              i32.const 16
              i32.const 20
              local.get 7
              i32.load offset=16
              local.get 0
              i32.eq
              select
              i32.add
              local.get 6
              i32.store
              local.get 6
              i32.eqz
              br_if 3 (;@2;)
            end
            local.get 6
            local.get 7
            i32.store offset=24
            block  ;; label = @5
              local.get 0
              i32.load offset=16
              local.tee 3
              i32.eqz
              br_if 0 (;@5;)
              local.get 6
              local.get 3
              i32.store offset=16
              local.get 3
              local.get 6
              i32.store offset=24
            end
            local.get 0
            i32.load offset=20
            local.tee 3
            i32.eqz
            br_if 2 (;@2;)
            local.get 6
            i32.const 20
            i32.add
            local.get 3
            i32.store
            local.get 3
            local.get 6
            i32.store offset=24
            br 2 (;@2;)
          end
          local.get 2
          i32.load offset=4
          local.tee 3
          i32.const 3
          i32.and
          i32.const 3
          i32.ne
          br_if 1 (;@2;)
          local.get 2
          local.get 3
          i32.const -2
          i32.and
          i32.store offset=4
          i32.const 0
          local.get 1
          i32.store offset=4640
          local.get 2
          local.get 1
          i32.store
          local.get 0
          local.get 1
          i32.const 1
          i32.or
          i32.store offset=4
          return
        end
        local.get 3
        local.get 6
        i32.eq
        drop
        local.get 3
        local.get 4
        i32.store offset=8
        local.get 4
        local.get 3
        i32.store offset=12
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.load offset=4
          local.tee 3
          i32.const 2
          i32.and
          br_if 0 (;@3;)
          block  ;; label = @4
            local.get 2
            i32.const 0
            i32.load offset=4656
            i32.ne
            br_if 0 (;@4;)
            i32.const 0
            local.get 0
            i32.store offset=4656
            i32.const 0
            i32.const 0
            i32.load offset=4644
            local.get 1
            i32.add
            local.tee 1
            i32.store offset=4644
            local.get 0
            local.get 1
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 0
            i32.const 0
            i32.load offset=4652
            i32.ne
            br_if 3 (;@1;)
            i32.const 0
            i32.const 0
            i32.store offset=4640
            i32.const 0
            i32.const 0
            i32.store offset=4652
            return
          end
          block  ;; label = @4
            local.get 2
            i32.const 0
            i32.load offset=4652
            i32.ne
            br_if 0 (;@4;)
            i32.const 0
            local.get 0
            i32.store offset=4652
            i32.const 0
            i32.const 0
            i32.load offset=4640
            local.get 1
            i32.add
            local.tee 1
            i32.store offset=4640
            local.get 0
            local.get 1
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 0
            local.get 1
            i32.add
            local.get 1
            i32.store
            return
          end
          local.get 3
          i32.const -8
          i32.and
          local.get 1
          i32.add
          local.set 1
          block  ;; label = @4
            block  ;; label = @5
              local.get 3
              i32.const 255
              i32.gt_u
              br_if 0 (;@5;)
              local.get 2
              i32.load offset=8
              local.tee 4
              local.get 3
              i32.const 3
              i32.shr_u
              local.tee 5
              i32.const 3
              i32.shl
              i32.const 4672
              i32.add
              local.tee 6
              i32.eq
              drop
              block  ;; label = @6
                local.get 2
                i32.load offset=12
                local.tee 3
                local.get 4
                i32.ne
                br_if 0 (;@6;)
                i32.const 0
                i32.const 0
                i32.load offset=4632
                i32.const -2
                local.get 5
                i32.rotl
                i32.and
                i32.store offset=4632
                br 2 (;@4;)
              end
              local.get 3
              local.get 6
              i32.eq
              drop
              local.get 3
              local.get 4
              i32.store offset=8
              local.get 4
              local.get 3
              i32.store offset=12
              br 1 (;@4;)
            end
            local.get 2
            i32.load offset=24
            local.set 7
            block  ;; label = @5
              block  ;; label = @6
                local.get 2
                i32.load offset=12
                local.tee 6
                local.get 2
                i32.eq
                br_if 0 (;@6;)
                local.get 2
                i32.load offset=8
                local.tee 3
                i32.const 0
                i32.load offset=4648
                i32.lt_u
                drop
                local.get 6
                local.get 3
                i32.store offset=8
                local.get 3
                local.get 6
                i32.store offset=12
                br 1 (;@5;)
              end
              block  ;; label = @6
                local.get 2
                i32.const 20
                i32.add
                local.tee 4
                i32.load
                local.tee 3
                br_if 0 (;@6;)
                local.get 2
                i32.const 16
                i32.add
                local.tee 4
                i32.load
                local.tee 3
                br_if 0 (;@6;)
                i32.const 0
                local.set 6
                br 1 (;@5;)
              end
              loop  ;; label = @6
                local.get 4
                local.set 5
                local.get 3
                local.tee 6
                i32.const 20
                i32.add
                local.tee 4
                i32.load
                local.tee 3
                br_if 0 (;@6;)
                local.get 6
                i32.const 16
                i32.add
                local.set 4
                local.get 6
                i32.load offset=16
                local.tee 3
                br_if 0 (;@6;)
              end
              local.get 5
              i32.const 0
              i32.store
            end
            local.get 7
            i32.eqz
            br_if 0 (;@4;)
            block  ;; label = @5
              block  ;; label = @6
                local.get 2
                local.get 2
                i32.load offset=28
                local.tee 4
                i32.const 2
                i32.shl
                i32.const 4936
                i32.add
                local.tee 3
                i32.load
                i32.ne
                br_if 0 (;@6;)
                local.get 3
                local.get 6
                i32.store
                local.get 6
                br_if 1 (;@5;)
                i32.const 0
                i32.const 0
                i32.load offset=4636
                i32.const -2
                local.get 4
                i32.rotl
                i32.and
                i32.store offset=4636
                br 2 (;@4;)
              end
              local.get 7
              i32.const 16
              i32.const 20
              local.get 7
              i32.load offset=16
              local.get 2
              i32.eq
              select
              i32.add
              local.get 6
              i32.store
              local.get 6
              i32.eqz
              br_if 1 (;@4;)
            end
            local.get 6
            local.get 7
            i32.store offset=24
            block  ;; label = @5
              local.get 2
              i32.load offset=16
              local.tee 3
              i32.eqz
              br_if 0 (;@5;)
              local.get 6
              local.get 3
              i32.store offset=16
              local.get 3
              local.get 6
              i32.store offset=24
            end
            local.get 2
            i32.load offset=20
            local.tee 3
            i32.eqz
            br_if 0 (;@4;)
            local.get 6
            i32.const 20
            i32.add
            local.get 3
            i32.store
            local.get 3
            local.get 6
            i32.store offset=24
          end
          local.get 0
          local.get 1
          i32.add
          local.get 1
          i32.store
          local.get 0
          local.get 1
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 0
          i32.const 0
          i32.load offset=4652
          i32.ne
          br_if 1 (;@2;)
          i32.const 0
          local.get 1
          i32.store offset=4640
          return
        end
        local.get 2
        local.get 3
        i32.const -2
        i32.and
        i32.store offset=4
        local.get 0
        local.get 1
        i32.add
        local.get 1
        i32.store
        local.get 0
        local.get 1
        i32.const 1
        i32.or
        i32.store offset=4
      end
      block  ;; label = @2
        local.get 1
        i32.const 255
        i32.gt_u
        br_if 0 (;@2;)
        local.get 1
        i32.const -8
        i32.and
        i32.const 4672
        i32.add
        local.set 3
        block  ;; label = @3
          block  ;; label = @4
            i32.const 0
            i32.load offset=4632
            local.tee 4
            i32.const 1
            local.get 1
            i32.const 3
            i32.shr_u
            i32.shl
            local.tee 1
            i32.and
            br_if 0 (;@4;)
            i32.const 0
            local.get 4
            local.get 1
            i32.or
            i32.store offset=4632
            local.get 3
            local.set 1
            br 1 (;@3;)
          end
          local.get 3
          i32.load offset=8
          local.set 1
        end
        local.get 1
        local.get 0
        i32.store offset=12
        local.get 3
        local.get 0
        i32.store offset=8
        local.get 0
        local.get 3
        i32.store offset=12
        local.get 0
        local.get 1
        i32.store offset=8
        return
      end
      i32.const 31
      local.set 3
      block  ;; label = @2
        local.get 1
        i32.const 16777215
        i32.gt_u
        br_if 0 (;@2;)
        local.get 1
        i32.const 8
        i32.shr_u
        local.tee 3
        local.get 3
        i32.const 1048320
        i32.add
        i32.const 16
        i32.shr_u
        i32.const 8
        i32.and
        local.tee 3
        i32.shl
        local.tee 4
        local.get 4
        i32.const 520192
        i32.add
        i32.const 16
        i32.shr_u
        i32.const 4
        i32.and
        local.tee 4
        i32.shl
        local.tee 6
        local.get 6
        i32.const 245760
        i32.add
        i32.const 16
        i32.shr_u
        i32.const 2
        i32.and
        local.tee 6
        i32.shl
        i32.const 15
        i32.shr_u
        local.get 3
        local.get 4
        i32.or
        local.get 6
        i32.or
        i32.sub
        local.tee 3
        i32.const 1
        i32.shl
        local.get 1
        local.get 3
        i32.const 21
        i32.add
        i32.shr_u
        i32.const 1
        i32.and
        i32.or
        i32.const 28
        i32.add
        local.set 3
      end
      local.get 0
      local.get 3
      i32.store offset=28
      local.get 0
      i64.const 0
      i64.store offset=16 align=4
      local.get 3
      i32.const 2
      i32.shl
      i32.const 4936
      i32.add
      local.set 4
      block  ;; label = @2
        i32.const 0
        i32.load offset=4636
        local.tee 6
        i32.const 1
        local.get 3
        i32.shl
        local.tee 2
        i32.and
        br_if 0 (;@2;)
        local.get 4
        local.get 0
        i32.store
        i32.const 0
        local.get 6
        local.get 2
        i32.or
        i32.store offset=4636
        local.get 0
        local.get 4
        i32.store offset=24
        local.get 0
        local.get 0
        i32.store offset=8
        local.get 0
        local.get 0
        i32.store offset=12
        return
      end
      local.get 1
      i32.const 0
      i32.const 25
      local.get 3
      i32.const 1
      i32.shr_u
      i32.sub
      local.get 3
      i32.const 31
      i32.eq
      select
      i32.shl
      local.set 3
      local.get 4
      i32.load
      local.set 6
      block  ;; label = @2
        loop  ;; label = @3
          local.get 6
          local.tee 4
          i32.load offset=4
          i32.const -8
          i32.and
          local.get 1
          i32.eq
          br_if 1 (;@2;)
          local.get 3
          i32.const 29
          i32.shr_u
          local.set 6
          local.get 3
          i32.const 1
          i32.shl
          local.set 3
          local.get 4
          local.get 6
          i32.const 4
          i32.and
          i32.add
          i32.const 16
          i32.add
          local.tee 2
          i32.load
          local.tee 6
          br_if 0 (;@3;)
        end
        local.get 2
        local.get 0
        i32.store
        local.get 0
        local.get 4
        i32.store offset=24
        local.get 0
        local.get 0
        i32.store offset=12
        local.get 0
        local.get 0
        i32.store offset=8
        return
      end
      local.get 4
      i32.load offset=8
      local.tee 1
      local.get 0
      i32.store offset=12
      local.get 4
      local.get 0
      i32.store offset=8
      local.get 0
      i32.const 0
      i32.store offset=24
      local.get 0
      local.get 4
      i32.store offset=12
      local.get 0
      local.get 1
      i32.store offset=8
    end)
  (func $gettimeofday (type 3) (param i32 i32) (result i32)
    (local i32 i64 i64)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      i64.const 0
      i64.store offset=8
      i32.const 0
      i64.const 1000
      local.get 2
      i32.const 8
      i32.add
      call $__wasi_clock_time_get
      drop
      local.get 0
      local.get 2
      i64.load offset=8
      local.tee 3
      i64.const 1000000000
      i64.div_u
      local.tee 4
      i64.store
      local.get 0
      local.get 3
      local.get 4
      i64.const 1000000000
      i64.mul
      i64.sub
      i32.wrap_i64
      i32.const 1000
      i32.div_u
      i64.extend_i32_u
      i64.store offset=8
    end
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    i32.const 0)
  (func $_Exit (type 8) (param i32)
    local.get 0
    call $__wasi_proc_exit
    unreachable)
  (func $__main_void (type 17) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              i32.const 8
              i32.add
              local.get 0
              i32.const 12
              i32.add
              call $__wasi_args_sizes_get
              br_if 0 (;@5;)
              local.get 0
              i32.load offset=8
              i32.const 1
              i32.add
              local.tee 1
              i32.eqz
              br_if 1 (;@4;)
              local.get 0
              i32.load offset=12
              call $malloc
              local.tee 2
              i32.eqz
              br_if 2 (;@3;)
              local.get 1
              i32.const 4
              call $calloc
              local.tee 1
              i32.eqz
              br_if 3 (;@2;)
              local.get 1
              local.get 2
              call $__wasi_args_get
              br_if 4 (;@1;)
              local.get 0
              i32.load offset=8
              local.get 1
              call $main
              local.set 1
              local.get 0
              i32.const 16
              i32.add
              global.set $__stack_pointer
              local.get 1
              return
            end
            i32.const 71
            call $_Exit
            unreachable
          end
          i32.const 70
          call $_Exit
          unreachable
        end
        i32.const 70
        call $_Exit
        unreachable
      end
      local.get 2
      call $free
      i32.const 70
      call $_Exit
      unreachable
    end
    local.get 2
    call $free
    local.get 1
    call $free
    i32.const 71
    call $_Exit
    unreachable)
  (func $__wasi_args_get (type 3) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $__imported_wasi_snapshot_preview1_args_get
    i32.const 65535
    i32.and)
  (func $__wasi_args_sizes_get (type 3) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $__imported_wasi_snapshot_preview1_args_sizes_get
    i32.const 65535
    i32.and)
  (func $__wasi_clock_time_get (type 4) (param i32 i64 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    call $__imported_wasi_snapshot_preview1_clock_time_get
    i32.const 65535
    i32.and)
  (func $__wasi_fd_close (type 0) (param i32) (result i32)
    local.get 0
    call $__imported_wasi_snapshot_preview1_fd_close
    i32.const 65535
    i32.and)
  (func $__wasi_fd_fdstat_get (type 3) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $__imported_wasi_snapshot_preview1_fd_fdstat_get
    i32.const 65535
    i32.and)
  (func $__wasi_fd_fdstat_set_flags (type 3) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $__imported_wasi_snapshot_preview1_fd_fdstat_set_flags
    i32.const 65535
    i32.and)
  (func $__wasi_fd_prestat_get (type 3) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $__imported_wasi_snapshot_preview1_fd_prestat_get
    i32.const 65535
    i32.and)
  (func $__wasi_fd_prestat_dir_name (type 1) (param i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    call $__imported_wasi_snapshot_preview1_fd_prestat_dir_name
    i32.const 65535
    i32.and)
  (func $__wasi_fd_read (type 5) (param i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $__imported_wasi_snapshot_preview1_fd_read
    i32.const 65535
    i32.and)
  (func $__wasi_fd_seek (type 6) (param i32 i64 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $__imported_wasi_snapshot_preview1_fd_seek
    i32.const 65535
    i32.and)
  (func $__wasi_fd_write (type 5) (param i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $__imported_wasi_snapshot_preview1_fd_write
    i32.const 65535
    i32.and)
  (func $__wasi_path_open (type 18) (param i32 i32 i32 i32 i64 i64 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 2
    call $strlen
    local.get 3
    local.get 4
    local.get 5
    local.get 6
    local.get 7
    call $__imported_wasi_snapshot_preview1_path_open
    i32.const 65535
    i32.and)
  (func $__wasi_proc_exit (type 8) (param i32)
    local.get 0
    call $__imported_wasi_snapshot_preview1_proc_exit
    unreachable)
  (func $abort (type 9)
    unreachable
    unreachable)
  (func $sbrk (type 0) (param i32) (result i32)
    block  ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      memory.size
      i32.const 16
      i32.shl
      return
    end
    block  ;; label = @1
      local.get 0
      i32.const 65535
      i32.and
      br_if 0 (;@1;)
      local.get 0
      i32.const -1
      i32.le_s
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 0
        i32.const 16
        i32.shr_u
        memory.grow
        local.tee 0
        i32.const -1
        i32.ne
        br_if 0 (;@2;)
        i32.const 0
        i32.const 48
        i32.store offset=5128
        i32.const -1
        return
      end
      local.get 0
      i32.const 16
      i32.shl
      return
    end
    call $abort
    unreachable)
  (func $dummy (type 9))
  (func $__wasm_call_dtors (type 9)
    call $dummy
    call $__stdio_exit)
  (func $dummy.1 (type 8) (param i32))
  (func $fclose (type 0) (param i32) (result i32)
    (local i32 i32 i32 i32 i32)
    local.get 0
    call $fflush
    local.set 1
    local.get 0
    local.get 0
    i32.load offset=12
    call_indirect (type 0)
    local.set 2
    block  ;; label = @1
      local.get 0
      i32.load8_u
      i32.const 1
      i32.and
      br_if 0 (;@1;)
      local.get 0
      call $dummy.1
      call $__ofl_lock
      local.set 3
      block  ;; label = @2
        local.get 0
        i32.load offset=48
        local.tee 4
        i32.eqz
        br_if 0 (;@2;)
        local.get 4
        local.get 0
        i32.load offset=52
        i32.store offset=52
      end
      block  ;; label = @2
        local.get 0
        i32.load offset=52
        local.tee 5
        i32.eqz
        br_if 0 (;@2;)
        local.get 5
        local.get 4
        i32.store offset=48
      end
      block  ;; label = @2
        local.get 3
        i32.load
        local.get 0
        i32.ne
        br_if 0 (;@2;)
        local.get 3
        local.get 5
        i32.store
      end
      call $__ofl_unlock
      local.get 0
      i32.load offset=80
      call $free
      local.get 0
      call $free
    end
    local.get 2
    local.get 1
    i32.or)
  (func $fflush (type 0) (param i32) (result i32)
    (local i32 i32 i32)
    block  ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      i32.const 0
      local.set 1
      block  ;; label = @2
        i32.const 0
        i32.load offset=4344
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        i32.load offset=4344
        call $fflush
        local.set 1
      end
      block  ;; label = @2
        i32.const 0
        i32.load offset=4464
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        i32.load offset=4464
        call $fflush
        local.get 1
        i32.or
        local.set 1
      end
      block  ;; label = @2
        call $__ofl_lock
        i32.load
        local.tee 0
        i32.eqz
        br_if 0 (;@2;)
        loop  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.load offset=20
            local.get 0
            i32.load offset=24
            i32.eq
            br_if 0 (;@4;)
            local.get 0
            i32.const 0
            i32.const 0
            local.get 0
            i32.load offset=32
            call_indirect (type 1)
            drop
            block  ;; label = @5
              block  ;; label = @6
                local.get 0
                i32.load offset=20
                br_if 0 (;@6;)
                i32.const -1
                local.set 2
                br 1 (;@5;)
              end
              block  ;; label = @6
                local.get 0
                i32.load offset=4
                local.tee 2
                local.get 0
                i32.load offset=8
                local.tee 3
                i32.eq
                br_if 0 (;@6;)
                local.get 0
                local.get 2
                local.get 3
                i32.sub
                i64.extend_i32_s
                i32.const 1
                local.get 0
                i32.load offset=36
                call_indirect (type 2)
                drop
              end
              i32.const 0
              local.set 2
              local.get 0
              i32.const 0
              i32.store offset=24
              local.get 0
              i64.const 0
              i64.store offset=16
              local.get 0
              i64.const 0
              i64.store offset=4 align=4
            end
            local.get 2
            local.get 1
            i32.or
            local.set 1
          end
          local.get 0
          i32.load offset=52
          local.tee 0
          br_if 0 (;@3;)
        end
      end
      call $__ofl_unlock
      local.get 1
      return
    end
    block  ;; label = @1
      local.get 0
      i32.load offset=20
      local.get 0
      i32.load offset=24
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      i32.const 0
      i32.const 0
      local.get 0
      i32.load offset=32
      call_indirect (type 1)
      drop
      local.get 0
      i32.load offset=20
      br_if 0 (;@1;)
      i32.const -1
      return
    end
    block  ;; label = @1
      local.get 0
      i32.load offset=4
      local.tee 1
      local.get 0
      i32.load offset=8
      local.tee 2
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      local.get 2
      i32.sub
      i64.extend_i32_s
      i32.const 1
      local.get 0
      i32.load offset=36
      call_indirect (type 2)
      drop
    end
    local.get 0
    i32.const 0
    i32.store offset=24
    local.get 0
    i64.const 0
    i64.store offset=16
    local.get 0
    i64.const 0
    i64.store offset=4 align=4
    i32.const 0)
  (func $__fmodeflags (type 0) (param i32) (result i32)
    (local i32 i32 i32)
    i32.const 335544320
    i32.const 67108864
    i32.const 268435456
    local.get 0
    i32.load8_u
    local.tee 1
    i32.const 114
    i32.eq
    local.tee 2
    select
    local.get 0
    i32.const 43
    call $strchr
    select
    local.tee 3
    i32.const 16384
    i32.or
    local.get 3
    local.get 0
    i32.const 120
    call $strchr
    select
    local.tee 0
    local.get 0
    i32.const 4096
    i32.or
    local.get 2
    select
    local.tee 0
    i32.const 32768
    i32.or
    local.get 0
    local.get 1
    i32.const 119
    i32.eq
    select
    local.get 1
    i32.const 97
    i32.eq
    i32.or)
  (func $internal_register_preopened_fd (type 3) (param i32 i32) (result i32)
    (local i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.const 2
        i32.add
        br_table 1 (;@1;) 1 (;@1;) 0 (;@2;)
      end
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        i32.const 0
        i32.load offset=5132
        local.tee 2
        i32.const 0
        i32.load offset=5140
        i32.ne
        br_if 0 (;@2;)
        i32.const 0
        i32.load offset=5136
        local.set 3
        block  ;; label = @3
          i32.const 8
          local.get 2
          i32.const 1
          i32.shl
          i32.const 4
          local.get 2
          select
          local.tee 4
          call $calloc
          local.tee 5
          br_if 0 (;@3;)
          i32.const -1
          return
        end
        local.get 5
        local.get 3
        local.get 2
        i32.const 3
        i32.shl
        call $memcpy
        local.set 5
        i32.const 0
        local.get 4
        i32.store offset=5140
        i32.const 0
        local.get 5
        i32.store offset=5136
        local.get 3
        call $free
      end
      block  ;; label = @2
        loop  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              local.tee 3
              i32.load8_u
              i32.const -46
              i32.add
              br_table 1 (;@4;) 0 (;@5;) 3 (;@2;)
            end
            local.get 3
            i32.const 1
            i32.add
            local.set 1
            br 1 (;@3;)
          end
          local.get 3
          i32.const 1
          i32.add
          local.set 1
          local.get 3
          i32.load8_u offset=1
          local.tee 4
          i32.eqz
          br_if 0 (;@3;)
          local.get 4
          i32.const 47
          i32.ne
          br_if 1 (;@2;)
          local.get 3
          i32.const 2
          i32.add
          local.set 1
          br 0 (;@3;)
        end
      end
      block  ;; label = @2
        local.get 3
        call $strdup
        local.tee 3
        br_if 0 (;@2;)
        i32.const -1
        return
      end
      i32.const 0
      local.get 2
      i32.const 1
      i32.add
      i32.store offset=5132
      i32.const 0
      i32.load offset=5136
      local.get 2
      i32.const 3
      i32.shl
      i32.add
      local.tee 1
      local.get 0
      i32.store offset=4
      local.get 1
      local.get 3
      i32.store
      i32.const 0
      return
    end
    call $abort
    unreachable)
  (func $__wasilibc_find_relpath (type 5) (param i32 i32 i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    local.get 4
    local.get 3
    i32.store offset=12
    block  ;; label = @1
      block  ;; label = @2
        i32.const 0
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        local.get 1
        local.get 2
        local.get 4
        i32.const 12
        i32.add
        i32.const 0
        call $undefined_weak:__wasilibc_find_relpath_alloc
        local.set 3
        br 1 (;@1;)
      end
      local.get 0
      local.get 1
      local.get 2
      call $__wasilibc_find_abspath
      local.set 3
    end
    local.get 4
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 3)
  (func $__wasilibc_find_abspath (type 1) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    local.get 0
    i32.const -1
    i32.add
    local.set 3
    loop  ;; label = @1
      local.get 3
      i32.const 1
      i32.add
      local.tee 3
      i32.load8_u
      i32.const 47
      i32.eq
      br_if 0 (;@1;)
    end
    i32.const 0
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        i32.const 0
        i32.load offset=5132
        local.tee 5
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        i32.load offset=5136
        local.set 6
        i32.const -1
        local.set 7
        loop  ;; label = @3
          local.get 6
          local.get 5
          i32.const -1
          i32.add
          local.tee 5
          i32.const 3
          i32.shl
          i32.add
          local.tee 8
          i32.load
          local.tee 9
          call $strlen
          local.set 10
          block  ;; label = @4
            block  ;; label = @5
              local.get 7
              i32.const -1
              i32.eq
              br_if 0 (;@5;)
              local.get 10
              local.get 4
              i32.le_u
              br_if 1 (;@4;)
            end
            block  ;; label = @5
              block  ;; label = @6
                local.get 10
                br_if 0 (;@6;)
                local.get 3
                i32.load8_u
                i32.const 255
                i32.and
                i32.const 47
                i32.ne
                br_if 1 (;@5;)
              end
              local.get 3
              local.get 9
              local.get 10
              call $memcmp
              br_if 1 (;@4;)
              local.get 9
              i32.const -1
              i32.add
              local.set 11
              local.get 10
              local.set 12
              block  ;; label = @6
                loop  ;; label = @7
                  local.get 12
                  local.tee 0
                  i32.eqz
                  br_if 1 (;@6;)
                  local.get 0
                  i32.const -1
                  i32.add
                  local.set 12
                  local.get 11
                  local.get 0
                  i32.add
                  i32.load8_u
                  i32.const 47
                  i32.eq
                  br_if 0 (;@7;)
                end
              end
              local.get 3
              local.get 0
              i32.add
              i32.load8_u
              local.tee 0
              i32.const 47
              i32.eq
              br_if 0 (;@5;)
              local.get 0
              br_if 1 (;@4;)
            end
            local.get 1
            local.get 9
            i32.store
            local.get 8
            i32.load offset=4
            local.set 7
            local.get 10
            local.set 4
          end
          local.get 5
          br_if 0 (;@3;)
        end
        local.get 7
        i32.const -1
        i32.ne
        br_if 1 (;@1;)
      end
      i32.const 0
      i32.const 44
      i32.store offset=5128
      i32.const -1
      return
    end
    local.get 3
    local.get 4
    i32.add
    i32.const -1
    i32.add
    local.set 0
    loop  ;; label = @1
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      i32.load8_u
      local.tee 3
      i32.const 47
      i32.eq
      br_if 0 (;@1;)
    end
    local.get 2
    local.get 0
    i32.const 1296
    local.get 3
    select
    i32.store
    local.get 7)
  (func $__wasilibc_populate_preopens (type 9)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 3
    local.set 1
    block  ;; label = @1
      block  ;; label = @2
        loop  ;; label = @3
          block  ;; label = @4
            local.get 1
            local.get 0
            i32.const 8
            i32.add
            call $__wasi_fd_prestat_get
            local.tee 2
            i32.eqz
            br_if 0 (;@4;)
            local.get 2
            i32.const 8
            i32.ne
            br_if 2 (;@2;)
            local.get 0
            i32.const 16
            i32.add
            global.set $__stack_pointer
            return
          end
          block  ;; label = @4
            local.get 0
            i32.load8_u offset=8
            br_if 0 (;@4;)
            local.get 0
            i32.load offset=12
            local.tee 3
            i32.const 1
            i32.add
            call $malloc
            local.tee 2
            i32.eqz
            br_if 3 (;@1;)
            local.get 1
            local.get 2
            local.get 3
            call $__wasi_fd_prestat_dir_name
            br_if 2 (;@2;)
            local.get 2
            local.get 0
            i32.load offset=12
            i32.add
            i32.const 0
            i32.store8
            local.get 1
            local.get 2
            call $internal_register_preopened_fd
            br_if 3 (;@1;)
            local.get 2
            call $free
          end
          local.get 1
          i32.const 1
          i32.add
          local.set 1
          br 0 (;@3;)
        end
      end
      i32.const 71
      call $_Exit
      unreachable
    end
    i32.const 70
    call $_Exit
    unreachable)
  (func $__wasilibc_nocwd_openat_nomode (type 1) (param i32 i32 i32) (result i32)
    (local i32 i32 i64 i64)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 2
            i32.const 503316480
            i32.and
            i32.const -33554432
            i32.add
            i32.const 25
            i32.shr_u
            local.tee 4
            i32.const 9
            i32.gt_u
            br_if 0 (;@4;)
            i32.const 1
            local.get 4
            i32.shl
            local.tee 4
            i32.const 642
            i32.and
            br_if 1 (;@3;)
            i64.const -4211012
            local.set 5
            local.get 4
            i32.const 9
            i32.and
            br_if 2 (;@2;)
          end
          i32.const 0
          i32.const 28
          i32.store offset=5128
          i32.const -1
          local.set 4
          br 2 (;@1;)
        end
        i64.const -4194626
        i64.const -4211012
        local.get 2
        i32.const 67108864
        i32.and
        select
        local.tee 5
        i64.const 4194625
        i64.or
        local.get 5
        local.get 2
        i32.const 268435456
        i32.and
        select
        local.set 5
      end
      block  ;; label = @2
        local.get 0
        local.get 3
        i32.const 8
        i32.add
        call $__wasi_fd_fdstat_get
        local.tee 4
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        local.get 4
        i32.store offset=5128
        i32.const -1
        local.set 4
        br 1 (;@1;)
      end
      i32.const -1
      local.set 4
      block  ;; label = @2
        local.get 0
        local.get 2
        i32.const -1
        i32.xor
        i32.const 24
        i32.shr_u
        i32.const 1
        i32.and
        local.get 1
        local.get 2
        i32.const 12
        i32.shr_u
        i32.const 4095
        i32.and
        local.get 3
        i64.load offset=24
        local.tee 6
        local.get 5
        i64.and
        local.get 6
        local.get 2
        i32.const 4095
        i32.and
        local.get 3
        i32.const 4
        i32.add
        call $__wasi_path_open
        local.tee 2
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        local.get 2
        i32.store offset=5128
        br 1 (;@1;)
      end
      local.get 3
      i32.load offset=4
      local.set 4
    end
    local.get 3
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 4)
  (func $close (type 0) (param i32) (result i32)
    block  ;; label = @1
      local.get 0
      call $__wasi_fd_close
      local.tee 0
      br_if 0 (;@1;)
      i32.const 0
      return
    end
    i32.const 0
    local.get 0
    i32.store offset=5128
    i32.const -1)
  (func $__wasilibc_open_nomode (type 3) (param i32 i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        i32.const 0
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        local.get 2
        i32.const 12
        i32.add
        i32.const 5144
        i32.const 5148
        i32.const 1
        call $undefined_weak:__wasilibc_find_relpath_alloc
        local.set 3
        br 1 (;@1;)
      end
      local.get 0
      local.get 2
      i32.const 12
      i32.add
      i32.const 5144
      i32.const 0
      i32.load offset=5148
      call $__wasilibc_find_relpath
      local.set 3
    end
    i32.const -1
    local.set 0
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        i32.const -1
        i32.ne
        br_if 0 (;@2;)
        i32.const 0
        i32.const 76
        i32.store offset=5128
        br 1 (;@1;)
      end
      local.get 3
      i32.const 0
      i32.load offset=5144
      local.get 1
      call $__wasilibc_nocwd_openat_nomode
      local.set 0
    end
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $fcntl (type 1) (param i32 i32 i32) (result i32)
    (local i32 i64 i64)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 1
                i32.const -1
                i32.add
                br_table 5 (;@1;) 0 (;@6;) 1 (;@5;) 2 (;@4;) 3 (;@3;)
              end
              i32.const 0
              local.set 1
              br 4 (;@1;)
            end
            block  ;; label = @5
              local.get 0
              local.get 3
              i32.const 8
              i32.add
              call $__wasi_fd_fdstat_get
              local.tee 1
              i32.eqz
              br_if 0 (;@5;)
              i32.const 0
              local.get 1
              i32.store offset=5128
              br 3 (;@2;)
            end
            local.get 3
            i64.load offset=16
            local.tee 4
            i64.const 64
            i64.and
            local.set 5
            local.get 3
            i32.load16_u offset=10
            local.set 1
            block  ;; label = @5
              local.get 4
              i64.const 16386
              i64.and
              i64.eqz
              br_if 0 (;@5;)
              block  ;; label = @6
                local.get 5
                i64.eqz
                br_if 0 (;@6;)
                local.get 1
                i32.const 335544320
                i32.or
                local.set 1
                br 5 (;@1;)
              end
              local.get 1
              i32.const 67108864
              i32.or
              local.set 1
              br 4 (;@1;)
            end
            block  ;; label = @5
              local.get 5
              i64.eqz
              br_if 0 (;@5;)
              local.get 1
              i32.const 268435456
              i32.or
              local.set 1
              br 4 (;@1;)
            end
            local.get 1
            i32.const 134217728
            i32.or
            local.set 1
            br 3 (;@1;)
          end
          local.get 3
          local.get 2
          i32.const 4
          i32.add
          i32.store offset=8
          block  ;; label = @4
            local.get 0
            local.get 2
            i32.load
            i32.const 4095
            i32.and
            call $__wasi_fd_fdstat_set_flags
            local.tee 1
            br_if 0 (;@4;)
            i32.const 0
            local.set 1
            br 3 (;@1;)
          end
          i32.const 0
          local.get 1
          i32.store offset=5128
          br 1 (;@2;)
        end
        i32.const 0
        i32.const 28
        i32.store offset=5128
      end
      i32.const -1
      local.set 1
    end
    local.get 3
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $__isatty (type 0) (param i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        local.get 1
        i32.const 8
        i32.add
        call $__wasi_fd_fdstat_get
        local.tee 0
        br_if 0 (;@2;)
        i32.const 59
        local.set 0
        local.get 1
        i32.load8_u offset=8
        i32.const 2
        i32.ne
        br_if 0 (;@2;)
        local.get 1
        i32.load8_u offset=16
        i32.const 36
        i32.and
        br_if 0 (;@2;)
        i32.const 1
        local.set 2
        br 1 (;@1;)
      end
      i32.const 0
      local.set 2
      i32.const 0
      local.get 0
      i32.store offset=5128
    end
    local.get 1
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 2)
  (func $__lseek (type 2) (param i32 i64 i32) (result i64)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        local.get 1
        local.get 2
        i32.const 255
        i32.and
        local.get 3
        i32.const 8
        i32.add
        call $__wasi_fd_seek
        local.tee 2
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        i32.const 70
        local.get 2
        local.get 2
        i32.const 76
        i32.eq
        select
        i32.store offset=5128
        i64.const -1
        local.set 1
        br 1 (;@1;)
      end
      local.get 3
      i64.load offset=8
      local.set 1
    end
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $__stdio_seek (type 2) (param i32 i64 i32) (result i64)
    local.get 0
    i32.load offset=56
    local.get 1
    local.get 2
    call $__lseek)
  (func $writev (type 1) (param i32 i32 i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    i32.const -1
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.const -1
        i32.gt_s
        br_if 0 (;@2;)
        i32.const 0
        i32.const 28
        i32.store offset=5128
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 0
        local.get 1
        local.get 2
        local.get 3
        i32.const 12
        i32.add
        call $__wasi_fd_write
        local.tee 2
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        local.get 2
        i32.store offset=5128
        i32.const -1
        local.set 4
        br 1 (;@1;)
      end
      local.get 3
      i32.load offset=12
      local.set 4
    end
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 4)
  (func $__stdio_write (type 1) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    local.get 2
    i32.store offset=12
    local.get 3
    local.get 1
    i32.store offset=8
    local.get 3
    local.get 0
    i32.load offset=24
    local.tee 1
    i32.store
    local.get 3
    local.get 0
    i32.load offset=20
    local.get 1
    i32.sub
    local.tee 1
    i32.store offset=4
    i32.const 2
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        local.get 2
        i32.add
        local.tee 5
        local.get 0
        i32.load offset=56
        local.get 3
        i32.const 2
        call $writev
        local.tee 1
        i32.eq
        br_if 0 (;@2;)
        local.get 3
        local.set 6
        loop  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.const -1
            i32.gt_s
            br_if 0 (;@4;)
            i32.const 0
            local.set 1
            local.get 0
            i32.const 0
            i32.store offset=24
            local.get 0
            i64.const 0
            i64.store offset=16
            local.get 0
            local.get 0
            i32.load
            i32.const 32
            i32.or
            i32.store
            local.get 4
            i32.const 2
            i32.eq
            br_if 3 (;@1;)
            local.get 2
            local.get 6
            i32.load offset=4
            i32.sub
            local.set 1
            br 3 (;@1;)
          end
          local.get 6
          local.get 1
          local.get 6
          i32.load offset=4
          local.tee 7
          i32.gt_u
          local.tee 8
          i32.const 3
          i32.shl
          i32.add
          local.tee 9
          local.get 9
          i32.load
          local.get 1
          local.get 7
          i32.const 0
          local.get 8
          select
          i32.sub
          local.tee 7
          i32.add
          i32.store
          local.get 6
          i32.const 12
          i32.const 4
          local.get 8
          select
          i32.add
          local.tee 6
          local.get 6
          i32.load
          local.get 7
          i32.sub
          i32.store
          local.get 9
          local.set 6
          local.get 5
          local.get 1
          i32.sub
          local.tee 5
          local.get 0
          i32.load offset=56
          local.get 9
          local.get 4
          local.get 8
          i32.sub
          local.tee 4
          call $writev
          local.tee 1
          i32.ne
          br_if 0 (;@3;)
        end
      end
      local.get 0
      local.get 0
      i32.load offset=40
      local.tee 1
      i32.store offset=24
      local.get 0
      local.get 1
      i32.store offset=20
      local.get 0
      local.get 1
      local.get 0
      i32.load offset=44
      i32.add
      i32.store offset=16
      local.get 2
      local.set 1
    end
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $readv (type 1) (param i32 i32 i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    i32.const -1
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.const -1
        i32.gt_s
        br_if 0 (;@2;)
        i32.const 0
        i32.const 28
        i32.store offset=5128
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 0
        local.get 1
        local.get 2
        local.get 3
        i32.const 12
        i32.add
        call $__wasi_fd_read
        local.tee 2
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        local.get 2
        i32.store offset=5128
        i32.const -1
        local.set 4
        br 1 (;@1;)
      end
      local.get 3
      i32.load offset=12
      local.set 4
    end
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 4)
  (func $read (type 1) (param i32 i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    local.get 2
    i32.store offset=12
    local.get 3
    local.get 1
    i32.store offset=8
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        local.get 3
        i32.const 8
        i32.add
        i32.const 1
        local.get 3
        i32.const 4
        i32.add
        call $__wasi_fd_read
        local.tee 2
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        i32.const 8
        local.get 2
        local.get 2
        i32.const 76
        i32.eq
        select
        i32.store offset=5128
        i32.const -1
        local.set 2
        br 1 (;@1;)
      end
      local.get 3
      i32.load offset=4
      local.set 2
    end
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 2)
  (func $__stdio_read (type 1) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    local.get 1
    i32.store
    local.get 3
    local.get 0
    i32.load offset=44
    local.tee 4
    i32.store offset=12
    local.get 3
    local.get 0
    i32.load offset=40
    local.tee 5
    i32.store offset=8
    local.get 3
    local.get 2
    local.get 4
    i32.const 0
    i32.ne
    i32.sub
    local.tee 6
    i32.store offset=4
    local.get 0
    i32.load offset=56
    local.set 7
    block  ;; label = @1
      block  ;; label = @2
        local.get 6
        i32.eqz
        br_if 0 (;@2;)
        local.get 7
        local.get 3
        i32.const 2
        call $readv
        local.set 4
        br 1 (;@1;)
      end
      local.get 7
      local.get 5
      local.get 4
      call $read
      local.set 4
    end
    i32.const 0
    local.set 6
    block  ;; label = @1
      block  ;; label = @2
        local.get 4
        i32.const 0
        i32.gt_s
        br_if 0 (;@2;)
        local.get 0
        local.get 0
        i32.load
        i32.const 32
        i32.const 16
        local.get 4
        select
        i32.or
        i32.store
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 4
        local.get 3
        i32.load offset=4
        local.tee 7
        i32.gt_u
        br_if 0 (;@2;)
        local.get 4
        local.set 6
        br 1 (;@1;)
      end
      local.get 0
      local.get 0
      i32.load offset=40
      local.tee 6
      i32.store offset=4
      local.get 0
      local.get 6
      local.get 4
      local.get 7
      i32.sub
      i32.add
      i32.store offset=8
      block  ;; label = @2
        local.get 0
        i32.load offset=44
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        local.get 6
        i32.const 1
        i32.add
        i32.store offset=4
        local.get 2
        local.get 1
        i32.add
        i32.const -1
        i32.add
        local.get 6
        i32.load8_u
        i32.store8
      end
      local.get 2
      local.set 6
    end
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 6)
  (func $__stdio_close (type 0) (param i32) (result i32)
    local.get 0
    i32.load offset=56
    call $close)
  (func $__fdopen (type 3) (param i32 i32) (result i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        i32.const 1280
        local.get 1
        i32.load8_s
        local.tee 3
        i32.const 4
        call $memchr
        br_if 0 (;@2;)
        i32.const 0
        local.set 4
        i32.const 0
        i32.const 28
        i32.store offset=5128
        br 1 (;@1;)
      end
      block  ;; label = @2
        i32.const 1144
        call $malloc
        local.tee 4
        br_if 0 (;@2;)
        i32.const 0
        local.set 4
        br 1 (;@1;)
      end
      i32.const 0
      local.set 5
      local.get 4
      i32.const 0
      i32.const 112
      call $memset
      local.set 4
      block  ;; label = @2
        local.get 1
        i32.const 43
        call $strchr
        br_if 0 (;@2;)
        local.get 4
        i32.const 8
        i32.const 4
        local.get 3
        i32.const 114
        i32.eq
        select
        local.tee 5
        i32.store
      end
      block  ;; label = @2
        local.get 1
        i32.const 101
        call $strchr
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        i32.const 1
        i32.store offset=16
        local.get 0
        i32.const 2
        local.get 2
        i32.const 16
        i32.add
        call $fcntl
        drop
        local.get 1
        i32.load8_u
        local.set 3
      end
      block  ;; label = @2
        local.get 3
        i32.const 255
        i32.and
        i32.const 97
        i32.ne
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 0
          i32.const 3
          i32.const 0
          call $fcntl
          local.tee 1
          i32.const 1
          i32.and
          br_if 0 (;@3;)
          local.get 2
          local.get 1
          i32.const 1
          i32.or
          i32.store
          local.get 0
          i32.const 4
          local.get 2
          call $fcntl
          drop
        end
        local.get 4
        local.get 5
        i32.const 128
        i32.or
        local.tee 5
        i32.store
      end
      local.get 4
      i32.const -1
      i32.store offset=64
      local.get 4
      i32.const 1024
      i32.store offset=44
      local.get 4
      local.get 0
      i32.store offset=56
      local.get 4
      local.get 4
      i32.const 120
      i32.add
      i32.store offset=40
      block  ;; label = @2
        local.get 5
        i32.const 8
        i32.and
        br_if 0 (;@2;)
        local.get 0
        call $__isatty
        i32.eqz
        br_if 0 (;@2;)
        local.get 4
        i32.const 10
        i32.store offset=64
      end
      local.get 4
      i32.const 1
      i32.store offset=36
      local.get 4
      i32.const 2
      i32.store offset=32
      local.get 4
      i32.const 3
      i32.store offset=28
      local.get 4
      i32.const 4
      i32.store offset=12
      local.get 4
      call $__ofl_add
      local.set 4
    end
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 4)
  (func $fopen (type 3) (param i32 i32) (result i32)
    (local i32)
    block  ;; label = @1
      i32.const 1280
      local.get 1
      i32.load8_s
      i32.const 4
      call $memchr
      br_if 0 (;@1;)
      i32.const 0
      i32.const 28
      i32.store offset=5128
      i32.const 0
      return
    end
    i32.const 0
    local.set 2
    block  ;; label = @1
      local.get 0
      local.get 1
      call $__fmodeflags
      call $__wasilibc_open_nomode
      local.tee 0
      i32.const 0
      i32.lt_s
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      call $__fdopen
      local.tee 2
      br_if 0 (;@1;)
      local.get 0
      call $close
      drop
      i32.const 0
      local.set 2
    end
    local.get 2)
  (func $fscanf (type 1) (param i32 i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    local.get 2
    i32.store offset=12
    local.get 0
    local.get 1
    local.get 2
    call $vfscanf
    local.set 2
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 2)
  (func $fseek (type 1) (param i32 i32 i32) (result i32)
    (local i64)
    block  ;; label = @1
      local.get 2
      i32.const 3
      i32.lt_u
      br_if 0 (;@1;)
      i32.const 0
      i32.const 28
      i32.store offset=5128
      i32.const -1
      return
    end
    local.get 1
    i64.extend_i32_s
    local.set 3
    block  ;; label = @1
      local.get 2
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=8
      local.tee 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      local.get 1
      local.get 0
      i32.load offset=4
      i32.sub
      i64.extend_i32_s
      i64.sub
      local.set 3
    end
    block  ;; label = @1
      local.get 0
      i32.load offset=20
      local.get 0
      i32.load offset=24
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      i32.const 0
      i32.const 0
      local.get 0
      i32.load offset=32
      call_indirect (type 1)
      drop
      local.get 0
      i32.load offset=20
      br_if 0 (;@1;)
      i32.const -1
      return
    end
    local.get 0
    i32.const 0
    i32.store offset=24
    local.get 0
    i64.const 0
    i64.store offset=16
    block  ;; label = @1
      local.get 0
      local.get 3
      local.get 2
      local.get 0
      i32.load offset=36
      call_indirect (type 2)
      i64.const 0
      i64.ge_s
      br_if 0 (;@1;)
      i32.const -1
      return
    end
    local.get 0
    i64.const 0
    i64.store offset=4 align=4
    local.get 0
    local.get 0
    i32.load
    i32.const -17
    i32.and
    i32.store
    i32.const 0)
  (func $__ofl_lock (type 17) (result i32)
    i32.const 5152)
  (func $__ofl_unlock (type 9))
  (func $__ofl_add (type 0) (param i32) (result i32)
    (local i32 i32)
    local.get 0
    call $__ofl_lock
    local.tee 1
    i32.load
    i32.store offset=52
    block  ;; label = @1
      local.get 1
      i32.load
      local.tee 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      local.get 0
      i32.store offset=48
    end
    local.get 1
    local.get 0
    i32.store
    call $__ofl_unlock
    local.get 0)
  (func $printf (type 3) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 1
    i32.store offset=12
    i32.const 4232
    local.get 0
    local.get 1
    call $vfprintf
    local.set 1
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $__stdout_write (type 1) (param i32 i32 i32) (result i32)
    local.get 0
    i32.const 2
    i32.store offset=32
    block  ;; label = @1
      local.get 0
      i32.load8_u
      i32.const 64
      i32.and
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=56
      call $__isatty
      br_if 0 (;@1;)
      local.get 0
      i32.const -1
      i32.store offset=64
    end
    local.get 0
    local.get 1
    local.get 2
    call $__stdio_write)
  (func $__stdio_exit (type 9)
    (local i32 i32 i32)
    block  ;; label = @1
      call $__ofl_lock
      i32.load
      local.tee 0
      i32.eqz
      br_if 0 (;@1;)
      loop  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.load offset=20
          local.get 0
          i32.load offset=24
          i32.eq
          br_if 0 (;@3;)
          local.get 0
          i32.const 0
          i32.const 0
          local.get 0
          i32.load offset=32
          call_indirect (type 1)
          drop
        end
        block  ;; label = @3
          local.get 0
          i32.load offset=4
          local.tee 1
          local.get 0
          i32.load offset=8
          local.tee 2
          i32.eq
          br_if 0 (;@3;)
          local.get 0
          local.get 1
          local.get 2
          i32.sub
          i64.extend_i32_s
          i32.const 1
          local.get 0
          i32.load offset=36
          call_indirect (type 2)
          drop
        end
        local.get 0
        i32.load offset=52
        local.tee 0
        br_if 0 (;@2;)
      end
    end
    block  ;; label = @1
      i32.const 0
      i32.load offset=6200
      local.tee 0
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 0
        i32.load offset=20
        local.get 0
        i32.load offset=24
        i32.eq
        br_if 0 (;@2;)
        local.get 0
        i32.const 0
        i32.const 0
        local.get 0
        i32.load offset=32
        call_indirect (type 1)
        drop
      end
      local.get 0
      i32.load offset=4
      local.tee 1
      local.get 0
      i32.load offset=8
      local.tee 2
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      local.get 2
      i32.sub
      i64.extend_i32_s
      i32.const 1
      local.get 0
      i32.load offset=36
      call_indirect (type 2)
      drop
    end
    block  ;; label = @1
      i32.const 0
      i32.load offset=4344
      local.tee 0
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 0
        i32.load offset=20
        local.get 0
        i32.load offset=24
        i32.eq
        br_if 0 (;@2;)
        local.get 0
        i32.const 0
        i32.const 0
        local.get 0
        i32.load offset=32
        call_indirect (type 1)
        drop
      end
      local.get 0
      i32.load offset=4
      local.tee 1
      local.get 0
      i32.load offset=8
      local.tee 2
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      local.get 2
      i32.sub
      i64.extend_i32_s
      i32.const 1
      local.get 0
      i32.load offset=36
      call_indirect (type 2)
      drop
    end
    block  ;; label = @1
      i32.const 0
      i32.load offset=4464
      local.tee 0
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 0
        i32.load offset=20
        local.get 0
        i32.load offset=24
        i32.eq
        br_if 0 (;@2;)
        local.get 0
        i32.const 0
        i32.const 0
        local.get 0
        i32.load offset=32
        call_indirect (type 1)
        drop
      end
      local.get 0
      i32.load offset=4
      local.tee 1
      local.get 0
      i32.load offset=8
      local.tee 2
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      local.get 2
      i32.sub
      i64.extend_i32_s
      i32.const 1
      local.get 0
      i32.load offset=36
      call_indirect (type 2)
      drop
    end)
  (func $__towrite (type 0) (param i32) (result i32)
    (local i32)
    local.get 0
    local.get 0
    i32.load offset=60
    local.tee 1
    i32.const -1
    i32.add
    local.get 1
    i32.or
    i32.store offset=60
    block  ;; label = @1
      local.get 0
      i32.load
      local.tee 1
      i32.const 8
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      i32.const 32
      i32.or
      i32.store
      i32.const -1
      return
    end
    local.get 0
    i64.const 0
    i64.store offset=4 align=4
    local.get 0
    local.get 0
    i32.load offset=40
    local.tee 1
    i32.store offset=24
    local.get 0
    local.get 1
    i32.store offset=20
    local.get 0
    local.get 1
    local.get 0
    i32.load offset=44
    i32.add
    i32.store offset=16
    i32.const 0)
  (func $__fwritex (type 1) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.load offset=16
        local.tee 3
        br_if 0 (;@2;)
        i32.const 0
        local.set 4
        local.get 2
        call $__towrite
        br_if 1 (;@1;)
        local.get 2
        i32.load offset=16
        local.set 3
      end
      block  ;; label = @2
        local.get 3
        local.get 2
        i32.load offset=20
        local.tee 5
        i32.sub
        local.get 1
        i32.ge_u
        br_if 0 (;@2;)
        local.get 2
        local.get 0
        local.get 1
        local.get 2
        i32.load offset=32
        call_indirect (type 1)
        return
      end
      i32.const 0
      local.set 6
      block  ;; label = @2
        local.get 2
        i32.load offset=64
        i32.const 0
        i32.lt_s
        br_if 0 (;@2;)
        i32.const 0
        local.set 6
        local.get 0
        local.set 4
        i32.const 0
        local.set 3
        loop  ;; label = @3
          local.get 1
          local.get 3
          i32.eq
          br_if 1 (;@2;)
          local.get 3
          i32.const 1
          i32.add
          local.set 3
          local.get 4
          i32.const -1
          i32.add
          local.tee 4
          local.get 1
          i32.add
          local.tee 7
          i32.load8_u
          i32.const 10
          i32.ne
          br_if 0 (;@3;)
        end
        local.get 2
        local.get 0
        local.get 1
        local.get 3
        i32.sub
        i32.const 1
        i32.add
        local.tee 6
        local.get 2
        i32.load offset=32
        call_indirect (type 1)
        local.tee 4
        local.get 6
        i32.lt_u
        br_if 1 (;@1;)
        local.get 3
        i32.const -1
        i32.add
        local.set 1
        local.get 7
        i32.const 1
        i32.add
        local.set 0
        local.get 2
        i32.load offset=20
        local.set 5
      end
      local.get 5
      local.get 0
      local.get 1
      call $memcpy
      drop
      local.get 2
      local.get 2
      i32.load offset=20
      local.get 1
      i32.add
      i32.store offset=20
      local.get 6
      local.get 1
      i32.add
      local.set 4
    end
    local.get 4)
  (func $fwrite (type 5) (param i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    local.get 2
    local.get 1
    i32.mul
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        i32.load offset=16
        local.tee 5
        br_if 0 (;@2;)
        i32.const 0
        local.set 6
        local.get 3
        call $__towrite
        br_if 1 (;@1;)
        local.get 3
        i32.load offset=16
        local.set 5
      end
      block  ;; label = @2
        local.get 5
        local.get 3
        i32.load offset=20
        local.tee 7
        i32.sub
        local.get 4
        i32.ge_u
        br_if 0 (;@2;)
        local.get 3
        local.get 0
        local.get 4
        local.get 3
        i32.load offset=32
        call_indirect (type 1)
        local.set 6
        br 1 (;@1;)
      end
      i32.const 0
      local.set 8
      block  ;; label = @2
        block  ;; label = @3
          local.get 3
          i32.load offset=64
          i32.const 0
          i32.ge_s
          br_if 0 (;@3;)
          local.get 4
          local.set 5
          br 1 (;@2;)
        end
        local.get 0
        local.get 4
        i32.add
        local.set 6
        i32.const 0
        local.set 8
        i32.const 0
        local.set 5
        loop  ;; label = @3
          block  ;; label = @4
            local.get 4
            local.get 5
            i32.add
            br_if 0 (;@4;)
            local.get 4
            local.set 5
            br 2 (;@2;)
          end
          local.get 5
          i32.const -1
          i32.add
          local.tee 5
          local.get 6
          i32.add
          local.tee 9
          i32.load8_u
          i32.const 10
          i32.ne
          br_if 0 (;@3;)
        end
        local.get 3
        local.get 0
        local.get 4
        local.get 5
        i32.add
        i32.const 1
        i32.add
        local.tee 8
        local.get 3
        i32.load offset=32
        call_indirect (type 1)
        local.tee 6
        local.get 8
        i32.lt_u
        br_if 1 (;@1;)
        local.get 5
        i32.const -1
        i32.xor
        local.set 5
        local.get 9
        i32.const 1
        i32.add
        local.set 0
        local.get 3
        i32.load offset=20
        local.set 7
      end
      local.get 7
      local.get 0
      local.get 5
      call $memcpy
      drop
      local.get 3
      local.get 3
      i32.load offset=20
      local.get 5
      i32.add
      i32.store offset=20
      local.get 8
      local.get 5
      i32.add
      local.set 6
    end
    block  ;; label = @1
      local.get 6
      local.get 4
      i32.ne
      br_if 0 (;@1;)
      local.get 2
      i32.const 0
      local.get 1
      select
      return
    end
    local.get 6
    local.get 1
    i32.div_u)
  (func $strerror (type 0) (param i32) (result i32)
    (local i32)
    block  ;; label = @1
      i32.const 0
      i32.load offset=6228
      local.tee 1
      br_if 0 (;@1;)
      i32.const 6204
      local.set 1
      i32.const 0
      i32.const 6204
      i32.store offset=6228
    end
    i32.const 0
    local.get 0
    local.get 0
    i32.const 76
    i32.gt_u
    select
    i32.const 1
    i32.shl
    i32.const 3072
    i32.add
    i32.load16_u
    i32.const 1517
    i32.add
    local.get 1
    i32.load offset=20
    call $__lctrans)
  (func $fputs (type 3) (param i32 i32) (result i32)
    (local i32)
    local.get 0
    call $strlen
    local.set 2
    i32.const -1
    i32.const 0
    local.get 2
    local.get 0
    i32.const 1
    local.get 2
    local.get 1
    call $fwrite
    i32.ne
    select)
  (func $vfprintf (type 1) (param i32 i32 i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 208
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    local.get 2
    i32.store offset=204
    local.get 3
    i32.const 160
    i32.add
    i32.const 32
    i32.add
    i64.const 0
    i64.store
    local.get 3
    i32.const 184
    i32.add
    i64.const 0
    i64.store
    local.get 3
    i32.const 176
    i32.add
    i64.const 0
    i64.store
    local.get 3
    i64.const 0
    i64.store offset=168
    local.get 3
    i64.const 0
    i64.store offset=160
    local.get 3
    local.get 2
    i32.store offset=200
    block  ;; label = @1
      block  ;; label = @2
        i32.const 0
        local.get 1
        local.get 3
        i32.const 200
        i32.add
        local.get 3
        i32.const 80
        i32.add
        local.get 3
        i32.const 160
        i32.add
        call $printf_core
        i32.const 0
        i32.ge_s
        br_if 0 (;@2;)
        i32.const -1
        local.set 0
        br 1 (;@1;)
      end
      local.get 0
      i32.load
      local.set 4
      block  ;; label = @2
        local.get 0
        i32.load offset=60
        i32.const 0
        i32.gt_s
        br_if 0 (;@2;)
        local.get 0
        local.get 4
        i32.const -33
        i32.and
        i32.store
      end
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              i32.load offset=44
              br_if 0 (;@5;)
              local.get 0
              i32.const 80
              i32.store offset=44
              local.get 0
              i32.const 0
              i32.store offset=24
              local.get 0
              i64.const 0
              i64.store offset=16
              local.get 0
              i32.load offset=40
              local.set 5
              local.get 0
              local.get 3
              i32.store offset=40
              br 1 (;@4;)
            end
            i32.const 0
            local.set 5
            local.get 0
            i32.load offset=16
            br_if 1 (;@3;)
          end
          i32.const -1
          local.set 2
          local.get 0
          call $__towrite
          br_if 1 (;@2;)
        end
        local.get 0
        local.get 1
        local.get 3
        i32.const 200
        i32.add
        local.get 3
        i32.const 80
        i32.add
        local.get 3
        i32.const 160
        i32.add
        call $printf_core
        local.set 2
      end
      local.get 4
      i32.const 32
      i32.and
      local.set 1
      block  ;; label = @2
        local.get 5
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        i32.const 0
        i32.const 0
        local.get 0
        i32.load offset=32
        call_indirect (type 1)
        drop
        local.get 0
        i32.const 0
        i32.store offset=44
        local.get 0
        local.get 5
        i32.store offset=40
        local.get 0
        i32.const 0
        i32.store offset=24
        local.get 0
        i32.load offset=20
        local.set 5
        local.get 0
        i64.const 0
        i64.store offset=16
        local.get 2
        i32.const -1
        local.get 5
        select
        local.set 2
      end
      local.get 0
      local.get 0
      i32.load
      local.tee 5
      local.get 1
      i32.or
      i32.store
      i32.const -1
      local.get 2
      local.get 5
      i32.const 32
      i32.and
      select
      local.set 0
    end
    local.get 3
    i32.const 208
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $printf_core (type 10) (param i32 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 f64 i32 i32 i32 i32 i32 i32 i32 i32 f64)
    global.get $__stack_pointer
    i32.const 880
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 5
    i32.const 68
    i32.add
    i32.const 12
    i32.add
    local.set 6
    i32.const 0
    local.get 5
    i32.const 112
    i32.add
    i32.sub
    local.set 7
    local.get 5
    i32.const -3988
    i32.add
    local.set 8
    local.get 5
    i32.const 55
    i32.add
    local.set 9
    local.get 5
    i32.const 80
    i32.add
    i32.const -2
    i32.xor
    local.set 10
    local.get 5
    i32.const 68
    i32.add
    i32.const 11
    i32.add
    local.set 11
    local.get 5
    i32.const 80
    i32.add
    i32.const 8
    i32.or
    local.set 12
    local.get 5
    i32.const 80
    i32.add
    i32.const 9
    i32.or
    local.set 13
    i32.const -10
    local.get 5
    i32.const 68
    i32.add
    i32.sub
    local.set 14
    local.get 5
    i32.const 68
    i32.add
    i32.const 10
    i32.add
    local.set 15
    local.get 5
    i32.const 56
    i32.add
    local.set 16
    i32.const 0
    local.set 17
    i32.const 0
    local.set 18
    i32.const 0
    local.set 19
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          loop  ;; label = @4
            local.get 1
            local.set 20
            local.get 19
            local.get 18
            i32.const 2147483647
            i32.xor
            i32.gt_s
            br_if 1 (;@3;)
            local.get 19
            local.get 18
            i32.add
            local.set 18
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 20
                              i32.load8_u
                              local.tee 19
                              i32.eqz
                              br_if 0 (;@13;)
                              local.get 20
                              local.set 1
                              loop  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      local.get 19
                                      i32.const 255
                                      i32.and
                                      local.tee 19
                                      i32.eqz
                                      br_if 0 (;@17;)
                                      local.get 19
                                      i32.const 37
                                      i32.ne
                                      br_if 2 (;@15;)
                                      local.get 1
                                      local.set 21
                                      local.get 1
                                      local.set 19
                                      loop  ;; label = @18
                                        block  ;; label = @19
                                          local.get 19
                                          i32.load8_u offset=1
                                          i32.const 37
                                          i32.eq
                                          br_if 0 (;@19;)
                                          local.get 19
                                          local.set 1
                                          br 3 (;@16;)
                                        end
                                        local.get 21
                                        i32.const 1
                                        i32.add
                                        local.set 21
                                        local.get 19
                                        i32.load8_u offset=2
                                        local.set 22
                                        local.get 19
                                        i32.const 2
                                        i32.add
                                        local.tee 1
                                        local.set 19
                                        local.get 22
                                        i32.const 37
                                        i32.eq
                                        br_if 0 (;@18;)
                                        br 2 (;@16;)
                                      end
                                    end
                                    local.get 1
                                    local.set 21
                                  end
                                  local.get 21
                                  local.get 20
                                  i32.sub
                                  local.tee 19
                                  local.get 18
                                  i32.const 2147483647
                                  i32.xor
                                  local.tee 21
                                  i32.gt_s
                                  br_if 12 (;@3;)
                                  block  ;; label = @16
                                    local.get 0
                                    i32.eqz
                                    br_if 0 (;@16;)
                                    local.get 0
                                    i32.load8_u
                                    i32.const 32
                                    i32.and
                                    br_if 0 (;@16;)
                                    local.get 20
                                    local.get 19
                                    local.get 0
                                    call $__fwritex
                                    drop
                                  end
                                  local.get 19
                                  br_if 11 (;@4;)
                                  local.get 1
                                  i32.const 1
                                  i32.add
                                  local.set 19
                                  i32.const -1
                                  local.set 23
                                  block  ;; label = @16
                                    local.get 1
                                    i32.load8_s offset=1
                                    local.tee 24
                                    i32.const -48
                                    i32.add
                                    local.tee 22
                                    i32.const 9
                                    i32.gt_u
                                    br_if 0 (;@16;)
                                    local.get 1
                                    i32.load8_u offset=2
                                    i32.const 36
                                    i32.ne
                                    br_if 0 (;@16;)
                                    local.get 1
                                    i32.const 3
                                    i32.add
                                    local.set 19
                                    local.get 1
                                    i32.load8_s offset=3
                                    local.set 24
                                    i32.const 1
                                    local.set 17
                                    local.get 22
                                    local.set 23
                                  end
                                  i32.const 0
                                  local.set 25
                                  block  ;; label = @16
                                    local.get 24
                                    i32.const -32
                                    i32.add
                                    local.tee 1
                                    i32.const 31
                                    i32.gt_u
                                    br_if 0 (;@16;)
                                    i32.const 1
                                    local.get 1
                                    i32.shl
                                    local.tee 1
                                    i32.const 75913
                                    i32.and
                                    i32.eqz
                                    br_if 0 (;@16;)
                                    local.get 19
                                    i32.const 1
                                    i32.add
                                    local.set 22
                                    i32.const 0
                                    local.set 25
                                    loop  ;; label = @17
                                      local.get 1
                                      local.get 25
                                      i32.or
                                      local.set 25
                                      local.get 22
                                      local.tee 19
                                      i32.load8_s
                                      local.tee 24
                                      i32.const -32
                                      i32.add
                                      local.tee 1
                                      i32.const 32
                                      i32.ge_u
                                      br_if 1 (;@16;)
                                      local.get 19
                                      i32.const 1
                                      i32.add
                                      local.set 22
                                      i32.const 1
                                      local.get 1
                                      i32.shl
                                      local.tee 1
                                      i32.const 75913
                                      i32.and
                                      br_if 0 (;@17;)
                                    end
                                  end
                                  block  ;; label = @16
                                    local.get 24
                                    i32.const 42
                                    i32.ne
                                    br_if 0 (;@16;)
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        local.get 19
                                        i32.load8_s offset=1
                                        i32.const -48
                                        i32.add
                                        local.tee 1
                                        i32.const 9
                                        i32.gt_u
                                        br_if 0 (;@18;)
                                        local.get 19
                                        i32.load8_u offset=2
                                        i32.const 36
                                        i32.ne
                                        br_if 0 (;@18;)
                                        local.get 4
                                        local.get 1
                                        i32.const 2
                                        i32.shl
                                        i32.add
                                        i32.const 10
                                        i32.store
                                        local.get 19
                                        i32.const 3
                                        i32.add
                                        local.set 22
                                        local.get 19
                                        i32.load8_s offset=1
                                        i32.const 3
                                        i32.shl
                                        local.get 3
                                        i32.add
                                        i32.const -384
                                        i32.add
                                        i32.load
                                        local.set 26
                                        i32.const 1
                                        local.set 17
                                        br 1 (;@17;)
                                      end
                                      local.get 17
                                      br_if 6 (;@11;)
                                      local.get 19
                                      i32.const 1
                                      i32.add
                                      local.set 22
                                      block  ;; label = @18
                                        local.get 0
                                        br_if 0 (;@18;)
                                        i32.const 0
                                        local.set 17
                                        i32.const 0
                                        local.set 26
                                        br 6 (;@12;)
                                      end
                                      local.get 2
                                      local.get 2
                                      i32.load
                                      local.tee 1
                                      i32.const 4
                                      i32.add
                                      i32.store
                                      local.get 1
                                      i32.load
                                      local.set 26
                                      i32.const 0
                                      local.set 17
                                    end
                                    local.get 26
                                    i32.const -1
                                    i32.gt_s
                                    br_if 4 (;@12;)
                                    i32.const 0
                                    local.get 26
                                    i32.sub
                                    local.set 26
                                    local.get 25
                                    i32.const 8192
                                    i32.or
                                    local.set 25
                                    br 4 (;@12;)
                                  end
                                  i32.const 0
                                  local.set 26
                                  block  ;; label = @16
                                    local.get 24
                                    i32.const -48
                                    i32.add
                                    local.tee 1
                                    i32.const 9
                                    i32.le_u
                                    br_if 0 (;@16;)
                                    local.get 19
                                    local.set 22
                                    br 4 (;@12;)
                                  end
                                  i32.const 0
                                  local.set 26
                                  loop  ;; label = @16
                                    block  ;; label = @17
                                      local.get 26
                                      i32.const 214748364
                                      i32.gt_u
                                      br_if 0 (;@17;)
                                      i32.const -1
                                      local.get 26
                                      i32.const 10
                                      i32.mul
                                      local.tee 22
                                      local.get 1
                                      i32.add
                                      local.get 1
                                      local.get 22
                                      i32.const 2147483647
                                      i32.xor
                                      i32.gt_u
                                      select
                                      local.set 26
                                      local.get 19
                                      i32.load8_s offset=1
                                      local.set 1
                                      local.get 19
                                      i32.const 1
                                      i32.add
                                      local.tee 22
                                      local.set 19
                                      local.get 1
                                      i32.const -48
                                      i32.add
                                      local.tee 1
                                      i32.const 10
                                      i32.lt_u
                                      br_if 1 (;@16;)
                                      local.get 26
                                      i32.const 0
                                      i32.lt_s
                                      br_if 14 (;@3;)
                                      br 5 (;@12;)
                                    end
                                    local.get 19
                                    i32.load8_s offset=1
                                    local.set 1
                                    i32.const -1
                                    local.set 26
                                    local.get 19
                                    i32.const 1
                                    i32.add
                                    local.set 19
                                    local.get 1
                                    i32.const -48
                                    i32.add
                                    local.tee 1
                                    i32.const 10
                                    i32.lt_u
                                    br_if 0 (;@16;)
                                    br 13 (;@3;)
                                  end
                                end
                                local.get 1
                                i32.load8_u offset=1
                                local.set 19
                                local.get 1
                                i32.const 1
                                i32.add
                                local.set 1
                                br 0 (;@14;)
                              end
                            end
                            local.get 0
                            br_if 11 (;@1;)
                            block  ;; label = @13
                              local.get 17
                              br_if 0 (;@13;)
                              i32.const 0
                              local.set 18
                              br 12 (;@1;)
                            end
                            block  ;; label = @13
                              block  ;; label = @14
                                local.get 4
                                i32.load offset=4
                                local.tee 1
                                br_if 0 (;@14;)
                                i32.const 1
                                local.set 1
                                br 1 (;@13;)
                              end
                              local.get 3
                              i32.const 8
                              i32.add
                              local.get 1
                              local.get 2
                              call $pop_arg
                              block  ;; label = @14
                                local.get 4
                                i32.load offset=8
                                local.tee 1
                                br_if 0 (;@14;)
                                i32.const 2
                                local.set 1
                                br 1 (;@13;)
                              end
                              local.get 3
                              i32.const 16
                              i32.add
                              local.get 1
                              local.get 2
                              call $pop_arg
                              block  ;; label = @14
                                local.get 4
                                i32.load offset=12
                                local.tee 1
                                br_if 0 (;@14;)
                                i32.const 3
                                local.set 1
                                br 1 (;@13;)
                              end
                              local.get 3
                              i32.const 24
                              i32.add
                              local.get 1
                              local.get 2
                              call $pop_arg
                              block  ;; label = @14
                                local.get 4
                                i32.load offset=16
                                local.tee 1
                                br_if 0 (;@14;)
                                i32.const 4
                                local.set 1
                                br 1 (;@13;)
                              end
                              local.get 3
                              i32.const 32
                              i32.add
                              local.get 1
                              local.get 2
                              call $pop_arg
                              block  ;; label = @14
                                local.get 4
                                i32.load offset=20
                                local.tee 1
                                br_if 0 (;@14;)
                                i32.const 5
                                local.set 1
                                br 1 (;@13;)
                              end
                              local.get 3
                              i32.const 40
                              i32.add
                              local.get 1
                              local.get 2
                              call $pop_arg
                              block  ;; label = @14
                                local.get 4
                                i32.load offset=24
                                local.tee 1
                                br_if 0 (;@14;)
                                i32.const 6
                                local.set 1
                                br 1 (;@13;)
                              end
                              local.get 3
                              i32.const 48
                              i32.add
                              local.get 1
                              local.get 2
                              call $pop_arg
                              block  ;; label = @14
                                local.get 4
                                i32.load offset=28
                                local.tee 1
                                br_if 0 (;@14;)
                                i32.const 7
                                local.set 1
                                br 1 (;@13;)
                              end
                              local.get 3
                              i32.const 56
                              i32.add
                              local.get 1
                              local.get 2
                              call $pop_arg
                              block  ;; label = @14
                                local.get 4
                                i32.load offset=32
                                local.tee 1
                                br_if 0 (;@14;)
                                i32.const 8
                                local.set 1
                                br 1 (;@13;)
                              end
                              local.get 3
                              i32.const 64
                              i32.add
                              local.get 1
                              local.get 2
                              call $pop_arg
                              block  ;; label = @14
                                local.get 4
                                i32.load offset=36
                                local.tee 1
                                br_if 0 (;@14;)
                                i32.const 9
                                local.set 1
                                br 1 (;@13;)
                              end
                              local.get 3
                              i32.const 72
                              i32.add
                              local.get 1
                              local.get 2
                              call $pop_arg
                              i32.const 1
                              local.set 18
                              br 12 (;@1;)
                            end
                            local.get 1
                            i32.const 2
                            i32.shl
                            local.set 1
                            loop  ;; label = @13
                              local.get 4
                              local.get 1
                              i32.add
                              i32.load
                              br_if 2 (;@11;)
                              local.get 1
                              i32.const 4
                              i32.add
                              local.tee 1
                              i32.const 40
                              i32.ne
                              br_if 0 (;@13;)
                            end
                            i32.const 1
                            local.set 18
                            br 11 (;@1;)
                          end
                          i32.const 0
                          local.set 19
                          i32.const -1
                          local.set 24
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 22
                              i32.load8_u
                              i32.const 46
                              i32.eq
                              br_if 0 (;@13;)
                              local.get 22
                              local.set 1
                              i32.const 0
                              local.set 27
                              br 1 (;@12;)
                            end
                            block  ;; label = @13
                              local.get 22
                              i32.load8_s offset=1
                              local.tee 24
                              i32.const 42
                              i32.ne
                              br_if 0 (;@13;)
                              block  ;; label = @14
                                block  ;; label = @15
                                  local.get 22
                                  i32.load8_s offset=2
                                  i32.const -48
                                  i32.add
                                  local.tee 1
                                  i32.const 9
                                  i32.gt_u
                                  br_if 0 (;@15;)
                                  local.get 22
                                  i32.load8_u offset=3
                                  i32.const 36
                                  i32.ne
                                  br_if 0 (;@15;)
                                  local.get 4
                                  local.get 1
                                  i32.const 2
                                  i32.shl
                                  i32.add
                                  i32.const 10
                                  i32.store
                                  local.get 22
                                  i32.const 4
                                  i32.add
                                  local.set 1
                                  local.get 22
                                  i32.load8_s offset=2
                                  i32.const 3
                                  i32.shl
                                  local.get 3
                                  i32.add
                                  i32.const -384
                                  i32.add
                                  i32.load
                                  local.set 24
                                  br 1 (;@14;)
                                end
                                local.get 17
                                br_if 3 (;@11;)
                                local.get 22
                                i32.const 2
                                i32.add
                                local.set 1
                                block  ;; label = @15
                                  local.get 0
                                  br_if 0 (;@15;)
                                  i32.const 0
                                  local.set 24
                                  br 1 (;@14;)
                                end
                                local.get 2
                                local.get 2
                                i32.load
                                local.tee 22
                                i32.const 4
                                i32.add
                                i32.store
                                local.get 22
                                i32.load
                                local.set 24
                              end
                              local.get 24
                              i32.const -1
                              i32.xor
                              i32.const 31
                              i32.shr_u
                              local.set 27
                              br 1 (;@12;)
                            end
                            local.get 22
                            i32.const 1
                            i32.add
                            local.set 1
                            block  ;; label = @13
                              local.get 24
                              i32.const -48
                              i32.add
                              local.tee 28
                              i32.const 9
                              i32.le_u
                              br_if 0 (;@13;)
                              i32.const 1
                              local.set 27
                              i32.const 0
                              local.set 24
                              br 1 (;@12;)
                            end
                            i32.const 0
                            local.set 29
                            local.get 1
                            local.set 22
                            loop  ;; label = @13
                              i32.const -1
                              local.set 24
                              block  ;; label = @14
                                local.get 29
                                i32.const 214748364
                                i32.gt_u
                                br_if 0 (;@14;)
                                i32.const -1
                                local.get 29
                                i32.const 10
                                i32.mul
                                local.tee 1
                                local.get 28
                                i32.add
                                local.get 28
                                local.get 1
                                i32.const 2147483647
                                i32.xor
                                i32.gt_u
                                select
                                local.set 24
                              end
                              i32.const 1
                              local.set 27
                              local.get 22
                              i32.load8_s offset=1
                              local.set 28
                              local.get 22
                              i32.const 1
                              i32.add
                              local.tee 1
                              local.set 22
                              local.get 24
                              local.set 29
                              local.get 28
                              i32.const -48
                              i32.add
                              local.tee 28
                              i32.const 10
                              i32.lt_u
                              br_if 0 (;@13;)
                            end
                          end
                          loop  ;; label = @12
                            local.get 19
                            local.set 22
                            local.get 1
                            i32.load8_s
                            local.tee 19
                            i32.const -123
                            i32.add
                            i32.const -58
                            i32.lt_u
                            br_if 1 (;@11;)
                            local.get 1
                            i32.const 1
                            i32.add
                            local.set 1
                            local.get 19
                            local.get 22
                            i32.const 58
                            i32.mul
                            i32.add
                            i32.const 3167
                            i32.add
                            i32.load8_u
                            local.tee 19
                            i32.const -1
                            i32.add
                            i32.const 8
                            i32.lt_u
                            br_if 0 (;@12;)
                          end
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                local.get 19
                                i32.const 27
                                i32.eq
                                br_if 0 (;@14;)
                                local.get 19
                                i32.eqz
                                br_if 3 (;@11;)
                                block  ;; label = @15
                                  local.get 23
                                  i32.const 0
                                  i32.lt_s
                                  br_if 0 (;@15;)
                                  local.get 4
                                  local.get 23
                                  i32.const 2
                                  i32.shl
                                  i32.add
                                  local.get 19
                                  i32.store
                                  local.get 5
                                  local.get 3
                                  local.get 23
                                  i32.const 3
                                  i32.shl
                                  i32.add
                                  i64.load
                                  i64.store offset=56
                                  br 2 (;@13;)
                                end
                                block  ;; label = @15
                                  local.get 0
                                  br_if 0 (;@15;)
                                  i32.const 0
                                  local.set 18
                                  br 14 (;@1;)
                                end
                                local.get 5
                                i32.const 56
                                i32.add
                                local.get 19
                                local.get 2
                                call $pop_arg
                                br 2 (;@12;)
                              end
                              local.get 23
                              i32.const -1
                              i32.gt_s
                              br_if 2 (;@11;)
                            end
                            i32.const 0
                            local.set 19
                            local.get 0
                            i32.eqz
                            br_if 8 (;@4;)
                          end
                          local.get 25
                          i32.const -65537
                          i32.and
                          local.tee 29
                          local.get 25
                          local.get 25
                          i32.const 8192
                          i32.and
                          select
                          local.set 30
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          block  ;; label = @20
                                            block  ;; label = @21
                                              block  ;; label = @22
                                                block  ;; label = @23
                                                  block  ;; label = @24
                                                    block  ;; label = @25
                                                      block  ;; label = @26
                                                        block  ;; label = @27
                                                          block  ;; label = @28
                                                            local.get 1
                                                            i32.const -1
                                                            i32.add
                                                            i32.load8_s
                                                            local.tee 19
                                                            i32.const -33
                                                            i32.and
                                                            local.get 19
                                                            local.get 19
                                                            i32.const 15
                                                            i32.and
                                                            i32.const 3
                                                            i32.eq
                                                            select
                                                            local.get 19
                                                            local.get 22
                                                            select
                                                            local.tee 31
                                                            i32.const -65
                                                            i32.add
                                                            br_table 16 (;@12;) 18 (;@10;) 13 (;@15;) 18 (;@10;) 16 (;@12;) 16 (;@12;) 16 (;@12;) 18 (;@10;) 18 (;@10;) 18 (;@10;) 18 (;@10;) 18 (;@10;) 18 (;@10;) 18 (;@10;) 18 (;@10;) 18 (;@10;) 18 (;@10;) 18 (;@10;) 12 (;@16;) 18 (;@10;) 18 (;@10;) 18 (;@10;) 18 (;@10;) 3 (;@25;) 18 (;@10;) 18 (;@10;) 18 (;@10;) 18 (;@10;) 18 (;@10;) 18 (;@10;) 18 (;@10;) 18 (;@10;) 16 (;@12;) 18 (;@10;) 8 (;@20;) 5 (;@23;) 16 (;@12;) 16 (;@12;) 16 (;@12;) 18 (;@10;) 5 (;@23;) 18 (;@10;) 18 (;@10;) 18 (;@10;) 9 (;@19;) 1 (;@27;) 4 (;@24;) 2 (;@26;) 18 (;@10;) 18 (;@10;) 10 (;@18;) 18 (;@10;) 0 (;@28;) 18 (;@10;) 18 (;@10;) 3 (;@25;) 18 (;@10;)
                                                          end
                                                          i32.const 0
                                                          local.set 28
                                                          i32.const 1034
                                                          local.set 23
                                                          local.get 5
                                                          i64.load offset=56
                                                          local.set 32
                                                          br 5 (;@22;)
                                                        end
                                                        i32.const 0
                                                        local.set 19
                                                        block  ;; label = @27
                                                          block  ;; label = @28
                                                            block  ;; label = @29
                                                              block  ;; label = @30
                                                                block  ;; label = @31
                                                                  block  ;; label = @32
                                                                    block  ;; label = @33
                                                                      local.get 22
                                                                      i32.const 255
                                                                      i32.and
                                                                      br_table 0 (;@33;) 1 (;@32;) 2 (;@31;) 3 (;@30;) 4 (;@29;) 29 (;@4;) 5 (;@28;) 6 (;@27;) 29 (;@4;)
                                                                    end
                                                                    local.get 5
                                                                    i32.load offset=56
                                                                    local.get 18
                                                                    i32.store
                                                                    br 28 (;@4;)
                                                                  end
                                                                  local.get 5
                                                                  i32.load offset=56
                                                                  local.get 18
                                                                  i32.store
                                                                  br 27 (;@4;)
                                                                end
                                                                local.get 5
                                                                i32.load offset=56
                                                                local.get 18
                                                                i64.extend_i32_s
                                                                i64.store
                                                                br 26 (;@4;)
                                                              end
                                                              local.get 5
                                                              i32.load offset=56
                                                              local.get 18
                                                              i32.store16
                                                              br 25 (;@4;)
                                                            end
                                                            local.get 5
                                                            i32.load offset=56
                                                            local.get 18
                                                            i32.store8
                                                            br 24 (;@4;)
                                                          end
                                                          local.get 5
                                                          i32.load offset=56
                                                          local.get 18
                                                          i32.store
                                                          br 23 (;@4;)
                                                        end
                                                        local.get 5
                                                        i32.load offset=56
                                                        local.get 18
                                                        i64.extend_i32_s
                                                        i64.store
                                                        br 22 (;@4;)
                                                      end
                                                      local.get 24
                                                      i32.const 8
                                                      local.get 24
                                                      i32.const 8
                                                      i32.gt_u
                                                      select
                                                      local.set 24
                                                      local.get 30
                                                      i32.const 8
                                                      i32.or
                                                      local.set 30
                                                      i32.const 120
                                                      local.set 31
                                                    end
                                                    i32.const 0
                                                    local.set 28
                                                    i32.const 1034
                                                    local.set 23
                                                    block  ;; label = @25
                                                      local.get 5
                                                      i64.load offset=56
                                                      local.tee 32
                                                      i64.eqz
                                                      i32.eqz
                                                      br_if 0 (;@25;)
                                                      local.get 16
                                                      local.set 20
                                                      br 4 (;@21;)
                                                    end
                                                    local.get 31
                                                    i32.const 32
                                                    i32.and
                                                    local.set 22
                                                    local.get 16
                                                    local.set 20
                                                    loop  ;; label = @25
                                                      local.get 20
                                                      i32.const -1
                                                      i32.add
                                                      local.tee 20
                                                      local.get 32
                                                      i32.wrap_i64
                                                      i32.const 15
                                                      i32.and
                                                      i32.const 3696
                                                      i32.add
                                                      i32.load8_u
                                                      local.get 22
                                                      i32.or
                                                      i32.store8
                                                      local.get 32
                                                      i64.const 15
                                                      i64.gt_u
                                                      local.set 19
                                                      local.get 32
                                                      i64.const 4
                                                      i64.shr_u
                                                      local.set 32
                                                      local.get 19
                                                      br_if 0 (;@25;)
                                                    end
                                                    local.get 30
                                                    i32.const 8
                                                    i32.and
                                                    i32.eqz
                                                    br_if 3 (;@21;)
                                                    local.get 31
                                                    i32.const 4
                                                    i32.shr_s
                                                    i32.const 1034
                                                    i32.add
                                                    local.set 23
                                                    i32.const 2
                                                    local.set 28
                                                    br 3 (;@21;)
                                                  end
                                                  local.get 16
                                                  local.set 20
                                                  block  ;; label = @24
                                                    local.get 5
                                                    i64.load offset=56
                                                    local.tee 32
                                                    i64.eqz
                                                    br_if 0 (;@24;)
                                                    local.get 16
                                                    local.set 20
                                                    loop  ;; label = @25
                                                      local.get 20
                                                      i32.const -1
                                                      i32.add
                                                      local.tee 20
                                                      local.get 32
                                                      i32.wrap_i64
                                                      i32.const 7
                                                      i32.and
                                                      i32.const 48
                                                      i32.or
                                                      i32.store8
                                                      local.get 32
                                                      i64.const 7
                                                      i64.gt_u
                                                      local.set 19
                                                      local.get 32
                                                      i64.const 3
                                                      i64.shr_u
                                                      local.set 32
                                                      local.get 19
                                                      br_if 0 (;@25;)
                                                    end
                                                  end
                                                  i32.const 0
                                                  local.set 28
                                                  i32.const 1034
                                                  local.set 23
                                                  local.get 30
                                                  i32.const 8
                                                  i32.and
                                                  i32.eqz
                                                  br_if 2 (;@21;)
                                                  local.get 24
                                                  local.get 16
                                                  local.get 20
                                                  i32.sub
                                                  local.tee 19
                                                  i32.const 1
                                                  i32.add
                                                  local.get 24
                                                  local.get 19
                                                  i32.gt_s
                                                  select
                                                  local.set 24
                                                  br 2 (;@21;)
                                                end
                                                block  ;; label = @23
                                                  local.get 5
                                                  i64.load offset=56
                                                  local.tee 32
                                                  i64.const -1
                                                  i64.gt_s
                                                  br_if 0 (;@23;)
                                                  local.get 5
                                                  i64.const 0
                                                  local.get 32
                                                  i64.sub
                                                  local.tee 32
                                                  i64.store offset=56
                                                  i32.const 1
                                                  local.set 28
                                                  i32.const 1034
                                                  local.set 23
                                                  br 1 (;@22;)
                                                end
                                                block  ;; label = @23
                                                  local.get 30
                                                  i32.const 2048
                                                  i32.and
                                                  i32.eqz
                                                  br_if 0 (;@23;)
                                                  i32.const 1
                                                  local.set 28
                                                  i32.const 1035
                                                  local.set 23
                                                  br 1 (;@22;)
                                                end
                                                i32.const 1036
                                                i32.const 1034
                                                local.get 30
                                                i32.const 1
                                                i32.and
                                                local.tee 28
                                                select
                                                local.set 23
                                              end
                                              block  ;; label = @22
                                                block  ;; label = @23
                                                  local.get 32
                                                  i64.const 4294967296
                                                  i64.ge_u
                                                  br_if 0 (;@23;)
                                                  local.get 32
                                                  local.set 33
                                                  local.get 16
                                                  local.set 20
                                                  br 1 (;@22;)
                                                end
                                                local.get 16
                                                local.set 20
                                                loop  ;; label = @23
                                                  local.get 20
                                                  i32.const -1
                                                  i32.add
                                                  local.tee 20
                                                  local.get 32
                                                  local.get 32
                                                  i64.const 10
                                                  i64.div_u
                                                  local.tee 33
                                                  i64.const 10
                                                  i64.mul
                                                  i64.sub
                                                  i32.wrap_i64
                                                  i32.const 48
                                                  i32.or
                                                  i32.store8
                                                  local.get 32
                                                  i64.const 42949672959
                                                  i64.gt_u
                                                  local.set 19
                                                  local.get 33
                                                  local.set 32
                                                  local.get 19
                                                  br_if 0 (;@23;)
                                                end
                                              end
                                              local.get 33
                                              i32.wrap_i64
                                              local.tee 19
                                              i32.eqz
                                              br_if 0 (;@21;)
                                              loop  ;; label = @22
                                                local.get 20
                                                i32.const -1
                                                i32.add
                                                local.tee 20
                                                local.get 19
                                                local.get 19
                                                i32.const 10
                                                i32.div_u
                                                local.tee 22
                                                i32.const 10
                                                i32.mul
                                                i32.sub
                                                i32.const 48
                                                i32.or
                                                i32.store8
                                                local.get 19
                                                i32.const 9
                                                i32.gt_u
                                                local.set 25
                                                local.get 22
                                                local.set 19
                                                local.get 25
                                                br_if 0 (;@22;)
                                              end
                                            end
                                            block  ;; label = @21
                                              local.get 27
                                              i32.eqz
                                              br_if 0 (;@21;)
                                              local.get 24
                                              i32.const 0
                                              i32.lt_s
                                              br_if 18 (;@3;)
                                            end
                                            local.get 30
                                            i32.const -65537
                                            i32.and
                                            local.get 30
                                            local.get 27
                                            select
                                            local.set 29
                                            block  ;; label = @21
                                              local.get 5
                                              i64.load offset=56
                                              local.tee 32
                                              i64.const 0
                                              i64.ne
                                              br_if 0 (;@21;)
                                              i32.const 0
                                              local.set 25
                                              local.get 24
                                              br_if 0 (;@21;)
                                              local.get 16
                                              local.set 20
                                              local.get 16
                                              local.set 19
                                              br 12 (;@9;)
                                            end
                                            local.get 24
                                            local.get 16
                                            local.get 20
                                            i32.sub
                                            local.get 32
                                            i64.eqz
                                            i32.add
                                            local.tee 19
                                            local.get 24
                                            local.get 19
                                            i32.gt_s
                                            select
                                            local.set 25
                                            local.get 16
                                            local.set 19
                                            br 11 (;@9;)
                                          end
                                          local.get 5
                                          local.get 5
                                          i64.load offset=56
                                          i64.store8 offset=55
                                          i32.const 0
                                          local.set 28
                                          i32.const 1034
                                          local.set 23
                                          i32.const 1
                                          local.set 25
                                          local.get 9
                                          local.set 20
                                          local.get 16
                                          local.set 19
                                          br 10 (;@9;)
                                        end
                                        i32.const 0
                                        i32.load offset=5128
                                        call $strerror
                                        local.set 20
                                        br 1 (;@17;)
                                      end
                                      local.get 5
                                      i32.load offset=56
                                      local.tee 19
                                      i32.const 1298
                                      local.get 19
                                      select
                                      local.set 20
                                    end
                                    local.get 20
                                    local.get 20
                                    local.get 24
                                    i32.const 2147483647
                                    local.get 24
                                    i32.const 2147483647
                                    i32.lt_u
                                    select
                                    call $strnlen
                                    local.tee 25
                                    i32.add
                                    local.set 19
                                    i32.const 0
                                    local.set 28
                                    i32.const 1034
                                    local.set 23
                                    local.get 24
                                    i32.const -1
                                    i32.gt_s
                                    br_if 7 (;@9;)
                                    local.get 19
                                    i32.load8_u
                                    i32.eqz
                                    br_if 7 (;@9;)
                                    br 13 (;@3;)
                                  end
                                  local.get 5
                                  i32.load offset=56
                                  local.set 20
                                  local.get 24
                                  br_if 1 (;@14;)
                                  i32.const 0
                                  local.set 19
                                  br 2 (;@13;)
                                end
                                local.get 5
                                i32.const 0
                                i32.store offset=12
                                local.get 5
                                local.get 5
                                i64.load offset=56
                                i64.store32 offset=8
                                local.get 5
                                local.get 5
                                i32.const 8
                                i32.add
                                i32.store offset=56
                                local.get 5
                                i32.const 8
                                i32.add
                                local.set 20
                                i32.const -1
                                local.set 24
                              end
                              i32.const 0
                              local.set 19
                              local.get 20
                              local.set 21
                              block  ;; label = @14
                                loop  ;; label = @15
                                  local.get 21
                                  i32.load
                                  local.tee 22
                                  i32.eqz
                                  br_if 1 (;@14;)
                                  block  ;; label = @16
                                    local.get 5
                                    i32.const 4
                                    i32.add
                                    local.get 22
                                    call $wctomb
                                    local.tee 22
                                    i32.const 0
                                    i32.lt_s
                                    local.tee 25
                                    br_if 0 (;@16;)
                                    local.get 22
                                    local.get 24
                                    local.get 19
                                    i32.sub
                                    i32.gt_u
                                    br_if 0 (;@16;)
                                    local.get 21
                                    i32.const 4
                                    i32.add
                                    local.set 21
                                    local.get 24
                                    local.get 22
                                    local.get 19
                                    i32.add
                                    local.tee 19
                                    i32.gt_u
                                    br_if 1 (;@15;)
                                    br 2 (;@14;)
                                  end
                                end
                                local.get 25
                                br_if 12 (;@2;)
                              end
                              local.get 19
                              i32.const 0
                              i32.lt_s
                              br_if 10 (;@3;)
                            end
                            block  ;; label = @13
                              local.get 30
                              i32.const 73728
                              i32.and
                              local.tee 25
                              br_if 0 (;@13;)
                              local.get 26
                              local.get 19
                              i32.le_s
                              br_if 0 (;@13;)
                              local.get 5
                              i32.const 112
                              i32.add
                              i32.const 32
                              local.get 26
                              local.get 19
                              i32.sub
                              local.tee 21
                              i32.const 256
                              local.get 21
                              i32.const 256
                              i32.lt_u
                              local.tee 22
                              select
                              call $memset
                              drop
                              block  ;; label = @14
                                local.get 22
                                br_if 0 (;@14;)
                                loop  ;; label = @15
                                  block  ;; label = @16
                                    local.get 0
                                    i32.load8_u
                                    i32.const 32
                                    i32.and
                                    br_if 0 (;@16;)
                                    local.get 5
                                    i32.const 112
                                    i32.add
                                    i32.const 256
                                    local.get 0
                                    call $__fwritex
                                    drop
                                  end
                                  local.get 21
                                  i32.const -256
                                  i32.add
                                  local.tee 21
                                  i32.const 255
                                  i32.gt_u
                                  br_if 0 (;@15;)
                                end
                              end
                              local.get 0
                              i32.load8_u
                              i32.const 32
                              i32.and
                              br_if 0 (;@13;)
                              local.get 5
                              i32.const 112
                              i32.add
                              local.get 21
                              local.get 0
                              call $__fwritex
                              drop
                            end
                            block  ;; label = @13
                              local.get 19
                              i32.eqz
                              br_if 0 (;@13;)
                              i32.const 0
                              local.set 21
                              loop  ;; label = @14
                                local.get 20
                                i32.load
                                local.tee 22
                                i32.eqz
                                br_if 1 (;@13;)
                                local.get 5
                                i32.const 4
                                i32.add
                                local.get 22
                                call $wctomb
                                local.tee 22
                                local.get 21
                                i32.add
                                local.tee 21
                                local.get 19
                                i32.gt_u
                                br_if 1 (;@13;)
                                block  ;; label = @15
                                  local.get 0
                                  i32.load8_u
                                  i32.const 32
                                  i32.and
                                  br_if 0 (;@15;)
                                  local.get 5
                                  i32.const 4
                                  i32.add
                                  local.get 22
                                  local.get 0
                                  call $__fwritex
                                  drop
                                end
                                local.get 20
                                i32.const 4
                                i32.add
                                local.set 20
                                local.get 21
                                local.get 19
                                i32.lt_u
                                br_if 0 (;@14;)
                              end
                            end
                            block  ;; label = @13
                              local.get 25
                              i32.const 8192
                              i32.ne
                              br_if 0 (;@13;)
                              local.get 26
                              local.get 19
                              i32.le_s
                              br_if 0 (;@13;)
                              local.get 5
                              i32.const 112
                              i32.add
                              i32.const 32
                              local.get 26
                              local.get 19
                              i32.sub
                              local.tee 21
                              i32.const 256
                              local.get 21
                              i32.const 256
                              i32.lt_u
                              local.tee 22
                              select
                              call $memset
                              drop
                              block  ;; label = @14
                                local.get 22
                                br_if 0 (;@14;)
                                loop  ;; label = @15
                                  block  ;; label = @16
                                    local.get 0
                                    i32.load8_u
                                    i32.const 32
                                    i32.and
                                    br_if 0 (;@16;)
                                    local.get 5
                                    i32.const 112
                                    i32.add
                                    i32.const 256
                                    local.get 0
                                    call $__fwritex
                                    drop
                                  end
                                  local.get 21
                                  i32.const -256
                                  i32.add
                                  local.tee 21
                                  i32.const 255
                                  i32.gt_u
                                  br_if 0 (;@15;)
                                end
                              end
                              local.get 0
                              i32.load8_u
                              i32.const 32
                              i32.and
                              br_if 0 (;@13;)
                              local.get 5
                              i32.const 112
                              i32.add
                              local.get 21
                              local.get 0
                              call $__fwritex
                              drop
                            end
                            local.get 26
                            local.get 19
                            local.get 26
                            local.get 19
                            i32.gt_s
                            select
                            local.set 19
                            br 8 (;@4;)
                          end
                          block  ;; label = @12
                            local.get 27
                            i32.eqz
                            br_if 0 (;@12;)
                            local.get 24
                            i32.const 0
                            i32.lt_s
                            br_if 9 (;@3;)
                          end
                          local.get 5
                          f64.load offset=56
                          local.set 34
                          local.get 5
                          i32.const 0
                          i32.store offset=108
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 34
                              i64.reinterpret_f64
                              i64.const -1
                              i64.gt_s
                              br_if 0 (;@13;)
                              local.get 34
                              f64.neg
                              local.set 34
                              i32.const 1
                              local.set 35
                              i32.const 0
                              local.set 36
                              i32.const 1044
                              local.set 37
                              br 1 (;@12;)
                            end
                            block  ;; label = @13
                              local.get 30
                              i32.const 2048
                              i32.and
                              i32.eqz
                              br_if 0 (;@13;)
                              i32.const 1
                              local.set 35
                              i32.const 0
                              local.set 36
                              i32.const 1047
                              local.set 37
                              br 1 (;@12;)
                            end
                            i32.const 1050
                            i32.const 1045
                            local.get 30
                            i32.const 1
                            i32.and
                            local.tee 35
                            select
                            local.set 37
                            local.get 35
                            i32.eqz
                            local.set 36
                          end
                          block  ;; label = @12
                            local.get 34
                            f64.abs
                            f64.const inf (;=inf;)
                            f64.lt
                            br_if 0 (;@12;)
                            local.get 35
                            i32.const 3
                            i32.add
                            local.set 21
                            block  ;; label = @13
                              local.get 30
                              i32.const 8192
                              i32.and
                              br_if 0 (;@13;)
                              local.get 26
                              local.get 21
                              i32.le_s
                              br_if 0 (;@13;)
                              local.get 5
                              i32.const 624
                              i32.add
                              i32.const 32
                              local.get 26
                              local.get 21
                              i32.sub
                              local.tee 19
                              i32.const 256
                              local.get 19
                              i32.const 256
                              i32.lt_u
                              local.tee 22
                              select
                              call $memset
                              drop
                              block  ;; label = @14
                                local.get 22
                                br_if 0 (;@14;)
                                loop  ;; label = @15
                                  block  ;; label = @16
                                    local.get 0
                                    i32.load8_u
                                    i32.const 32
                                    i32.and
                                    br_if 0 (;@16;)
                                    local.get 5
                                    i32.const 624
                                    i32.add
                                    i32.const 256
                                    local.get 0
                                    call $__fwritex
                                    drop
                                  end
                                  local.get 19
                                  i32.const -256
                                  i32.add
                                  local.tee 19
                                  i32.const 255
                                  i32.gt_u
                                  br_if 0 (;@15;)
                                end
                              end
                              local.get 0
                              i32.load8_u
                              i32.const 32
                              i32.and
                              br_if 0 (;@13;)
                              local.get 5
                              i32.const 624
                              i32.add
                              local.get 19
                              local.get 0
                              call $__fwritex
                              drop
                            end
                            block  ;; label = @13
                              local.get 0
                              i32.load
                              local.tee 19
                              i32.const 32
                              i32.and
                              br_if 0 (;@13;)
                              local.get 37
                              local.get 35
                              local.get 0
                              call $__fwritex
                              drop
                              local.get 0
                              i32.load
                              local.set 19
                            end
                            block  ;; label = @13
                              local.get 19
                              i32.const 32
                              i32.and
                              br_if 0 (;@13;)
                              i32.const 1272
                              i32.const 1284
                              local.get 31
                              i32.const 32
                              i32.and
                              local.tee 19
                              select
                              i32.const 1276
                              i32.const 1288
                              local.get 19
                              select
                              local.get 34
                              local.get 34
                              f64.ne
                              select
                              i32.const 3
                              local.get 0
                              call $__fwritex
                              drop
                            end
                            block  ;; label = @13
                              local.get 30
                              i32.const 73728
                              i32.and
                              i32.const 8192
                              i32.ne
                              br_if 0 (;@13;)
                              local.get 26
                              local.get 21
                              i32.le_s
                              br_if 0 (;@13;)
                              local.get 5
                              i32.const 624
                              i32.add
                              i32.const 32
                              local.get 26
                              local.get 21
                              i32.sub
                              local.tee 19
                              i32.const 256
                              local.get 19
                              i32.const 256
                              i32.lt_u
                              local.tee 22
                              select
                              call $memset
                              drop
                              block  ;; label = @14
                                local.get 22
                                br_if 0 (;@14;)
                                loop  ;; label = @15
                                  block  ;; label = @16
                                    local.get 0
                                    i32.load8_u
                                    i32.const 32
                                    i32.and
                                    br_if 0 (;@16;)
                                    local.get 5
                                    i32.const 624
                                    i32.add
                                    i32.const 256
                                    local.get 0
                                    call $__fwritex
                                    drop
                                  end
                                  local.get 19
                                  i32.const -256
                                  i32.add
                                  local.tee 19
                                  i32.const 255
                                  i32.gt_u
                                  br_if 0 (;@15;)
                                end
                              end
                              local.get 0
                              i32.load8_u
                              i32.const 32
                              i32.and
                              br_if 0 (;@13;)
                              local.get 5
                              i32.const 624
                              i32.add
                              local.get 19
                              local.get 0
                              call $__fwritex
                              drop
                            end
                            local.get 21
                            local.get 26
                            local.get 21
                            local.get 26
                            i32.gt_s
                            select
                            local.set 19
                            br 8 (;@4;)
                          end
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                local.get 34
                                local.get 5
                                i32.const 108
                                i32.add
                                call $frexp
                                local.tee 34
                                local.get 34
                                f64.add
                                local.tee 34
                                f64.const 0x0p+0 (;=0;)
                                f64.eq
                                br_if 0 (;@14;)
                                local.get 5
                                local.get 5
                                i32.load offset=108
                                local.tee 19
                                i32.const -1
                                i32.add
                                i32.store offset=108
                                local.get 31
                                i32.const 32
                                i32.or
                                local.tee 38
                                i32.const 97
                                i32.ne
                                br_if 1 (;@13;)
                                br 8 (;@6;)
                              end
                              local.get 31
                              i32.const 32
                              i32.or
                              local.tee 38
                              i32.const 97
                              i32.eq
                              br_if 7 (;@6;)
                              i32.const 6
                              local.get 24
                              local.get 24
                              i32.const 0
                              i32.lt_s
                              select
                              local.set 27
                              local.get 5
                              i32.load offset=108
                              local.set 20
                              br 1 (;@12;)
                            end
                            local.get 5
                            local.get 19
                            i32.const -29
                            i32.add
                            local.tee 20
                            i32.store offset=108
                            i32.const 6
                            local.get 24
                            local.get 24
                            i32.const 0
                            i32.lt_s
                            select
                            local.set 27
                            local.get 34
                            f64.const 0x1p+28 (;=2.68435e+08;)
                            f64.mul
                            local.set 34
                          end
                          local.get 5
                          i32.const 112
                          i32.add
                          i32.const 0
                          i32.const 72
                          local.get 20
                          i32.const 0
                          i32.lt_s
                          local.tee 39
                          select
                          i32.const 2
                          i32.shl
                          local.tee 40
                          i32.add
                          local.tee 23
                          local.set 21
                          loop  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                local.get 34
                                f64.const 0x1p+32 (;=4.29497e+09;)
                                f64.lt
                                local.get 34
                                f64.const 0x0p+0 (;=0;)
                                f64.ge
                                i32.and
                                i32.eqz
                                br_if 0 (;@14;)
                                local.get 34
                                i32.trunc_f64_u
                                local.set 19
                                br 1 (;@13;)
                              end
                              i32.const 0
                              local.set 19
                            end
                            local.get 21
                            local.get 19
                            i32.store
                            local.get 21
                            i32.const 4
                            i32.add
                            local.set 21
                            local.get 34
                            local.get 19
                            f64.convert_i32_u
                            f64.sub
                            f64.const 0x1.dcd65p+29 (;=1e+09;)
                            f64.mul
                            local.tee 34
                            f64.const 0x0p+0 (;=0;)
                            f64.ne
                            br_if 0 (;@12;)
                          end
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 20
                              i32.const 1
                              i32.ge_s
                              br_if 0 (;@13;)
                              local.get 21
                              local.set 19
                              local.get 23
                              local.set 22
                              br 1 (;@12;)
                            end
                            local.get 23
                            local.set 22
                            loop  ;; label = @13
                              local.get 20
                              i32.const 29
                              local.get 20
                              i32.const 29
                              i32.lt_s
                              select
                              local.set 20
                              block  ;; label = @14
                                local.get 21
                                i32.const -4
                                i32.add
                                local.tee 19
                                local.get 22
                                i32.lt_u
                                br_if 0 (;@14;)
                                local.get 20
                                i64.extend_i32_u
                                local.set 33
                                i64.const 0
                                local.set 32
                                loop  ;; label = @15
                                  local.get 19
                                  local.get 19
                                  i64.load32_u
                                  local.get 33
                                  i64.shl
                                  local.get 32
                                  i64.const 4294967295
                                  i64.and
                                  i64.add
                                  local.tee 32
                                  local.get 32
                                  i64.const 1000000000
                                  i64.div_u
                                  local.tee 32
                                  i64.const 1000000000
                                  i64.mul
                                  i64.sub
                                  i64.store32
                                  local.get 19
                                  i32.const -4
                                  i32.add
                                  local.tee 19
                                  local.get 22
                                  i32.ge_u
                                  br_if 0 (;@15;)
                                end
                                local.get 32
                                i32.wrap_i64
                                local.tee 19
                                i32.eqz
                                br_if 0 (;@14;)
                                local.get 22
                                i32.const -4
                                i32.add
                                local.tee 22
                                local.get 19
                                i32.store
                              end
                              block  ;; label = @14
                                loop  ;; label = @15
                                  local.get 21
                                  local.tee 19
                                  local.get 22
                                  i32.le_u
                                  br_if 1 (;@14;)
                                  local.get 19
                                  i32.const -4
                                  i32.add
                                  local.tee 21
                                  i32.load
                                  i32.eqz
                                  br_if 0 (;@15;)
                                end
                              end
                              local.get 5
                              local.get 5
                              i32.load offset=108
                              local.get 20
                              i32.sub
                              local.tee 20
                              i32.store offset=108
                              local.get 19
                              local.set 21
                              local.get 20
                              i32.const 0
                              i32.gt_s
                              br_if 0 (;@13;)
                            end
                          end
                          block  ;; label = @12
                            local.get 20
                            i32.const -1
                            i32.gt_s
                            br_if 0 (;@12;)
                            local.get 27
                            i32.const 25
                            i32.add
                            i32.const 9
                            i32.div_u
                            i32.const 1
                            i32.add
                            local.set 41
                            loop  ;; label = @13
                              i32.const 0
                              local.get 20
                              i32.sub
                              local.tee 21
                              i32.const 9
                              local.get 21
                              i32.const 9
                              i32.lt_s
                              select
                              local.set 24
                              block  ;; label = @14
                                block  ;; label = @15
                                  local.get 22
                                  local.get 19
                                  i32.lt_u
                                  br_if 0 (;@15;)
                                  local.get 22
                                  i32.load
                                  local.set 21
                                  br 1 (;@14;)
                                end
                                i32.const 1000000000
                                local.get 24
                                i32.shr_u
                                local.set 29
                                i32.const -1
                                local.get 24
                                i32.shl
                                i32.const -1
                                i32.xor
                                local.set 28
                                i32.const 0
                                local.set 20
                                local.get 22
                                local.set 21
                                loop  ;; label = @15
                                  local.get 21
                                  local.get 21
                                  i32.load
                                  local.tee 25
                                  local.get 24
                                  i32.shr_u
                                  local.get 20
                                  i32.add
                                  i32.store
                                  local.get 25
                                  local.get 28
                                  i32.and
                                  local.get 29
                                  i32.mul
                                  local.set 20
                                  local.get 21
                                  i32.const 4
                                  i32.add
                                  local.tee 21
                                  local.get 19
                                  i32.lt_u
                                  br_if 0 (;@15;)
                                end
                                local.get 22
                                i32.load
                                local.set 21
                                local.get 20
                                i32.eqz
                                br_if 0 (;@14;)
                                local.get 19
                                local.get 20
                                i32.store
                                local.get 19
                                i32.const 4
                                i32.add
                                local.set 19
                              end
                              local.get 5
                              local.get 5
                              i32.load offset=108
                              local.get 24
                              i32.add
                              local.tee 20
                              i32.store offset=108
                              local.get 23
                              local.get 22
                              local.get 21
                              i32.eqz
                              i32.const 2
                              i32.shl
                              i32.add
                              local.tee 22
                              local.get 38
                              i32.const 102
                              i32.eq
                              select
                              local.tee 21
                              local.get 41
                              i32.const 2
                              i32.shl
                              i32.add
                              local.get 19
                              local.get 19
                              local.get 21
                              i32.sub
                              i32.const 2
                              i32.shr_s
                              local.get 41
                              i32.gt_s
                              select
                              local.set 19
                              local.get 20
                              i32.const 0
                              i32.lt_s
                              br_if 0 (;@13;)
                            end
                          end
                          i32.const 0
                          local.set 25
                          block  ;; label = @12
                            local.get 22
                            local.get 19
                            i32.ge_u
                            br_if 0 (;@12;)
                            local.get 23
                            local.get 22
                            i32.sub
                            i32.const 2
                            i32.shr_s
                            i32.const 9
                            i32.mul
                            local.set 25
                            local.get 22
                            i32.load
                            local.tee 20
                            i32.const 10
                            i32.lt_u
                            br_if 0 (;@12;)
                            i32.const 10
                            local.set 21
                            loop  ;; label = @13
                              local.get 25
                              i32.const 1
                              i32.add
                              local.set 25
                              local.get 20
                              local.get 21
                              i32.const 10
                              i32.mul
                              local.tee 21
                              i32.ge_u
                              br_if 0 (;@13;)
                            end
                          end
                          block  ;; label = @12
                            local.get 27
                            i32.const 0
                            local.get 25
                            local.get 38
                            i32.const 102
                            i32.eq
                            select
                            i32.sub
                            local.get 27
                            i32.const 0
                            i32.ne
                            local.get 38
                            i32.const 103
                            i32.eq
                            local.tee 28
                            i32.and
                            i32.sub
                            local.tee 21
                            local.get 19
                            local.get 23
                            i32.sub
                            i32.const 2
                            i32.shr_s
                            i32.const 9
                            i32.mul
                            i32.const -9
                            i32.add
                            i32.ge_s
                            br_if 0 (;@12;)
                            local.get 21
                            i32.const 9216
                            i32.add
                            local.tee 20
                            i32.const 9
                            i32.div_s
                            local.tee 24
                            i32.const 2
                            i32.shl
                            local.tee 42
                            local.get 5
                            i32.const 112
                            i32.add
                            i32.const 1
                            i32.const 73
                            local.get 39
                            select
                            i32.const 2
                            i32.shl
                            local.tee 39
                            i32.add
                            i32.add
                            i32.const -4096
                            i32.add
                            local.set 29
                            i32.const 10
                            local.set 21
                            block  ;; label = @13
                              local.get 20
                              local.get 24
                              i32.const 9
                              i32.mul
                              i32.sub
                              local.tee 24
                              i32.const 7
                              i32.gt_s
                              br_if 0 (;@13;)
                              i32.const 8
                              local.get 24
                              i32.sub
                              local.tee 41
                              i32.const 7
                              i32.and
                              local.set 20
                              i32.const 10
                              local.set 21
                              block  ;; label = @14
                                local.get 24
                                i32.const -1
                                i32.add
                                i32.const 7
                                i32.lt_u
                                br_if 0 (;@14;)
                                local.get 41
                                i32.const -8
                                i32.and
                                local.set 24
                                i32.const 10
                                local.set 21
                                loop  ;; label = @15
                                  local.get 21
                                  i32.const 100000000
                                  i32.mul
                                  local.set 21
                                  local.get 24
                                  i32.const -8
                                  i32.add
                                  local.tee 24
                                  br_if 0 (;@15;)
                                end
                              end
                              local.get 20
                              i32.eqz
                              br_if 0 (;@13;)
                              loop  ;; label = @14
                                local.get 21
                                i32.const 10
                                i32.mul
                                local.set 21
                                local.get 20
                                i32.const -1
                                i32.add
                                local.tee 20
                                br_if 0 (;@14;)
                              end
                            end
                            local.get 29
                            i32.const 4
                            i32.add
                            local.set 41
                            block  ;; label = @13
                              block  ;; label = @14
                                local.get 29
                                i32.load
                                local.tee 20
                                local.get 20
                                local.get 21
                                i32.div_u
                                local.tee 38
                                local.get 21
                                i32.mul
                                i32.sub
                                local.tee 24
                                br_if 0 (;@14;)
                                local.get 41
                                local.get 19
                                i32.eq
                                br_if 1 (;@13;)
                              end
                              block  ;; label = @14
                                block  ;; label = @15
                                  local.get 38
                                  i32.const 1
                                  i32.and
                                  br_if 0 (;@15;)
                                  f64.const 0x1p+53 (;=9.0072e+15;)
                                  local.set 34
                                  local.get 21
                                  i32.const 1000000000
                                  i32.ne
                                  br_if 1 (;@14;)
                                  local.get 29
                                  local.get 22
                                  i32.le_u
                                  br_if 1 (;@14;)
                                  local.get 29
                                  i32.const -4
                                  i32.add
                                  i32.load8_u
                                  i32.const 1
                                  i32.and
                                  i32.eqz
                                  br_if 1 (;@14;)
                                end
                                f64.const 0x1.0000000000001p+53 (;=9.0072e+15;)
                                local.set 34
                              end
                              f64.const 0x1p-1 (;=0.5;)
                              f64.const 0x1p+0 (;=1;)
                              f64.const 0x1.8p+0 (;=1.5;)
                              local.get 41
                              local.get 19
                              i32.eq
                              select
                              f64.const 0x1.8p+0 (;=1.5;)
                              local.get 24
                              local.get 21
                              i32.const 1
                              i32.shr_u
                              local.tee 41
                              i32.eq
                              select
                              local.get 24
                              local.get 41
                              i32.lt_u
                              select
                              local.set 43
                              block  ;; label = @14
                                local.get 36
                                br_if 0 (;@14;)
                                local.get 37
                                i32.load8_u
                                i32.const 45
                                i32.ne
                                br_if 0 (;@14;)
                                local.get 43
                                f64.neg
                                local.set 43
                                local.get 34
                                f64.neg
                                local.set 34
                              end
                              local.get 29
                              local.get 20
                              local.get 24
                              i32.sub
                              local.tee 20
                              i32.store
                              local.get 34
                              local.get 43
                              f64.add
                              local.get 34
                              f64.eq
                              br_if 0 (;@13;)
                              local.get 29
                              local.get 20
                              local.get 21
                              i32.add
                              local.tee 21
                              i32.store
                              block  ;; label = @14
                                local.get 21
                                i32.const 1000000000
                                i32.lt_u
                                br_if 0 (;@14;)
                                local.get 8
                                local.get 39
                                local.get 42
                                i32.add
                                i32.add
                                local.set 21
                                loop  ;; label = @15
                                  local.get 21
                                  i32.const 4
                                  i32.add
                                  i32.const 0
                                  i32.store
                                  block  ;; label = @16
                                    local.get 21
                                    local.get 22
                                    i32.ge_u
                                    br_if 0 (;@16;)
                                    local.get 22
                                    i32.const -4
                                    i32.add
                                    local.tee 22
                                    i32.const 0
                                    i32.store
                                  end
                                  local.get 21
                                  local.get 21
                                  i32.load
                                  i32.const 1
                                  i32.add
                                  local.tee 20
                                  i32.store
                                  local.get 21
                                  i32.const -4
                                  i32.add
                                  local.set 21
                                  local.get 20
                                  i32.const 999999999
                                  i32.gt_u
                                  br_if 0 (;@15;)
                                end
                                local.get 21
                                i32.const 4
                                i32.add
                                local.set 29
                              end
                              local.get 23
                              local.get 22
                              i32.sub
                              i32.const 2
                              i32.shr_s
                              i32.const 9
                              i32.mul
                              local.set 25
                              local.get 22
                              i32.load
                              local.tee 20
                              i32.const 10
                              i32.lt_u
                              br_if 0 (;@13;)
                              i32.const 10
                              local.set 21
                              loop  ;; label = @14
                                local.get 25
                                i32.const 1
                                i32.add
                                local.set 25
                                local.get 20
                                local.get 21
                                i32.const 10
                                i32.mul
                                local.tee 21
                                i32.ge_u
                                br_if 0 (;@14;)
                              end
                            end
                            local.get 29
                            i32.const 4
                            i32.add
                            local.tee 21
                            local.get 19
                            local.get 19
                            local.get 21
                            i32.gt_u
                            select
                            local.set 19
                          end
                          local.get 7
                          local.get 19
                          i32.add
                          local.get 40
                          i32.sub
                          local.set 21
                          block  ;; label = @12
                            loop  ;; label = @13
                              local.get 21
                              local.set 20
                              local.get 19
                              local.tee 29
                              local.get 22
                              i32.le_u
                              local.tee 24
                              br_if 1 (;@12;)
                              local.get 20
                              i32.const -4
                              i32.add
                              local.set 21
                              local.get 29
                              i32.const -4
                              i32.add
                              local.tee 19
                              i32.load
                              i32.eqz
                              br_if 0 (;@13;)
                            end
                          end
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 28
                              br_if 0 (;@13;)
                              local.get 30
                              i32.const 8
                              i32.and
                              local.set 41
                              br 1 (;@12;)
                            end
                            local.get 25
                            i32.const -1
                            i32.xor
                            i32.const -1
                            local.get 27
                            i32.const 1
                            local.get 27
                            select
                            local.tee 19
                            local.get 25
                            i32.gt_s
                            local.get 25
                            i32.const -5
                            i32.gt_s
                            i32.and
                            local.tee 21
                            select
                            local.get 19
                            i32.add
                            local.set 27
                            i32.const -1
                            i32.const -2
                            local.get 21
                            select
                            local.get 31
                            i32.add
                            local.set 31
                            local.get 30
                            i32.const 8
                            i32.and
                            local.tee 41
                            br_if 0 (;@12;)
                            i32.const -9
                            local.set 19
                            block  ;; label = @13
                              local.get 24
                              br_if 0 (;@13;)
                              local.get 29
                              i32.const -4
                              i32.add
                              i32.load
                              local.tee 24
                              i32.eqz
                              br_if 0 (;@13;)
                              i32.const 0
                              local.set 19
                              local.get 24
                              i32.const 10
                              i32.rem_u
                              br_if 0 (;@13;)
                              i32.const 10
                              local.set 21
                              i32.const 0
                              local.set 19
                              loop  ;; label = @14
                                local.get 19
                                i32.const -1
                                i32.add
                                local.set 19
                                local.get 24
                                local.get 21
                                i32.const 10
                                i32.mul
                                local.tee 21
                                i32.rem_u
                                i32.eqz
                                br_if 0 (;@14;)
                              end
                            end
                            local.get 20
                            i32.const 2
                            i32.shr_s
                            i32.const 9
                            i32.mul
                            i32.const -9
                            i32.add
                            local.set 21
                            block  ;; label = @13
                              local.get 31
                              i32.const -33
                              i32.and
                              i32.const 70
                              i32.ne
                              br_if 0 (;@13;)
                              i32.const 0
                              local.set 41
                              local.get 27
                              local.get 21
                              local.get 19
                              i32.add
                              local.tee 19
                              i32.const 0
                              local.get 19
                              i32.const 0
                              i32.gt_s
                              select
                              local.tee 19
                              local.get 27
                              local.get 19
                              i32.lt_s
                              select
                              local.set 27
                              br 1 (;@12;)
                            end
                            i32.const 0
                            local.set 41
                            local.get 27
                            local.get 21
                            local.get 25
                            i32.add
                            local.get 19
                            i32.add
                            local.tee 19
                            i32.const 0
                            local.get 19
                            i32.const 0
                            i32.gt_s
                            select
                            local.tee 19
                            local.get 27
                            local.get 19
                            i32.lt_s
                            select
                            local.set 27
                          end
                          local.get 27
                          i32.const 2147483645
                          i32.const 2147483646
                          local.get 27
                          local.get 41
                          i32.or
                          local.tee 36
                          select
                          i32.gt_s
                          br_if 8 (;@3;)
                          local.get 27
                          local.get 36
                          i32.const 0
                          i32.ne
                          i32.add
                          i32.const 1
                          i32.add
                          local.set 38
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 31
                              i32.const -33
                              i32.and
                              i32.const 70
                              i32.ne
                              local.tee 39
                              br_if 0 (;@13;)
                              local.get 25
                              local.get 38
                              i32.const 2147483647
                              i32.xor
                              i32.gt_s
                              br_if 10 (;@3;)
                              local.get 25
                              i32.const 0
                              local.get 25
                              i32.const 0
                              i32.gt_s
                              select
                              local.set 19
                              br 1 (;@12;)
                            end
                            block  ;; label = @13
                              block  ;; label = @14
                                local.get 25
                                br_if 0 (;@14;)
                                local.get 6
                                local.set 20
                                local.get 6
                                local.set 21
                                br 1 (;@13;)
                              end
                              local.get 25
                              local.get 25
                              i32.const 31
                              i32.shr_s
                              local.tee 19
                              i32.xor
                              local.get 19
                              i32.sub
                              local.set 19
                              local.get 6
                              local.set 20
                              local.get 6
                              local.set 21
                              loop  ;; label = @14
                                local.get 21
                                i32.const -1
                                i32.add
                                local.tee 21
                                local.get 19
                                local.get 19
                                i32.const 10
                                i32.div_u
                                local.tee 24
                                i32.const 10
                                i32.mul
                                i32.sub
                                i32.const 48
                                i32.or
                                i32.store8
                                local.get 20
                                i32.const -1
                                i32.add
                                local.set 20
                                local.get 19
                                i32.const 9
                                i32.gt_u
                                local.set 28
                                local.get 24
                                local.set 19
                                local.get 28
                                br_if 0 (;@14;)
                              end
                            end
                            block  ;; label = @13
                              local.get 6
                              local.get 20
                              i32.sub
                              i32.const 1
                              i32.gt_s
                              br_if 0 (;@13;)
                              local.get 21
                              local.get 15
                              local.get 20
                              i32.sub
                              i32.add
                              local.tee 21
                              i32.const 48
                              local.get 14
                              local.get 20
                              i32.add
                              call $memset
                              drop
                            end
                            local.get 21
                            i32.const -2
                            i32.add
                            local.tee 40
                            local.get 31
                            i32.store8
                            local.get 21
                            i32.const -1
                            i32.add
                            i32.const 45
                            i32.const 43
                            local.get 25
                            i32.const 0
                            i32.lt_s
                            select
                            i32.store8
                            local.get 6
                            local.get 40
                            i32.sub
                            local.tee 19
                            local.get 38
                            i32.const 2147483647
                            i32.xor
                            i32.gt_s
                            br_if 9 (;@3;)
                          end
                          local.get 19
                          local.get 38
                          i32.add
                          local.tee 19
                          local.get 35
                          i32.const 2147483647
                          i32.xor
                          i32.gt_s
                          br_if 8 (;@3;)
                          local.get 19
                          local.get 35
                          i32.add
                          local.set 28
                          block  ;; label = @12
                            local.get 30
                            i32.const 73728
                            i32.and
                            local.tee 30
                            br_if 0 (;@12;)
                            local.get 26
                            local.get 28
                            i32.le_s
                            br_if 0 (;@12;)
                            local.get 5
                            i32.const 624
                            i32.add
                            i32.const 32
                            local.get 26
                            local.get 28
                            i32.sub
                            local.tee 19
                            i32.const 256
                            local.get 19
                            i32.const 256
                            i32.lt_u
                            local.tee 21
                            select
                            call $memset
                            drop
                            block  ;; label = @13
                              local.get 21
                              br_if 0 (;@13;)
                              loop  ;; label = @14
                                block  ;; label = @15
                                  local.get 0
                                  i32.load8_u
                                  i32.const 32
                                  i32.and
                                  br_if 0 (;@15;)
                                  local.get 5
                                  i32.const 624
                                  i32.add
                                  i32.const 256
                                  local.get 0
                                  call $__fwritex
                                  drop
                                end
                                local.get 19
                                i32.const -256
                                i32.add
                                local.tee 19
                                i32.const 255
                                i32.gt_u
                                br_if 0 (;@14;)
                              end
                            end
                            local.get 0
                            i32.load8_u
                            i32.const 32
                            i32.and
                            br_if 0 (;@12;)
                            local.get 5
                            i32.const 624
                            i32.add
                            local.get 19
                            local.get 0
                            call $__fwritex
                            drop
                          end
                          block  ;; label = @12
                            local.get 0
                            i32.load8_u
                            i32.const 32
                            i32.and
                            br_if 0 (;@12;)
                            local.get 37
                            local.get 35
                            local.get 0
                            call $__fwritex
                            drop
                          end
                          block  ;; label = @12
                            local.get 30
                            i32.const 65536
                            i32.ne
                            br_if 0 (;@12;)
                            local.get 26
                            local.get 28
                            i32.le_s
                            br_if 0 (;@12;)
                            local.get 5
                            i32.const 624
                            i32.add
                            i32.const 48
                            local.get 26
                            local.get 28
                            i32.sub
                            local.tee 19
                            i32.const 256
                            local.get 19
                            i32.const 256
                            i32.lt_u
                            local.tee 21
                            select
                            call $memset
                            drop
                            block  ;; label = @13
                              local.get 21
                              br_if 0 (;@13;)
                              loop  ;; label = @14
                                block  ;; label = @15
                                  local.get 0
                                  i32.load8_u
                                  i32.const 32
                                  i32.and
                                  br_if 0 (;@15;)
                                  local.get 5
                                  i32.const 624
                                  i32.add
                                  i32.const 256
                                  local.get 0
                                  call $__fwritex
                                  drop
                                end
                                local.get 19
                                i32.const -256
                                i32.add
                                local.tee 19
                                i32.const 255
                                i32.gt_u
                                br_if 0 (;@14;)
                              end
                            end
                            local.get 0
                            i32.load8_u
                            i32.const 32
                            i32.and
                            br_if 0 (;@12;)
                            local.get 5
                            i32.const 624
                            i32.add
                            local.get 19
                            local.get 0
                            call $__fwritex
                            drop
                          end
                          local.get 39
                          br_if 3 (;@8;)
                          local.get 23
                          local.get 22
                          local.get 22
                          local.get 23
                          i32.gt_u
                          select
                          local.tee 25
                          local.set 24
                          loop  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    local.get 24
                                    i32.load
                                    local.tee 19
                                    i32.eqz
                                    br_if 0 (;@16;)
                                    i32.const 8
                                    local.set 21
                                    loop  ;; label = @17
                                      local.get 5
                                      i32.const 80
                                      i32.add
                                      local.get 21
                                      i32.add
                                      local.get 19
                                      local.get 19
                                      i32.const 10
                                      i32.div_u
                                      local.tee 22
                                      i32.const 10
                                      i32.mul
                                      i32.sub
                                      i32.const 48
                                      i32.or
                                      i32.store8
                                      local.get 21
                                      i32.const -1
                                      i32.add
                                      local.set 21
                                      local.get 19
                                      i32.const 9
                                      i32.gt_u
                                      local.set 20
                                      local.get 22
                                      local.set 19
                                      local.get 20
                                      br_if 0 (;@17;)
                                    end
                                    local.get 21
                                    i32.const 1
                                    i32.add
                                    local.tee 22
                                    local.get 5
                                    i32.const 80
                                    i32.add
                                    i32.add
                                    local.set 19
                                    block  ;; label = @17
                                      local.get 24
                                      local.get 25
                                      i32.eq
                                      br_if 0 (;@17;)
                                      local.get 21
                                      i32.const 2
                                      i32.add
                                      i32.const 2
                                      i32.lt_s
                                      br_if 4 (;@13;)
                                      br 3 (;@14;)
                                    end
                                    local.get 21
                                    i32.const 8
                                    i32.ne
                                    br_if 3 (;@13;)
                                    br 1 (;@15;)
                                  end
                                  i32.const 9
                                  local.set 22
                                  local.get 24
                                  local.get 25
                                  i32.ne
                                  br_if 1 (;@14;)
                                end
                                local.get 5
                                i32.const 48
                                i32.store8 offset=88
                                local.get 12
                                local.set 19
                                br 1 (;@13;)
                              end
                              local.get 5
                              i32.const 80
                              i32.add
                              local.get 22
                              local.get 5
                              i32.const 80
                              i32.add
                              i32.add
                              local.tee 21
                              i32.const -1
                              i32.add
                              local.tee 19
                              local.get 5
                              i32.const 80
                              i32.add
                              local.get 19
                              i32.lt_u
                              select
                              local.tee 19
                              i32.const 48
                              local.get 21
                              local.get 19
                              i32.sub
                              call $memset
                              drop
                            end
                            block  ;; label = @13
                              local.get 0
                              i32.load8_u
                              i32.const 32
                              i32.and
                              br_if 0 (;@13;)
                              local.get 19
                              local.get 13
                              local.get 19
                              i32.sub
                              local.get 0
                              call $__fwritex
                              drop
                            end
                            local.get 24
                            i32.const 4
                            i32.add
                            local.tee 24
                            local.get 23
                            i32.le_u
                            br_if 0 (;@12;)
                          end
                          block  ;; label = @12
                            local.get 36
                            i32.eqz
                            br_if 0 (;@12;)
                            local.get 0
                            i32.load8_u
                            i32.const 32
                            i32.and
                            br_if 0 (;@12;)
                            i32.const 1296
                            i32.const 1
                            local.get 0
                            call $__fwritex
                            drop
                          end
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 24
                              local.get 29
                              i32.lt_u
                              br_if 0 (;@13;)
                              local.get 27
                              local.set 19
                              br 1 (;@12;)
                            end
                            block  ;; label = @13
                              local.get 27
                              i32.const 1
                              i32.ge_s
                              br_if 0 (;@13;)
                              local.get 27
                              local.set 19
                              br 1 (;@12;)
                            end
                            loop  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    local.get 24
                                    i32.load
                                    local.tee 19
                                    br_if 0 (;@16;)
                                    local.get 13
                                    local.set 21
                                    local.get 13
                                    local.set 22
                                    br 1 (;@15;)
                                  end
                                  local.get 13
                                  local.set 22
                                  local.get 13
                                  local.set 21
                                  loop  ;; label = @16
                                    local.get 21
                                    i32.const -1
                                    i32.add
                                    local.tee 21
                                    local.get 19
                                    local.get 19
                                    i32.const 10
                                    i32.div_u
                                    local.tee 20
                                    i32.const 10
                                    i32.mul
                                    i32.sub
                                    i32.const 48
                                    i32.or
                                    i32.store8
                                    local.get 22
                                    i32.const -1
                                    i32.add
                                    local.set 22
                                    local.get 19
                                    i32.const 9
                                    i32.gt_u
                                    local.set 25
                                    local.get 20
                                    local.set 19
                                    local.get 25
                                    br_if 0 (;@16;)
                                  end
                                  local.get 21
                                  local.get 5
                                  i32.const 80
                                  i32.add
                                  i32.le_u
                                  br_if 1 (;@14;)
                                end
                                local.get 21
                                local.get 5
                                i32.const 80
                                i32.add
                                i32.add
                                local.get 22
                                i32.sub
                                local.tee 21
                                i32.const 48
                                local.get 22
                                local.get 5
                                i32.const 80
                                i32.add
                                i32.sub
                                call $memset
                                drop
                              end
                              block  ;; label = @14
                                local.get 0
                                i32.load8_u
                                i32.const 32
                                i32.and
                                br_if 0 (;@14;)
                                local.get 21
                                local.get 27
                                i32.const 9
                                local.get 27
                                i32.const 9
                                i32.lt_s
                                select
                                local.get 0
                                call $__fwritex
                                drop
                              end
                              local.get 27
                              i32.const -9
                              i32.add
                              local.set 19
                              local.get 24
                              i32.const 4
                              i32.add
                              local.tee 24
                              local.get 29
                              i32.ge_u
                              br_if 1 (;@12;)
                              local.get 27
                              i32.const 9
                              i32.gt_s
                              local.set 21
                              local.get 19
                              local.set 27
                              local.get 21
                              br_if 0 (;@13;)
                            end
                          end
                          local.get 0
                          i32.const 48
                          local.get 19
                          i32.const 9
                          i32.add
                          i32.const 9
                          i32.const 0
                          call $pad
                          br 4 (;@7;)
                        end
                        i32.const 0
                        i32.const 28
                        i32.store offset=5128
                        br 8 (;@2;)
                      end
                      i32.const 0
                      local.set 28
                      i32.const 1034
                      local.set 23
                      local.get 16
                      local.set 19
                      local.get 30
                      local.set 29
                      local.get 24
                      local.set 25
                    end
                    local.get 25
                    local.get 19
                    local.get 20
                    i32.sub
                    local.tee 24
                    local.get 25
                    local.get 24
                    i32.gt_s
                    select
                    local.tee 27
                    local.get 28
                    i32.const 2147483647
                    i32.xor
                    i32.gt_s
                    br_if 5 (;@3;)
                    local.get 26
                    local.get 28
                    local.get 27
                    i32.add
                    local.tee 22
                    local.get 26
                    local.get 22
                    i32.gt_s
                    select
                    local.tee 19
                    local.get 21
                    i32.gt_s
                    br_if 5 (;@3;)
                    block  ;; label = @9
                      local.get 29
                      i32.const 73728
                      i32.and
                      local.tee 29
                      br_if 0 (;@9;)
                      local.get 22
                      local.get 26
                      i32.ge_s
                      br_if 0 (;@9;)
                      local.get 5
                      i32.const 112
                      i32.add
                      i32.const 32
                      local.get 19
                      local.get 22
                      i32.sub
                      local.tee 21
                      i32.const 256
                      local.get 21
                      i32.const 256
                      i32.lt_u
                      local.tee 30
                      select
                      call $memset
                      drop
                      block  ;; label = @10
                        local.get 30
                        br_if 0 (;@10;)
                        loop  ;; label = @11
                          block  ;; label = @12
                            local.get 0
                            i32.load8_u
                            i32.const 32
                            i32.and
                            br_if 0 (;@12;)
                            local.get 5
                            i32.const 112
                            i32.add
                            i32.const 256
                            local.get 0
                            call $__fwritex
                            drop
                          end
                          local.get 21
                          i32.const -256
                          i32.add
                          local.tee 21
                          i32.const 255
                          i32.gt_u
                          br_if 0 (;@11;)
                        end
                      end
                      local.get 0
                      i32.load8_u
                      i32.const 32
                      i32.and
                      br_if 0 (;@9;)
                      local.get 5
                      i32.const 112
                      i32.add
                      local.get 21
                      local.get 0
                      call $__fwritex
                      drop
                    end
                    block  ;; label = @9
                      local.get 0
                      i32.load8_u
                      i32.const 32
                      i32.and
                      br_if 0 (;@9;)
                      local.get 23
                      local.get 28
                      local.get 0
                      call $__fwritex
                      drop
                    end
                    block  ;; label = @9
                      local.get 29
                      i32.const 65536
                      i32.ne
                      br_if 0 (;@9;)
                      local.get 22
                      local.get 26
                      i32.ge_s
                      br_if 0 (;@9;)
                      local.get 5
                      i32.const 112
                      i32.add
                      i32.const 48
                      local.get 19
                      local.get 22
                      i32.sub
                      local.tee 21
                      i32.const 256
                      local.get 21
                      i32.const 256
                      i32.lt_u
                      local.tee 28
                      select
                      call $memset
                      drop
                      block  ;; label = @10
                        local.get 28
                        br_if 0 (;@10;)
                        loop  ;; label = @11
                          block  ;; label = @12
                            local.get 0
                            i32.load8_u
                            i32.const 32
                            i32.and
                            br_if 0 (;@12;)
                            local.get 5
                            i32.const 112
                            i32.add
                            i32.const 256
                            local.get 0
                            call $__fwritex
                            drop
                          end
                          local.get 21
                          i32.const -256
                          i32.add
                          local.tee 21
                          i32.const 255
                          i32.gt_u
                          br_if 0 (;@11;)
                        end
                      end
                      local.get 0
                      i32.load8_u
                      i32.const 32
                      i32.and
                      br_if 0 (;@9;)
                      local.get 5
                      i32.const 112
                      i32.add
                      local.get 21
                      local.get 0
                      call $__fwritex
                      drop
                    end
                    block  ;; label = @9
                      local.get 24
                      local.get 25
                      i32.ge_s
                      br_if 0 (;@9;)
                      local.get 5
                      i32.const 112
                      i32.add
                      i32.const 48
                      local.get 27
                      local.get 24
                      i32.sub
                      local.tee 21
                      i32.const 256
                      local.get 21
                      i32.const 256
                      i32.lt_u
                      local.tee 25
                      select
                      call $memset
                      drop
                      block  ;; label = @10
                        local.get 25
                        br_if 0 (;@10;)
                        loop  ;; label = @11
                          block  ;; label = @12
                            local.get 0
                            i32.load8_u
                            i32.const 32
                            i32.and
                            br_if 0 (;@12;)
                            local.get 5
                            i32.const 112
                            i32.add
                            i32.const 256
                            local.get 0
                            call $__fwritex
                            drop
                          end
                          local.get 21
                          i32.const -256
                          i32.add
                          local.tee 21
                          i32.const 255
                          i32.gt_u
                          br_if 0 (;@11;)
                        end
                      end
                      local.get 0
                      i32.load8_u
                      i32.const 32
                      i32.and
                      br_if 0 (;@9;)
                      local.get 5
                      i32.const 112
                      i32.add
                      local.get 21
                      local.get 0
                      call $__fwritex
                      drop
                    end
                    block  ;; label = @9
                      local.get 0
                      i32.load8_u
                      i32.const 32
                      i32.and
                      br_if 0 (;@9;)
                      local.get 20
                      local.get 24
                      local.get 0
                      call $__fwritex
                      drop
                    end
                    local.get 29
                    i32.const 8192
                    i32.ne
                    br_if 4 (;@4;)
                    local.get 22
                    local.get 26
                    i32.ge_s
                    br_if 4 (;@4;)
                    local.get 5
                    i32.const 112
                    i32.add
                    i32.const 32
                    local.get 19
                    local.get 22
                    i32.sub
                    local.tee 21
                    i32.const 256
                    local.get 21
                    i32.const 256
                    i32.lt_u
                    local.tee 22
                    select
                    call $memset
                    drop
                    block  ;; label = @9
                      local.get 22
                      br_if 0 (;@9;)
                      loop  ;; label = @10
                        block  ;; label = @11
                          local.get 0
                          i32.load8_u
                          i32.const 32
                          i32.and
                          br_if 0 (;@11;)
                          local.get 5
                          i32.const 112
                          i32.add
                          i32.const 256
                          local.get 0
                          call $__fwritex
                          drop
                        end
                        local.get 21
                        i32.const -256
                        i32.add
                        local.tee 21
                        i32.const 255
                        i32.gt_u
                        br_if 0 (;@10;)
                      end
                    end
                    local.get 0
                    i32.load8_u
                    i32.const 32
                    i32.and
                    br_if 4 (;@4;)
                    local.get 5
                    i32.const 112
                    i32.add
                    local.get 21
                    local.get 0
                    call $__fwritex
                    drop
                    br 4 (;@4;)
                  end
                  block  ;; label = @8
                    local.get 27
                    i32.const 0
                    i32.lt_s
                    br_if 0 (;@8;)
                    local.get 29
                    local.get 22
                    i32.const 4
                    i32.add
                    local.get 29
                    local.get 22
                    i32.gt_u
                    select
                    local.set 29
                    local.get 22
                    local.set 24
                    loop  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 24
                          i32.load
                          local.tee 19
                          i32.eqz
                          br_if 0 (;@11;)
                          i32.const 0
                          local.set 21
                          loop  ;; label = @12
                            local.get 5
                            i32.const 80
                            i32.add
                            local.get 21
                            i32.add
                            i32.const 8
                            i32.add
                            local.get 19
                            local.get 19
                            i32.const 10
                            i32.div_u
                            local.tee 20
                            i32.const 10
                            i32.mul
                            i32.sub
                            i32.const 48
                            i32.or
                            i32.store8
                            local.get 21
                            i32.const -1
                            i32.add
                            local.set 21
                            local.get 19
                            i32.const 9
                            i32.gt_u
                            local.set 25
                            local.get 20
                            local.set 19
                            local.get 25
                            br_if 0 (;@12;)
                          end
                          local.get 21
                          i32.eqz
                          br_if 0 (;@11;)
                          local.get 5
                          i32.const 80
                          i32.add
                          local.get 21
                          i32.add
                          i32.const 9
                          i32.add
                          local.set 19
                          br 1 (;@10;)
                        end
                        local.get 5
                        i32.const 48
                        i32.store8 offset=88
                        local.get 12
                        local.set 19
                      end
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 24
                          local.get 22
                          i32.eq
                          br_if 0 (;@11;)
                          local.get 19
                          local.get 5
                          i32.const 80
                          i32.add
                          i32.le_u
                          br_if 1 (;@10;)
                          local.get 5
                          i32.const 80
                          i32.add
                          i32.const 48
                          local.get 19
                          local.get 5
                          i32.const 80
                          i32.add
                          i32.sub
                          call $memset
                          drop
                          local.get 5
                          i32.const 80
                          i32.add
                          local.set 19
                          br 1 (;@10;)
                        end
                        block  ;; label = @11
                          local.get 0
                          i32.load8_u
                          i32.const 32
                          i32.and
                          br_if 0 (;@11;)
                          local.get 19
                          i32.const 1
                          local.get 0
                          call $__fwritex
                          drop
                        end
                        local.get 19
                        i32.const 1
                        i32.add
                        local.set 19
                        block  ;; label = @11
                          local.get 41
                          br_if 0 (;@11;)
                          local.get 27
                          i32.const 1
                          i32.lt_s
                          br_if 1 (;@10;)
                        end
                        local.get 0
                        i32.load8_u
                        i32.const 32
                        i32.and
                        br_if 0 (;@10;)
                        i32.const 1296
                        i32.const 1
                        local.get 0
                        call $__fwritex
                        drop
                      end
                      local.get 13
                      local.get 19
                      i32.sub
                      local.set 21
                      block  ;; label = @10
                        local.get 0
                        i32.load8_u
                        i32.const 32
                        i32.and
                        br_if 0 (;@10;)
                        local.get 19
                        local.get 27
                        local.get 21
                        local.get 27
                        local.get 21
                        i32.lt_s
                        select
                        local.get 0
                        call $__fwritex
                        drop
                      end
                      local.get 27
                      local.get 21
                      i32.sub
                      local.set 27
                      local.get 24
                      i32.const 4
                      i32.add
                      local.tee 24
                      local.get 29
                      i32.ge_u
                      br_if 1 (;@8;)
                      local.get 27
                      i32.const -1
                      i32.gt_s
                      br_if 0 (;@9;)
                    end
                  end
                  local.get 0
                  i32.const 48
                  local.get 27
                  i32.const 18
                  i32.add
                  i32.const 18
                  i32.const 0
                  call $pad
                  local.get 0
                  i32.load8_u
                  i32.const 32
                  i32.and
                  br_if 0 (;@7;)
                  local.get 40
                  local.get 6
                  local.get 40
                  i32.sub
                  local.get 0
                  call $__fwritex
                  drop
                end
                local.get 30
                i32.const 8192
                i32.ne
                br_if 1 (;@5;)
                local.get 26
                local.get 28
                i32.le_s
                br_if 1 (;@5;)
                local.get 5
                i32.const 624
                i32.add
                i32.const 32
                local.get 26
                local.get 28
                i32.sub
                local.tee 19
                i32.const 256
                local.get 19
                i32.const 256
                i32.lt_u
                local.tee 21
                select
                call $memset
                drop
                block  ;; label = @7
                  local.get 21
                  br_if 0 (;@7;)
                  loop  ;; label = @8
                    block  ;; label = @9
                      local.get 0
                      i32.load8_u
                      i32.const 32
                      i32.and
                      br_if 0 (;@9;)
                      local.get 5
                      i32.const 624
                      i32.add
                      i32.const 256
                      local.get 0
                      call $__fwritex
                      drop
                    end
                    local.get 19
                    i32.const -256
                    i32.add
                    local.tee 19
                    i32.const 255
                    i32.gt_u
                    br_if 0 (;@8;)
                  end
                end
                local.get 0
                i32.load8_u
                i32.const 32
                i32.and
                br_if 1 (;@5;)
                local.get 5
                i32.const 624
                i32.add
                local.get 19
                local.get 0
                call $__fwritex
                drop
                br 1 (;@5;)
              end
              local.get 37
              local.get 31
              i32.const 26
              i32.shl
              i32.const 31
              i32.shr_s
              i32.const 9
              i32.and
              i32.add
              local.set 23
              block  ;; label = @6
                local.get 24
                i32.const 11
                i32.gt_u
                br_if 0 (;@6;)
                block  ;; label = @7
                  block  ;; label = @8
                    i32.const 12
                    local.get 24
                    i32.sub
                    local.tee 19
                    i32.const 7
                    i32.and
                    local.tee 21
                    br_if 0 (;@8;)
                    f64.const 0x1p+4 (;=16;)
                    local.set 43
                    br 1 (;@7;)
                  end
                  local.get 24
                  i32.const -12
                  i32.add
                  local.set 19
                  f64.const 0x1p+4 (;=16;)
                  local.set 43
                  loop  ;; label = @8
                    local.get 19
                    i32.const 1
                    i32.add
                    local.set 19
                    local.get 43
                    f64.const 0x1p+4 (;=16;)
                    f64.mul
                    local.set 43
                    local.get 21
                    i32.const -1
                    i32.add
                    local.tee 21
                    br_if 0 (;@8;)
                  end
                  i32.const 0
                  local.get 19
                  i32.sub
                  local.set 19
                end
                block  ;; label = @7
                  local.get 24
                  i32.const -5
                  i32.add
                  i32.const 7
                  i32.lt_u
                  br_if 0 (;@7;)
                  loop  ;; label = @8
                    local.get 43
                    f64.const 0x1p+4 (;=16;)
                    f64.mul
                    f64.const 0x1p+4 (;=16;)
                    f64.mul
                    f64.const 0x1p+4 (;=16;)
                    f64.mul
                    f64.const 0x1p+4 (;=16;)
                    f64.mul
                    f64.const 0x1p+4 (;=16;)
                    f64.mul
                    f64.const 0x1p+4 (;=16;)
                    f64.mul
                    f64.const 0x1p+4 (;=16;)
                    f64.mul
                    f64.const 0x1p+4 (;=16;)
                    f64.mul
                    local.set 43
                    local.get 19
                    i32.const -8
                    i32.add
                    local.tee 19
                    br_if 0 (;@8;)
                  end
                end
                block  ;; label = @7
                  local.get 23
                  i32.load8_u
                  i32.const 45
                  i32.ne
                  br_if 0 (;@7;)
                  local.get 43
                  local.get 34
                  f64.neg
                  local.get 43
                  f64.sub
                  f64.add
                  f64.neg
                  local.set 34
                  br 1 (;@6;)
                end
                local.get 34
                local.get 43
                f64.add
                local.get 43
                f64.sub
                local.set 34
              end
              block  ;; label = @6
                block  ;; label = @7
                  local.get 5
                  i32.load offset=108
                  local.tee 25
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 25
                  local.get 25
                  i32.const 31
                  i32.shr_s
                  local.tee 19
                  i32.xor
                  local.get 19
                  i32.sub
                  local.set 19
                  i32.const 0
                  local.set 21
                  loop  ;; label = @8
                    local.get 5
                    i32.const 68
                    i32.add
                    local.get 21
                    i32.add
                    i32.const 11
                    i32.add
                    local.get 19
                    local.get 19
                    i32.const 10
                    i32.div_u
                    local.tee 22
                    i32.const 10
                    i32.mul
                    i32.sub
                    i32.const 48
                    i32.or
                    i32.store8
                    local.get 21
                    i32.const -1
                    i32.add
                    local.set 21
                    local.get 19
                    i32.const 9
                    i32.gt_u
                    local.set 20
                    local.get 22
                    local.set 19
                    local.get 20
                    br_if 0 (;@8;)
                  end
                  local.get 21
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 5
                  i32.const 68
                  i32.add
                  local.get 21
                  i32.add
                  i32.const 12
                  i32.add
                  local.set 19
                  br 1 (;@6;)
                end
                local.get 5
                i32.const 48
                i32.store8 offset=79
                local.get 11
                local.set 19
              end
              local.get 35
              i32.const 2
              i32.or
              local.set 27
              local.get 31
              i32.const 32
              i32.and
              local.set 22
              local.get 19
              i32.const -2
              i32.add
              local.tee 29
              local.get 31
              i32.const 15
              i32.add
              i32.store8
              local.get 19
              i32.const -1
              i32.add
              i32.const 45
              i32.const 43
              local.get 25
              i32.const 0
              i32.lt_s
              select
              i32.store8
              local.get 30
              i32.const 8
              i32.and
              local.set 20
              local.get 5
              i32.const 80
              i32.add
              local.set 21
              loop  ;; label = @6
                local.get 21
                local.set 19
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 34
                    f64.abs
                    f64.const 0x1p+31 (;=2.14748e+09;)
                    f64.lt
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 34
                    i32.trunc_f64_s
                    local.set 21
                    br 1 (;@7;)
                  end
                  i32.const -2147483648
                  local.set 21
                end
                local.get 19
                local.get 21
                i32.const 3696
                i32.add
                i32.load8_u
                local.get 22
                i32.or
                i32.store8
                local.get 34
                local.get 21
                f64.convert_i32_s
                f64.sub
                f64.const 0x1p+4 (;=16;)
                f64.mul
                local.set 34
                block  ;; label = @7
                  local.get 19
                  i32.const 1
                  i32.add
                  local.tee 21
                  local.get 5
                  i32.const 80
                  i32.add
                  i32.sub
                  i32.const 1
                  i32.ne
                  br_if 0 (;@7;)
                  block  ;; label = @8
                    local.get 20
                    br_if 0 (;@8;)
                    local.get 24
                    i32.const 0
                    i32.gt_s
                    br_if 0 (;@8;)
                    local.get 34
                    f64.const 0x0p+0 (;=0;)
                    f64.eq
                    br_if 1 (;@7;)
                  end
                  local.get 19
                  i32.const 46
                  i32.store8 offset=1
                  local.get 19
                  i32.const 2
                  i32.add
                  local.set 21
                end
                local.get 34
                f64.const 0x0p+0 (;=0;)
                f64.ne
                br_if 0 (;@6;)
              end
              i32.const 2147483645
              local.get 6
              local.get 29
              i32.sub
              local.tee 25
              local.get 27
              i32.add
              local.tee 19
              i32.sub
              local.get 24
              i32.lt_s
              br_if 2 (;@3;)
              local.get 24
              i32.const 2
              i32.add
              local.get 21
              local.get 5
              i32.const 80
              i32.add
              i32.sub
              local.tee 22
              local.get 10
              local.get 21
              i32.add
              local.get 24
              i32.lt_s
              select
              local.get 22
              local.get 24
              select
              local.tee 20
              local.get 19
              i32.add
              local.set 28
              block  ;; label = @6
                local.get 30
                i32.const 73728
                i32.and
                local.tee 21
                br_if 0 (;@6;)
                local.get 26
                local.get 28
                i32.le_s
                br_if 0 (;@6;)
                local.get 5
                i32.const 624
                i32.add
                i32.const 32
                local.get 26
                local.get 28
                i32.sub
                local.tee 19
                i32.const 256
                local.get 19
                i32.const 256
                i32.lt_u
                local.tee 24
                select
                call $memset
                drop
                block  ;; label = @7
                  local.get 24
                  br_if 0 (;@7;)
                  loop  ;; label = @8
                    block  ;; label = @9
                      local.get 0
                      i32.load8_u
                      i32.const 32
                      i32.and
                      br_if 0 (;@9;)
                      local.get 5
                      i32.const 624
                      i32.add
                      i32.const 256
                      local.get 0
                      call $__fwritex
                      drop
                    end
                    local.get 19
                    i32.const -256
                    i32.add
                    local.tee 19
                    i32.const 255
                    i32.gt_u
                    br_if 0 (;@8;)
                  end
                end
                local.get 0
                i32.load8_u
                i32.const 32
                i32.and
                br_if 0 (;@6;)
                local.get 5
                i32.const 624
                i32.add
                local.get 19
                local.get 0
                call $__fwritex
                drop
              end
              block  ;; label = @6
                local.get 0
                i32.load8_u
                i32.const 32
                i32.and
                br_if 0 (;@6;)
                local.get 23
                local.get 27
                local.get 0
                call $__fwritex
                drop
              end
              block  ;; label = @6
                local.get 21
                i32.const 65536
                i32.ne
                br_if 0 (;@6;)
                local.get 26
                local.get 28
                i32.le_s
                br_if 0 (;@6;)
                local.get 5
                i32.const 624
                i32.add
                i32.const 48
                local.get 26
                local.get 28
                i32.sub
                local.tee 19
                i32.const 256
                local.get 19
                i32.const 256
                i32.lt_u
                local.tee 24
                select
                call $memset
                drop
                block  ;; label = @7
                  local.get 24
                  br_if 0 (;@7;)
                  loop  ;; label = @8
                    block  ;; label = @9
                      local.get 0
                      i32.load8_u
                      i32.const 32
                      i32.and
                      br_if 0 (;@9;)
                      local.get 5
                      i32.const 624
                      i32.add
                      i32.const 256
                      local.get 0
                      call $__fwritex
                      drop
                    end
                    local.get 19
                    i32.const -256
                    i32.add
                    local.tee 19
                    i32.const 255
                    i32.gt_u
                    br_if 0 (;@8;)
                  end
                end
                local.get 0
                i32.load8_u
                i32.const 32
                i32.and
                br_if 0 (;@6;)
                local.get 5
                i32.const 624
                i32.add
                local.get 19
                local.get 0
                call $__fwritex
                drop
              end
              block  ;; label = @6
                local.get 0
                i32.load8_u
                i32.const 32
                i32.and
                br_if 0 (;@6;)
                local.get 5
                i32.const 80
                i32.add
                local.get 22
                local.get 0
                call $__fwritex
                drop
              end
              block  ;; label = @6
                local.get 20
                local.get 22
                i32.sub
                local.tee 19
                i32.const 1
                i32.lt_s
                br_if 0 (;@6;)
                local.get 5
                i32.const 624
                i32.add
                i32.const 48
                local.get 19
                i32.const 256
                local.get 19
                i32.const 256
                i32.lt_u
                local.tee 22
                select
                call $memset
                drop
                block  ;; label = @7
                  local.get 22
                  br_if 0 (;@7;)
                  loop  ;; label = @8
                    block  ;; label = @9
                      local.get 0
                      i32.load8_u
                      i32.const 32
                      i32.and
                      br_if 0 (;@9;)
                      local.get 5
                      i32.const 624
                      i32.add
                      i32.const 256
                      local.get 0
                      call $__fwritex
                      drop
                    end
                    local.get 19
                    i32.const -256
                    i32.add
                    local.tee 19
                    i32.const 255
                    i32.gt_u
                    br_if 0 (;@8;)
                  end
                end
                local.get 0
                i32.load8_u
                i32.const 32
                i32.and
                br_if 0 (;@6;)
                local.get 5
                i32.const 624
                i32.add
                local.get 19
                local.get 0
                call $__fwritex
                drop
              end
              block  ;; label = @6
                local.get 0
                i32.load8_u
                i32.const 32
                i32.and
                br_if 0 (;@6;)
                local.get 29
                local.get 25
                local.get 0
                call $__fwritex
                drop
              end
              local.get 21
              i32.const 8192
              i32.ne
              br_if 0 (;@5;)
              local.get 26
              local.get 28
              i32.le_s
              br_if 0 (;@5;)
              local.get 5
              i32.const 624
              i32.add
              i32.const 32
              local.get 26
              local.get 28
              i32.sub
              local.tee 19
              i32.const 256
              local.get 19
              i32.const 256
              i32.lt_u
              local.tee 21
              select
              call $memset
              drop
              block  ;; label = @6
                local.get 21
                br_if 0 (;@6;)
                loop  ;; label = @7
                  block  ;; label = @8
                    local.get 0
                    i32.load8_u
                    i32.const 32
                    i32.and
                    br_if 0 (;@8;)
                    local.get 5
                    i32.const 624
                    i32.add
                    i32.const 256
                    local.get 0
                    call $__fwritex
                    drop
                  end
                  local.get 19
                  i32.const -256
                  i32.add
                  local.tee 19
                  i32.const 255
                  i32.gt_u
                  br_if 0 (;@7;)
                end
              end
              local.get 0
              i32.load8_u
              i32.const 32
              i32.and
              br_if 0 (;@5;)
              local.get 5
              i32.const 624
              i32.add
              local.get 19
              local.get 0
              call $__fwritex
              drop
            end
            local.get 28
            local.get 26
            local.get 28
            local.get 26
            i32.gt_s
            select
            local.tee 19
            i32.const 0
            i32.ge_s
            br_if 0 (;@4;)
          end
        end
        i32.const 0
        i32.const 61
        i32.store offset=5128
      end
      i32.const -1
      local.set 18
    end
    local.get 5
    i32.const 880
    i32.add
    global.set $__stack_pointer
    local.get 18)
  (func $pop_arg (type 14) (param i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          local.get 1
                                          i32.const -9
                                          i32.add
                                          br_table 17 (;@2;) 0 (;@19;) 1 (;@18;) 4 (;@15;) 2 (;@17;) 3 (;@16;) 5 (;@14;) 6 (;@13;) 7 (;@12;) 8 (;@11;) 9 (;@10;) 10 (;@9;) 11 (;@8;) 12 (;@7;) 13 (;@6;) 14 (;@5;) 15 (;@4;) 16 (;@3;) 18 (;@1;)
                                        end
                                        local.get 2
                                        local.get 2
                                        i32.load
                                        local.tee 1
                                        i32.const 4
                                        i32.add
                                        i32.store
                                        local.get 0
                                        local.get 1
                                        i64.load32_s
                                        i64.store
                                        return
                                      end
                                      local.get 2
                                      local.get 2
                                      i32.load
                                      local.tee 1
                                      i32.const 4
                                      i32.add
                                      i32.store
                                      local.get 0
                                      local.get 1
                                      i64.load32_u
                                      i64.store
                                      return
                                    end
                                    local.get 2
                                    local.get 2
                                    i32.load
                                    local.tee 1
                                    i32.const 4
                                    i32.add
                                    i32.store
                                    local.get 0
                                    local.get 1
                                    i64.load32_s
                                    i64.store
                                    return
                                  end
                                  local.get 2
                                  local.get 2
                                  i32.load
                                  local.tee 1
                                  i32.const 4
                                  i32.add
                                  i32.store
                                  local.get 0
                                  local.get 1
                                  i64.load32_u
                                  i64.store
                                  return
                                end
                                local.get 2
                                local.get 2
                                i32.load
                                i32.const 7
                                i32.add
                                i32.const -8
                                i32.and
                                local.tee 1
                                i32.const 8
                                i32.add
                                i32.store
                                local.get 0
                                local.get 1
                                i64.load
                                i64.store
                                return
                              end
                              local.get 2
                              local.get 2
                              i32.load
                              local.tee 1
                              i32.const 4
                              i32.add
                              i32.store
                              local.get 0
                              local.get 1
                              i64.load16_s
                              i64.store
                              return
                            end
                            local.get 2
                            local.get 2
                            i32.load
                            local.tee 1
                            i32.const 4
                            i32.add
                            i32.store
                            local.get 0
                            local.get 1
                            i64.load16_u
                            i64.store
                            return
                          end
                          local.get 2
                          local.get 2
                          i32.load
                          local.tee 1
                          i32.const 4
                          i32.add
                          i32.store
                          local.get 0
                          local.get 1
                          i64.load8_s
                          i64.store
                          return
                        end
                        local.get 2
                        local.get 2
                        i32.load
                        local.tee 1
                        i32.const 4
                        i32.add
                        i32.store
                        local.get 0
                        local.get 1
                        i64.load8_u
                        i64.store
                        return
                      end
                      local.get 2
                      local.get 2
                      i32.load
                      i32.const 7
                      i32.add
                      i32.const -8
                      i32.and
                      local.tee 1
                      i32.const 8
                      i32.add
                      i32.store
                      local.get 0
                      local.get 1
                      i64.load
                      i64.store
                      return
                    end
                    local.get 2
                    local.get 2
                    i32.load
                    local.tee 1
                    i32.const 4
                    i32.add
                    i32.store
                    local.get 0
                    local.get 1
                    i64.load32_u
                    i64.store
                    return
                  end
                  local.get 2
                  local.get 2
                  i32.load
                  i32.const 7
                  i32.add
                  i32.const -8
                  i32.and
                  local.tee 1
                  i32.const 8
                  i32.add
                  i32.store
                  local.get 0
                  local.get 1
                  i64.load
                  i64.store
                  return
                end
                local.get 2
                local.get 2
                i32.load
                i32.const 7
                i32.add
                i32.const -8
                i32.and
                local.tee 1
                i32.const 8
                i32.add
                i32.store
                local.get 0
                local.get 1
                i64.load
                i64.store
                return
              end
              local.get 2
              local.get 2
              i32.load
              local.tee 1
              i32.const 4
              i32.add
              i32.store
              local.get 0
              local.get 1
              i64.load32_s
              i64.store
              return
            end
            local.get 2
            local.get 2
            i32.load
            local.tee 1
            i32.const 4
            i32.add
            i32.store
            local.get 0
            local.get 1
            i64.load32_u
            i64.store
            return
          end
          local.get 2
          local.get 2
          i32.load
          i32.const 7
          i32.add
          i32.const -8
          i32.and
          local.tee 1
          i32.const 8
          i32.add
          i32.store
          local.get 0
          local.get 1
          f64.load
          f64.store
          return
        end
        call $long_double_not_supported
        unreachable
      end
      local.get 2
      local.get 2
      i32.load
      local.tee 1
      i32.const 4
      i32.add
      i32.store
      local.get 0
      local.get 1
      i32.load
      i32.store
    end)
  (func $pad (type 15) (param i32 i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 256
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    block  ;; label = @1
      local.get 2
      local.get 3
      i32.le_s
      br_if 0 (;@1;)
      local.get 4
      i32.const 73728
      i32.and
      br_if 0 (;@1;)
      local.get 5
      local.get 1
      local.get 2
      local.get 3
      i32.sub
      local.tee 3
      i32.const 256
      local.get 3
      i32.const 256
      i32.lt_u
      local.tee 4
      select
      call $memset
      local.set 2
      block  ;; label = @2
        local.get 4
        br_if 0 (;@2;)
        loop  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.load8_u
            i32.const 32
            i32.and
            br_if 0 (;@4;)
            local.get 2
            i32.const 256
            local.get 0
            call $__fwritex
            drop
          end
          local.get 3
          i32.const -256
          i32.add
          local.tee 3
          i32.const 255
          i32.gt_u
          br_if 0 (;@3;)
        end
      end
      local.get 0
      i32.load8_u
      i32.const 32
      i32.and
      br_if 0 (;@1;)
      local.get 2
      local.get 3
      local.get 0
      call $__fwritex
      drop
    end
    local.get 5
    i32.const 256
    i32.add
    global.set $__stack_pointer)
  (func $long_double_not_supported (type 9)
    i32.const 1378
    i32.const 4352
    call $fputs
    drop
    call $abort
    unreachable)
  (func $__toread (type 0) (param i32) (result i32)
    (local i32 i32)
    local.get 0
    local.get 0
    i32.load offset=60
    local.tee 1
    i32.const -1
    i32.add
    local.get 1
    i32.or
    i32.store offset=60
    block  ;; label = @1
      local.get 0
      i32.load offset=20
      local.get 0
      i32.load offset=24
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      i32.const 0
      i32.const 0
      local.get 0
      i32.load offset=32
      call_indirect (type 1)
      drop
    end
    local.get 0
    i32.const 0
    i32.store offset=24
    local.get 0
    i64.const 0
    i64.store offset=16
    block  ;; label = @1
      local.get 0
      i32.load
      local.tee 1
      i32.const 4
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      i32.const 32
      i32.or
      i32.store
      i32.const -1
      return
    end
    local.get 0
    local.get 0
    i32.load offset=40
    local.get 0
    i32.load offset=44
    i32.add
    local.tee 2
    i32.store offset=8
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 1
    i32.const 27
    i32.shl
    i32.const 31
    i32.shr_s)
  (func $__uflow (type 0) (param i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    i32.const -1
    local.set 2
    block  ;; label = @1
      local.get 0
      call $__toread
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      i32.const 15
      i32.add
      i32.const 1
      local.get 0
      i32.load offset=28
      call_indirect (type 1)
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      local.get 1
      i32.load8_u offset=15
      local.set 2
    end
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 2)
  (func $__shlim (type 19) (param i32 i64)
    (local i32 i32)
    local.get 0
    local.get 1
    i64.store offset=88
    local.get 0
    local.get 0
    i32.load offset=40
    local.get 0
    i32.load offset=4
    local.tee 2
    i32.sub
    i64.extend_i32_s
    i64.store offset=96
    local.get 0
    i32.load offset=8
    local.set 3
    block  ;; label = @1
      local.get 1
      i64.eqz
      br_if 0 (;@1;)
      local.get 3
      local.get 2
      i32.sub
      i64.extend_i32_s
      local.get 1
      i64.le_s
      br_if 0 (;@1;)
      local.get 2
      local.get 1
      i32.wrap_i64
      i32.add
      local.set 3
    end
    local.get 0
    local.get 3
    i32.store offset=84)
  (func $__shgetc (type 0) (param i32) (result i32)
    (local i32 i32 i64 i64 i32)
    local.get 0
    i64.load offset=96
    local.get 0
    i32.load offset=4
    local.tee 1
    local.get 0
    i32.load offset=40
    local.tee 2
    i32.sub
    i64.extend_i32_s
    i64.add
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i64.load offset=88
          local.tee 4
          i64.eqz
          br_if 0 (;@3;)
          local.get 3
          local.get 4
          i64.ge_s
          br_if 1 (;@2;)
        end
        local.get 0
        call $__uflow
        local.tee 2
        i32.const -1
        i32.gt_s
        br_if 1 (;@1;)
        local.get 0
        i32.load offset=4
        local.set 1
        local.get 0
        i32.load offset=40
        local.set 2
      end
      local.get 0
      i64.const -1
      i64.store offset=88
      local.get 0
      local.get 1
      i32.store offset=84
      local.get 0
      local.get 3
      local.get 2
      local.get 1
      i32.sub
      i64.extend_i32_s
      i64.add
      i64.store offset=96
      i32.const -1
      return
    end
    local.get 3
    i64.const 1
    i64.add
    local.set 3
    local.get 0
    i32.load offset=4
    local.set 1
    local.get 0
    i32.load offset=8
    local.set 5
    block  ;; label = @1
      local.get 0
      i64.load offset=88
      local.tee 4
      i64.const 0
      i64.eq
      br_if 0 (;@1;)
      local.get 4
      local.get 3
      i64.sub
      local.tee 4
      local.get 5
      local.get 1
      i32.sub
      i64.extend_i32_s
      i64.ge_s
      br_if 0 (;@1;)
      local.get 1
      local.get 4
      i32.wrap_i64
      i32.add
      local.set 5
    end
    local.get 0
    local.get 5
    i32.store offset=84
    local.get 0
    local.get 3
    local.get 0
    i32.load offset=40
    local.tee 5
    local.get 1
    i32.sub
    i64.extend_i32_s
    i64.add
    i64.store offset=96
    block  ;; label = @1
      local.get 1
      local.get 5
      i32.gt_u
      br_if 0 (;@1;)
      local.get 1
      i32.const -1
      i32.add
      local.get 2
      i32.store8
    end
    local.get 2)
  (func $__intscan (type 20) (param i32 i32 i32 i64) (result i64)
    (local i32 i32 i32 i64 i64 i64 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 1
                i32.const 36
                i32.gt_u
                br_if 0 (;@6;)
                local.get 1
                i32.const 1
                i32.eq
                br_if 0 (;@6;)
                block  ;; label = @7
                  block  ;; label = @8
                    loop  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 0
                          i32.load offset=4
                          local.tee 5
                          local.get 0
                          i32.load offset=84
                          i32.eq
                          br_if 0 (;@11;)
                          local.get 0
                          local.get 5
                          i32.const 1
                          i32.add
                          i32.store offset=4
                          local.get 5
                          i32.load8_u
                          local.set 5
                          br 1 (;@10;)
                        end
                        local.get 0
                        call $__shgetc
                        local.set 5
                      end
                      local.get 5
                      i32.const -9
                      i32.add
                      i32.const 5
                      i32.lt_u
                      br_if 0 (;@9;)
                      block  ;; label = @10
                        local.get 5
                        i32.const -32
                        i32.add
                        br_table 1 (;@9;) 2 (;@8;) 2 (;@8;) 2 (;@8;) 2 (;@8;) 2 (;@8;) 2 (;@8;) 2 (;@8;) 2 (;@8;) 2 (;@8;) 2 (;@8;) 0 (;@10;) 2 (;@8;) 0 (;@10;) 2 (;@8;)
                      end
                    end
                    i32.const -1
                    i32.const 0
                    local.get 5
                    i32.const 45
                    i32.eq
                    select
                    local.set 6
                    block  ;; label = @9
                      local.get 0
                      i32.load offset=4
                      local.tee 5
                      local.get 0
                      i32.load offset=84
                      i32.eq
                      br_if 0 (;@9;)
                      local.get 0
                      local.get 5
                      i32.const 1
                      i32.add
                      i32.store offset=4
                      local.get 5
                      i32.load8_u
                      local.set 5
                      br 2 (;@7;)
                    end
                    local.get 0
                    call $__shgetc
                    local.set 5
                    br 1 (;@7;)
                  end
                  i32.const 0
                  local.set 6
                end
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 1
                    i32.const 0
                    i32.ne
                    local.get 1
                    i32.const 16
                    i32.ne
                    i32.and
                    br_if 0 (;@8;)
                    local.get 5
                    i32.const 48
                    i32.ne
                    br_if 0 (;@8;)
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 0
                        i32.load offset=4
                        local.tee 5
                        local.get 0
                        i32.load offset=84
                        i32.eq
                        br_if 0 (;@10;)
                        local.get 0
                        local.get 5
                        i32.const 1
                        i32.add
                        i32.store offset=4
                        local.get 5
                        i32.load8_u
                        local.set 5
                        br 1 (;@9;)
                      end
                      local.get 0
                      call $__shgetc
                      local.set 5
                    end
                    block  ;; label = @9
                      local.get 5
                      i32.const -33
                      i32.and
                      i32.const 88
                      i32.ne
                      br_if 0 (;@9;)
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 0
                          i32.load offset=4
                          local.tee 5
                          local.get 0
                          i32.load offset=84
                          i32.eq
                          br_if 0 (;@11;)
                          local.get 0
                          local.get 5
                          i32.const 1
                          i32.add
                          i32.store offset=4
                          local.get 5
                          i32.load8_u
                          local.set 5
                          br 1 (;@10;)
                        end
                        local.get 0
                        call $__shgetc
                        local.set 5
                      end
                      i32.const 16
                      local.set 1
                      local.get 5
                      i32.const 3713
                      i32.add
                      i32.load8_u
                      i32.const 16
                      i32.lt_u
                      br_if 5 (;@4;)
                      i64.const 0
                      local.set 3
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 0
                          i64.load offset=88
                          i64.const 0
                          i64.lt_s
                          br_if 0 (;@11;)
                          local.get 0
                          local.get 0
                          i32.load offset=4
                          local.tee 5
                          i32.const -1
                          i32.add
                          i32.store offset=4
                          local.get 2
                          i32.eqz
                          br_if 1 (;@10;)
                          local.get 0
                          local.get 5
                          i32.const -2
                          i32.add
                          i32.store offset=4
                          br 10 (;@1;)
                        end
                        local.get 2
                        br_if 9 (;@1;)
                      end
                      i64.const 0
                      local.set 3
                      local.get 0
                      i64.const 0
                      call $__shlim
                      br 8 (;@1;)
                    end
                    local.get 1
                    br_if 1 (;@7;)
                    i32.const 8
                    local.set 1
                    br 4 (;@4;)
                  end
                  local.get 1
                  i32.const 10
                  local.get 1
                  select
                  local.tee 1
                  local.get 5
                  i32.const 3713
                  i32.add
                  i32.load8_u
                  i32.gt_u
                  br_if 0 (;@7;)
                  i64.const 0
                  local.set 3
                  block  ;; label = @8
                    local.get 0
                    i64.load offset=88
                    i64.const 0
                    i64.lt_s
                    br_if 0 (;@8;)
                    local.get 0
                    local.get 0
                    i32.load offset=4
                    i32.const -1
                    i32.add
                    i32.store offset=4
                  end
                  local.get 0
                  i64.const 0
                  call $__shlim
                  i32.const 0
                  i32.const 28
                  i32.store offset=5128
                  br 6 (;@1;)
                end
                local.get 1
                i32.const 10
                i32.ne
                br_if 2 (;@4;)
                i64.const 0
                local.set 7
                block  ;; label = @7
                  local.get 5
                  i32.const -48
                  i32.add
                  local.tee 2
                  i32.const 9
                  i32.gt_u
                  br_if 0 (;@7;)
                  i32.const 0
                  local.set 1
                  loop  ;; label = @8
                    local.get 1
                    i32.const 10
                    i32.mul
                    local.set 1
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 0
                        i32.load offset=4
                        local.tee 5
                        local.get 0
                        i32.load offset=84
                        i32.eq
                        br_if 0 (;@10;)
                        local.get 0
                        local.get 5
                        i32.const 1
                        i32.add
                        i32.store offset=4
                        local.get 5
                        i32.load8_u
                        local.set 5
                        br 1 (;@9;)
                      end
                      local.get 0
                      call $__shgetc
                      local.set 5
                    end
                    local.get 1
                    local.get 2
                    i32.add
                    local.set 1
                    block  ;; label = @9
                      local.get 5
                      i32.const -48
                      i32.add
                      local.tee 2
                      i32.const 9
                      i32.gt_u
                      br_if 0 (;@9;)
                      local.get 1
                      i32.const 429496729
                      i32.lt_u
                      br_if 1 (;@8;)
                    end
                  end
                  local.get 1
                  i64.extend_i32_u
                  local.set 7
                end
                local.get 2
                i32.const 9
                i32.gt_u
                br_if 1 (;@5;)
                local.get 7
                i64.const 10
                i64.mul
                local.set 8
                local.get 2
                i64.extend_i32_u
                local.set 9
                loop  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 0
                      i32.load offset=4
                      local.tee 5
                      local.get 0
                      i32.load offset=84
                      i32.eq
                      br_if 0 (;@9;)
                      local.get 0
                      local.get 5
                      i32.const 1
                      i32.add
                      i32.store offset=4
                      local.get 5
                      i32.load8_u
                      local.set 5
                      br 1 (;@8;)
                    end
                    local.get 0
                    call $__shgetc
                    local.set 5
                  end
                  local.get 8
                  local.get 9
                  i64.add
                  local.set 7
                  local.get 5
                  i32.const -48
                  i32.add
                  local.tee 2
                  i32.const 9
                  i32.gt_u
                  br_if 2 (;@5;)
                  local.get 7
                  i64.const 1844674407370955162
                  i64.ge_u
                  br_if 2 (;@5;)
                  local.get 7
                  i64.const 10
                  i64.mul
                  local.tee 8
                  local.get 2
                  i64.extend_i32_u
                  local.tee 9
                  i64.const -1
                  i64.xor
                  i64.le_u
                  br_if 0 (;@7;)
                end
                i32.const 10
                local.set 1
                br 3 (;@3;)
              end
              i32.const 0
              i32.const 28
              i32.store offset=5128
              i64.const 0
              local.set 3
              br 4 (;@1;)
            end
            i32.const 10
            local.set 1
            local.get 2
            i32.const 9
            i32.le_u
            br_if 1 (;@3;)
            br 2 (;@2;)
          end
          block  ;; label = @4
            local.get 1
            local.get 1
            i32.const -1
            i32.add
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            i64.const 0
            local.set 7
            block  ;; label = @5
              local.get 1
              local.get 5
              i32.const 3713
              i32.add
              i32.load8_u
              local.tee 10
              i32.le_u
              br_if 0 (;@5;)
              i32.const 0
              local.set 2
              loop  ;; label = @6
                local.get 2
                local.get 1
                i32.mul
                local.set 2
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 0
                    i32.load offset=4
                    local.tee 5
                    local.get 0
                    i32.load offset=84
                    i32.eq
                    br_if 0 (;@8;)
                    local.get 0
                    local.get 5
                    i32.const 1
                    i32.add
                    i32.store offset=4
                    local.get 5
                    i32.load8_u
                    local.set 5
                    br 1 (;@7;)
                  end
                  local.get 0
                  call $__shgetc
                  local.set 5
                end
                local.get 10
                local.get 2
                i32.add
                local.set 2
                block  ;; label = @7
                  local.get 1
                  local.get 5
                  i32.const 3713
                  i32.add
                  i32.load8_u
                  local.tee 10
                  i32.le_u
                  br_if 0 (;@7;)
                  local.get 2
                  i32.const 119304647
                  i32.lt_u
                  br_if 1 (;@6;)
                end
              end
              local.get 2
              i64.extend_i32_u
              local.set 7
            end
            local.get 1
            local.get 10
            i32.le_u
            br_if 1 (;@3;)
            local.get 1
            i64.extend_i32_u
            local.set 8
            loop  ;; label = @5
              local.get 7
              local.get 8
              i64.mul
              local.tee 9
              local.get 10
              i64.extend_i32_u
              i64.const 255
              i64.and
              local.tee 11
              i64.const -1
              i64.xor
              i64.gt_u
              br_if 2 (;@3;)
              block  ;; label = @6
                block  ;; label = @7
                  local.get 0
                  i32.load offset=4
                  local.tee 5
                  local.get 0
                  i32.load offset=84
                  i32.eq
                  br_if 0 (;@7;)
                  local.get 0
                  local.get 5
                  i32.const 1
                  i32.add
                  i32.store offset=4
                  local.get 5
                  i32.load8_u
                  local.set 5
                  br 1 (;@6;)
                end
                local.get 0
                call $__shgetc
                local.set 5
              end
              local.get 9
              local.get 11
              i64.add
              local.set 7
              local.get 1
              local.get 5
              i32.const 3713
              i32.add
              i32.load8_u
              local.tee 10
              i32.le_u
              br_if 2 (;@3;)
              local.get 4
              local.get 8
              i64.const 0
              local.get 7
              i64.const 0
              call $__multi3
              local.get 4
              i64.load offset=8
              i64.const 0
              i64.ne
              br_if 2 (;@3;)
              br 0 (;@5;)
            end
          end
          local.get 1
          i32.const 23
          i32.mul
          i32.const 5
          i32.shr_u
          i32.const 7
          i32.and
          i32.const 3969
          i32.add
          i32.load8_s
          local.set 12
          i64.const 0
          local.set 7
          block  ;; label = @4
            local.get 1
            local.get 5
            i32.const 3713
            i32.add
            i32.load8_u
            local.tee 2
            i32.le_u
            br_if 0 (;@4;)
            i32.const 0
            local.set 10
            loop  ;; label = @5
              local.get 10
              local.get 12
              i32.shl
              local.set 10
              block  ;; label = @6
                block  ;; label = @7
                  local.get 0
                  i32.load offset=4
                  local.tee 5
                  local.get 0
                  i32.load offset=84
                  i32.eq
                  br_if 0 (;@7;)
                  local.get 0
                  local.get 5
                  i32.const 1
                  i32.add
                  i32.store offset=4
                  local.get 5
                  i32.load8_u
                  local.set 5
                  br 1 (;@6;)
                end
                local.get 0
                call $__shgetc
                local.set 5
              end
              local.get 2
              local.get 10
              i32.or
              local.set 10
              block  ;; label = @6
                local.get 1
                local.get 5
                i32.const 3713
                i32.add
                i32.load8_u
                local.tee 2
                i32.le_u
                br_if 0 (;@6;)
                local.get 10
                i32.const 134217728
                i32.lt_u
                br_if 1 (;@5;)
              end
            end
            local.get 10
            i64.extend_i32_u
            local.set 7
          end
          local.get 1
          local.get 2
          i32.le_u
          br_if 0 (;@3;)
          i64.const -1
          local.get 12
          i64.extend_i32_u
          local.tee 9
          i64.shr_u
          local.tee 11
          local.get 7
          i64.lt_u
          br_if 0 (;@3;)
          loop  ;; label = @4
            local.get 7
            local.get 9
            i64.shl
            local.set 7
            local.get 2
            i64.extend_i32_u
            i64.const 255
            i64.and
            local.set 8
            block  ;; label = @5
              block  ;; label = @6
                local.get 0
                i32.load offset=4
                local.tee 5
                local.get 0
                i32.load offset=84
                i32.eq
                br_if 0 (;@6;)
                local.get 0
                local.get 5
                i32.const 1
                i32.add
                i32.store offset=4
                local.get 5
                i32.load8_u
                local.set 5
                br 1 (;@5;)
              end
              local.get 0
              call $__shgetc
              local.set 5
            end
            local.get 7
            local.get 8
            i64.or
            local.set 7
            local.get 1
            local.get 5
            i32.const 3713
            i32.add
            i32.load8_u
            local.tee 2
            i32.le_u
            br_if 1 (;@3;)
            local.get 7
            local.get 11
            i64.le_u
            br_if 0 (;@4;)
          end
        end
        local.get 1
        local.get 5
        i32.const 3713
        i32.add
        i32.load8_u
        i32.le_u
        br_if 0 (;@2;)
        loop  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              i32.load offset=4
              local.tee 5
              local.get 0
              i32.load offset=84
              i32.eq
              br_if 0 (;@5;)
              local.get 0
              local.get 5
              i32.const 1
              i32.add
              i32.store offset=4
              local.get 5
              i32.load8_u
              local.set 5
              br 1 (;@4;)
            end
            local.get 0
            call $__shgetc
            local.set 5
          end
          local.get 1
          local.get 5
          i32.const 3713
          i32.add
          i32.load8_u
          i32.gt_u
          br_if 0 (;@3;)
        end
        i32.const 0
        i32.const 68
        i32.store offset=5128
        local.get 6
        i32.const 0
        local.get 3
        i64.const 1
        i64.and
        i64.eqz
        select
        local.set 6
        local.get 3
        local.set 7
      end
      block  ;; label = @2
        local.get 0
        i64.load offset=88
        i64.const 0
        i64.lt_s
        br_if 0 (;@2;)
        local.get 0
        local.get 0
        i32.load offset=4
        i32.const -1
        i32.add
        i32.store offset=4
      end
      block  ;; label = @2
        local.get 7
        local.get 3
        i64.lt_u
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 3
          i32.wrap_i64
          i32.const 1
          i32.and
          br_if 0 (;@3;)
          local.get 6
          br_if 0 (;@3;)
          i32.const 0
          i32.const 68
          i32.store offset=5128
          local.get 3
          i64.const -1
          i64.add
          local.set 3
          br 2 (;@1;)
        end
        local.get 7
        local.get 3
        i64.le_u
        br_if 0 (;@2;)
        i32.const 0
        i32.const 68
        i32.store offset=5128
        br 1 (;@1;)
      end
      local.get 7
      local.get 6
      i64.extend_i32_s
      local.tee 3
      i64.xor
      local.get 3
      i64.sub
      local.set 3
    end
    local.get 4
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 3)
  (func $__floatscan (type 21) (param i32 i32 i32) (result f64)
    (local i32 i32 i32 i32 f64 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i64 i32 i32 i32 i64 f64 f64 f64)
    global.get $__stack_pointer
    i32.const 512
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    i32.const -149
    local.set 4
    i32.const 24
    local.set 5
    i32.const 0
    local.set 6
    f64.const 0x0p+0 (;=0;)
    local.set 7
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          br_table 1 (;@2;) 0 (;@3;) 0 (;@3;) 2 (;@1;)
        end
        i32.const -1074
        local.set 4
        i32.const 53
        local.set 5
        i32.const 1
        local.set 6
      end
      local.get 0
      i32.const 4
      i32.add
      local.set 8
      block  ;; label = @2
        block  ;; label = @3
          loop  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 0
                i32.load offset=4
                local.tee 1
                local.get 0
                i32.load offset=84
                i32.eq
                br_if 0 (;@6;)
                local.get 8
                local.get 1
                i32.const 1
                i32.add
                i32.store
                local.get 1
                i32.load8_u
                local.set 1
                br 1 (;@5;)
              end
              local.get 0
              call $__shgetc
              local.set 1
            end
            local.get 1
            i32.const -9
            i32.add
            i32.const 5
            i32.lt_u
            br_if 0 (;@4;)
            block  ;; label = @5
              local.get 1
              i32.const -32
              i32.add
              br_table 1 (;@4;) 2 (;@3;) 2 (;@3;) 2 (;@3;) 2 (;@3;) 2 (;@3;) 2 (;@3;) 2 (;@3;) 2 (;@3;) 2 (;@3;) 2 (;@3;) 0 (;@5;) 2 (;@3;) 0 (;@5;) 2 (;@3;)
            end
          end
          i32.const -1
          i32.const 1
          local.get 1
          i32.const 45
          i32.eq
          select
          local.set 9
          block  ;; label = @4
            local.get 0
            i32.load offset=4
            local.tee 1
            local.get 0
            i32.load offset=84
            i32.eq
            br_if 0 (;@4;)
            local.get 8
            local.get 1
            i32.const 1
            i32.add
            i32.store
            local.get 1
            i32.load8_u
            local.set 1
            br 2 (;@2;)
          end
          local.get 0
          call $__shgetc
          local.set 1
          br 1 (;@2;)
        end
        i32.const 1
        local.set 9
      end
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.const -33
            i32.and
            local.tee 10
            i32.const 73
            i32.ne
            br_if 0 (;@4;)
            block  ;; label = @5
              block  ;; label = @6
                local.get 0
                i32.load offset=4
                local.tee 1
                local.get 0
                i32.load offset=84
                i32.eq
                br_if 0 (;@6;)
                local.get 8
                local.get 1
                i32.const 1
                i32.add
                i32.store
                local.get 1
                i32.load8_u
                local.set 1
                br 1 (;@5;)
              end
              local.get 0
              call $__shgetc
              local.set 1
            end
            local.get 1
            i32.const -33
            i32.and
            i32.const 78
            i32.ne
            br_if 1 (;@3;)
            block  ;; label = @5
              block  ;; label = @6
                local.get 0
                i32.load offset=4
                local.tee 1
                local.get 0
                i32.load offset=84
                i32.eq
                br_if 0 (;@6;)
                local.get 8
                local.get 1
                i32.const 1
                i32.add
                i32.store
                local.get 1
                i32.load8_u
                local.set 1
                br 1 (;@5;)
              end
              local.get 0
              call $__shgetc
              local.set 1
            end
            local.get 1
            i32.const -33
            i32.and
            i32.const 70
            i32.ne
            br_if 1 (;@3;)
            block  ;; label = @5
              block  ;; label = @6
                local.get 0
                i32.load offset=4
                local.tee 1
                local.get 0
                i32.load offset=84
                i32.eq
                br_if 0 (;@6;)
                local.get 8
                local.get 1
                i32.const 1
                i32.add
                i32.store
                local.get 1
                i32.load8_u
                local.set 10
                br 1 (;@5;)
              end
              local.get 0
              call $__shgetc
              local.set 10
            end
            i32.const 3
            local.set 1
            block  ;; label = @5
              block  ;; label = @6
                local.get 10
                i32.const -33
                i32.and
                local.tee 10
                i32.const 73
                i32.ne
                br_if 0 (;@6;)
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 0
                    i32.load offset=4
                    local.tee 1
                    local.get 0
                    i32.load offset=84
                    i32.eq
                    br_if 0 (;@8;)
                    local.get 8
                    local.get 1
                    i32.const 1
                    i32.add
                    i32.store
                    local.get 1
                    i32.load8_u
                    local.set 11
                    br 1 (;@7;)
                  end
                  local.get 0
                  call $__shgetc
                  local.set 11
                end
                i32.const 4
                local.set 1
                block  ;; label = @7
                  local.get 11
                  i32.const -33
                  i32.and
                  i32.const 78
                  i32.ne
                  br_if 0 (;@7;)
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 0
                      i32.load offset=4
                      local.tee 1
                      local.get 0
                      i32.load offset=84
                      i32.eq
                      br_if 0 (;@9;)
                      local.get 8
                      local.get 1
                      i32.const 1
                      i32.add
                      i32.store
                      local.get 1
                      i32.load8_u
                      local.set 11
                      br 1 (;@8;)
                    end
                    local.get 0
                    call $__shgetc
                    local.set 11
                  end
                  i32.const 5
                  local.set 1
                  local.get 11
                  i32.const -33
                  i32.and
                  i32.const 73
                  i32.ne
                  br_if 0 (;@7;)
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 0
                      i32.load offset=4
                      local.tee 1
                      local.get 0
                      i32.load offset=84
                      i32.eq
                      br_if 0 (;@9;)
                      local.get 8
                      local.get 1
                      i32.const 1
                      i32.add
                      i32.store
                      local.get 1
                      i32.load8_u
                      local.set 11
                      br 1 (;@8;)
                    end
                    local.get 0
                    call $__shgetc
                    local.set 11
                  end
                  i32.const 6
                  local.set 1
                  local.get 11
                  i32.const -33
                  i32.and
                  i32.const 84
                  i32.ne
                  br_if 0 (;@7;)
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 0
                      i32.load offset=4
                      local.tee 1
                      local.get 0
                      i32.load offset=84
                      i32.eq
                      br_if 0 (;@9;)
                      local.get 8
                      local.get 1
                      i32.const 1
                      i32.add
                      i32.store
                      local.get 1
                      i32.load8_u
                      local.set 11
                      br 1 (;@8;)
                    end
                    local.get 0
                    call $__shgetc
                    local.set 11
                  end
                  i32.const 7
                  local.set 1
                  local.get 11
                  i32.const -33
                  i32.and
                  i32.const 89
                  i32.eq
                  br_if 2 (;@5;)
                end
                local.get 2
                i32.eqz
                br_if 3 (;@3;)
              end
              block  ;; label = @6
                local.get 0
                i64.load offset=88
                local.tee 12
                i64.const 0
                i64.lt_s
                br_if 0 (;@6;)
                local.get 8
                local.get 8
                i32.load
                i32.const -1
                i32.add
                i32.store
              end
              local.get 2
              i32.eqz
              br_if 0 (;@5;)
              local.get 10
              i32.const 73
              i32.ne
              br_if 0 (;@5;)
              block  ;; label = @6
                local.get 12
                i64.const 0
                i64.lt_s
                br_if 0 (;@6;)
                local.get 8
                local.get 8
                i32.load
                i32.const -1
                i32.add
                i32.store
              end
              local.get 1
              i32.const -5
              i32.add
              i32.const -5
              i32.gt_u
              br_if 0 (;@5;)
              block  ;; label = @6
                local.get 12
                i64.const 0
                i64.lt_s
                br_if 0 (;@6;)
                local.get 8
                local.get 8
                i32.load
                i32.const -1
                i32.add
                i32.store
              end
              local.get 1
              i32.const -6
              i32.add
              i32.const -5
              i32.gt_u
              br_if 0 (;@5;)
              block  ;; label = @6
                local.get 12
                i64.const 0
                i64.lt_s
                br_if 0 (;@6;)
                local.get 8
                local.get 8
                i32.load
                i32.const -1
                i32.add
                i32.store
              end
              local.get 1
              i32.const -7
              i32.add
              i32.const -5
              i32.gt_u
              br_if 0 (;@5;)
              local.get 12
              i64.const 0
              i64.lt_s
              br_if 0 (;@5;)
              local.get 8
              local.get 8
              i32.load
              i32.const -1
              i32.add
              i32.store
            end
            local.get 9
            f32.convert_i32_s
            f32.const inf (;=inf;)
            f32.mul
            f64.promote_f32
            local.set 7
            br 3 (;@1;)
          end
          local.get 10
          i32.const 78
          i32.ne
          br_if 1 (;@2;)
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              i32.load offset=4
              local.tee 1
              local.get 0
              i32.load offset=84
              i32.eq
              br_if 0 (;@5;)
              local.get 8
              local.get 1
              i32.const 1
              i32.add
              i32.store
              local.get 1
              i32.load8_u
              local.set 1
              br 1 (;@4;)
            end
            local.get 0
            call $__shgetc
            local.set 1
          end
          local.get 1
          i32.const -33
          i32.and
          i32.const 65
          i32.ne
          br_if 0 (;@3;)
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              i32.load offset=4
              local.tee 1
              local.get 0
              i32.load offset=84
              i32.eq
              br_if 0 (;@5;)
              local.get 8
              local.get 1
              i32.const 1
              i32.add
              i32.store
              local.get 1
              i32.load8_u
              local.set 1
              br 1 (;@4;)
            end
            local.get 0
            call $__shgetc
            local.set 1
          end
          local.get 1
          i32.const -33
          i32.and
          i32.const 78
          i32.ne
          br_if 0 (;@3;)
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              i32.load offset=4
              local.tee 1
              local.get 0
              i32.load offset=84
              i32.eq
              br_if 0 (;@5;)
              local.get 8
              local.get 1
              i32.const 1
              i32.add
              i32.store
              local.get 1
              i32.load8_u
              local.set 1
              br 1 (;@4;)
            end
            local.get 0
            call $__shgetc
            local.set 1
          end
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              i32.const 40
              i32.ne
              br_if 0 (;@5;)
              i32.const 1
              local.set 11
              i32.const 1
              local.set 10
              br 1 (;@4;)
            end
            f64.const nan (;=nan;)
            local.set 7
            local.get 0
            i64.load offset=88
            i64.const 0
            i64.lt_s
            br_if 3 (;@1;)
            local.get 8
            local.get 8
            i32.load
            i32.const -1
            i32.add
            i32.store
            br 3 (;@1;)
          end
          loop  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 0
                i32.load offset=4
                local.tee 1
                local.get 0
                i32.load offset=84
                i32.eq
                br_if 0 (;@6;)
                local.get 8
                local.get 1
                i32.const 1
                i32.add
                i32.store
                local.get 1
                i32.load8_u
                local.set 1
                br 1 (;@5;)
              end
              local.get 0
              call $__shgetc
              local.set 1
            end
            local.get 1
            i32.const -65
            i32.add
            local.set 13
            block  ;; label = @5
              block  ;; label = @6
                local.get 1
                i32.const -48
                i32.add
                i32.const 10
                i32.lt_u
                br_if 0 (;@6;)
                local.get 13
                i32.const 26
                i32.lt_u
                br_if 0 (;@6;)
                local.get 1
                i32.const -97
                i32.add
                local.set 13
                local.get 1
                i32.const 95
                i32.eq
                br_if 0 (;@6;)
                local.get 13
                i32.const 26
                i32.ge_u
                br_if 1 (;@5;)
              end
              local.get 11
              i32.const 1
              i32.add
              local.set 11
              local.get 10
              i32.const 1
              i32.add
              local.set 10
              br 1 (;@4;)
            end
          end
          block  ;; label = @4
            local.get 1
            i32.const 41
            i32.ne
            br_if 0 (;@4;)
            f64.const nan (;=nan;)
            local.set 7
            br 3 (;@1;)
          end
          block  ;; label = @4
            local.get 0
            i64.load offset=88
            local.tee 12
            i64.const 0
            i64.lt_s
            br_if 0 (;@4;)
            local.get 8
            local.get 8
            i32.load
            i32.const -1
            i32.add
            i32.store
          end
          block  ;; label = @4
            block  ;; label = @5
              local.get 2
              i32.eqz
              br_if 0 (;@5;)
              block  ;; label = @6
                local.get 10
                br_if 0 (;@6;)
                f64.const nan (;=nan;)
                local.set 7
                br 5 (;@1;)
              end
              local.get 10
              i32.const -1
              i32.add
              local.set 13
              block  ;; label = @6
                local.get 10
                i32.const 3
                i32.and
                i32.eqz
                br_if 0 (;@6;)
                local.get 11
                i32.const 3
                i32.and
                local.set 1
                i32.const 0
                local.set 0
                loop  ;; label = @7
                  block  ;; label = @8
                    local.get 12
                    i64.const 0
                    i64.lt_s
                    br_if 0 (;@8;)
                    local.get 8
                    local.get 8
                    i32.load
                    i32.const -1
                    i32.add
                    i32.store
                  end
                  local.get 1
                  local.get 0
                  i32.const 1
                  i32.add
                  local.tee 0
                  i32.ne
                  br_if 0 (;@7;)
                end
                local.get 10
                local.get 0
                i32.sub
                local.set 10
              end
              local.get 13
              i32.const 3
              i32.ge_u
              br_if 1 (;@4;)
              f64.const nan (;=nan;)
              local.set 7
              br 4 (;@1;)
            end
            i32.const 0
            i32.const 28
            i32.store offset=5128
            local.get 0
            i64.const 0
            call $__shlim
            br 3 (;@1;)
          end
          local.get 12
          i64.const 0
          i64.lt_s
          local.set 0
          loop  ;; label = @4
            block  ;; label = @5
              local.get 0
              br_if 0 (;@5;)
              local.get 8
              local.get 8
              i32.load
              i32.const -3
              i32.add
              i32.store
            end
            local.get 10
            i32.const -4
            i32.add
            local.set 10
            block  ;; label = @5
              local.get 0
              br_if 0 (;@5;)
              local.get 8
              local.get 8
              i32.load
              i32.const -1
              i32.add
              i32.store
            end
            local.get 10
            br_if 0 (;@4;)
          end
          f64.const nan (;=nan;)
          local.set 7
          br 2 (;@1;)
        end
        block  ;; label = @3
          local.get 0
          i64.load offset=88
          i64.const 0
          i64.lt_s
          br_if 0 (;@3;)
          local.get 8
          local.get 8
          i32.load
          i32.const -1
          i32.add
          i32.store
        end
        i32.const 0
        i32.const 28
        i32.store offset=5128
        local.get 0
        i64.const 0
        call $__shlim
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 1
        i32.const 48
        i32.ne
        br_if 0 (;@2;)
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.load offset=4
            local.tee 10
            local.get 0
            i32.load offset=84
            i32.eq
            br_if 0 (;@4;)
            local.get 8
            local.get 10
            i32.const 1
            i32.add
            i32.store
            local.get 10
            i32.load8_u
            local.set 10
            br 1 (;@3;)
          end
          local.get 0
          call $__shgetc
          local.set 10
        end
        block  ;; label = @3
          local.get 10
          i32.const -33
          i32.and
          i32.const 88
          i32.ne
          br_if 0 (;@3;)
          local.get 0
          local.get 5
          local.get 4
          local.get 9
          local.get 2
          call $hexfloat
          local.set 7
          br 2 (;@1;)
        end
        local.get 0
        i64.load offset=88
        i64.const 0
        i64.lt_s
        br_if 0 (;@2;)
        local.get 8
        local.get 8
        i32.load
        i32.const -1
        i32.add
        i32.store
      end
      i32.const 0
      local.set 13
      i32.const 0
      local.get 4
      local.get 5
      i32.add
      local.tee 14
      i32.sub
      local.set 15
      block  ;; label = @2
        block  ;; label = @3
          loop  ;; label = @4
            block  ;; label = @5
              local.get 1
              i32.const 48
              i32.eq
              br_if 0 (;@5;)
              local.get 1
              i32.const 46
              i32.eq
              br_if 2 (;@3;)
              i32.const 0
              local.set 16
              i64.const 0
              local.set 12
              br 3 (;@2;)
            end
            block  ;; label = @5
              local.get 0
              i32.load offset=4
              local.tee 1
              local.get 0
              i32.load offset=84
              i32.eq
              br_if 0 (;@5;)
              i32.const 1
              local.set 13
              local.get 8
              local.get 1
              i32.const 1
              i32.add
              i32.store
              local.get 1
              i32.load8_u
              local.set 1
              br 1 (;@4;)
            end
            i32.const 1
            local.set 13
            local.get 0
            call $__shgetc
            local.set 1
            br 0 (;@4;)
          end
        end
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.load offset=4
            local.tee 1
            local.get 0
            i32.load offset=84
            i32.eq
            br_if 0 (;@4;)
            local.get 8
            local.get 1
            i32.const 1
            i32.add
            i32.store
            local.get 1
            i32.load8_u
            local.set 1
            br 1 (;@3;)
          end
          local.get 0
          call $__shgetc
          local.set 1
        end
        block  ;; label = @3
          local.get 1
          i32.const 48
          i32.eq
          br_if 0 (;@3;)
          i32.const 1
          local.set 16
          i64.const 0
          local.set 12
          br 1 (;@2;)
        end
        i64.const 0
        local.set 12
        loop  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              i32.load offset=4
              local.tee 1
              local.get 0
              i32.load offset=84
              i32.eq
              br_if 0 (;@5;)
              local.get 8
              local.get 1
              i32.const 1
              i32.add
              i32.store
              local.get 1
              i32.load8_u
              local.set 1
              br 1 (;@4;)
            end
            local.get 0
            call $__shgetc
            local.set 1
          end
          local.get 12
          i64.const -1
          i64.add
          local.set 12
          local.get 1
          i32.const 48
          i32.eq
          br_if 0 (;@3;)
        end
        i32.const 1
        local.set 13
        i32.const 1
        local.set 16
      end
      i32.const 0
      local.set 17
      local.get 3
      i32.const 0
      i32.store
      local.get 1
      i32.const -48
      i32.add
      local.set 11
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 1
                    i32.const 46
                    i32.eq
                    local.tee 10
                    br_if 0 (;@8;)
                    i64.const 0
                    local.set 18
                    local.get 11
                    i32.const 9
                    i32.le_u
                    br_if 0 (;@8;)
                    i32.const 0
                    local.set 19
                    i32.const 0
                    local.set 20
                    br 1 (;@7;)
                  end
                  i64.const 0
                  local.set 18
                  i32.const 0
                  local.set 20
                  i32.const 0
                  local.set 19
                  i32.const 0
                  local.set 17
                  loop  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 10
                        i32.const 1
                        i32.and
                        i32.eqz
                        br_if 0 (;@10;)
                        block  ;; label = @11
                          local.get 16
                          br_if 0 (;@11;)
                          local.get 18
                          local.set 12
                          i32.const 1
                          local.set 16
                          br 2 (;@9;)
                        end
                        local.get 13
                        i32.eqz
                        local.set 10
                        br 4 (;@6;)
                      end
                      local.get 18
                      i64.const 1
                      i64.add
                      local.set 18
                      block  ;; label = @10
                        local.get 19
                        i32.const 124
                        i32.gt_s
                        br_if 0 (;@10;)
                        local.get 1
                        i32.const 48
                        i32.eq
                        local.set 13
                        local.get 18
                        i32.wrap_i64
                        local.set 21
                        local.get 3
                        local.get 19
                        i32.const 2
                        i32.shl
                        i32.add
                        local.set 10
                        block  ;; label = @11
                          local.get 20
                          i32.eqz
                          br_if 0 (;@11;)
                          local.get 1
                          local.get 10
                          i32.load
                          i32.const 10
                          i32.mul
                          i32.add
                          i32.const -48
                          i32.add
                          local.set 11
                        end
                        local.get 17
                        local.get 21
                        local.get 13
                        select
                        local.set 17
                        local.get 10
                        local.get 11
                        i32.store
                        i32.const 1
                        local.set 13
                        i32.const 0
                        local.get 20
                        i32.const 1
                        i32.add
                        local.tee 1
                        local.get 1
                        i32.const 9
                        i32.eq
                        local.tee 1
                        select
                        local.set 20
                        local.get 19
                        local.get 1
                        i32.add
                        local.set 19
                        br 1 (;@9;)
                      end
                      local.get 1
                      i32.const 48
                      i32.eq
                      br_if 0 (;@9;)
                      local.get 3
                      local.get 3
                      i32.load offset=496
                      i32.const 1
                      i32.or
                      i32.store offset=496
                      i32.const 1116
                      local.set 17
                    end
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 0
                        i32.load offset=4
                        local.tee 1
                        local.get 0
                        i32.load offset=84
                        i32.eq
                        br_if 0 (;@10;)
                        local.get 8
                        local.get 1
                        i32.const 1
                        i32.add
                        i32.store
                        local.get 1
                        i32.load8_u
                        local.set 1
                        br 1 (;@9;)
                      end
                      local.get 0
                      call $__shgetc
                      local.set 1
                    end
                    local.get 1
                    i32.const -48
                    i32.add
                    local.set 11
                    local.get 1
                    i32.const 46
                    i32.eq
                    local.tee 10
                    br_if 0 (;@8;)
                    local.get 11
                    i32.const 10
                    i32.lt_u
                    br_if 0 (;@8;)
                  end
                end
                local.get 12
                local.get 18
                local.get 16
                select
                local.set 12
                block  ;; label = @7
                  local.get 13
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 1
                  i32.const -33
                  i32.and
                  i32.const 69
                  i32.ne
                  br_if 0 (;@7;)
                  block  ;; label = @8
                    local.get 0
                    local.get 2
                    call $scanexp
                    local.tee 22
                    i64.const -9223372036854775808
                    i64.ne
                    br_if 0 (;@8;)
                    local.get 2
                    i32.eqz
                    br_if 5 (;@3;)
                    i64.const 0
                    local.set 22
                    local.get 0
                    i64.load offset=88
                    i64.const 0
                    i64.lt_s
                    br_if 0 (;@8;)
                    local.get 8
                    local.get 8
                    i32.load
                    i32.const -1
                    i32.add
                    i32.store
                  end
                  local.get 13
                  i32.eqz
                  br_if 3 (;@4;)
                  local.get 22
                  local.get 12
                  i64.add
                  local.set 12
                  br 5 (;@2;)
                end
                local.get 13
                i32.eqz
                local.set 10
                local.get 1
                i32.const 0
                i32.lt_s
                br_if 1 (;@5;)
              end
              local.get 0
              i64.load offset=88
              i64.const 0
              i64.lt_s
              br_if 0 (;@5;)
              local.get 8
              local.get 8
              i32.load
              i32.const -1
              i32.add
              i32.store
            end
            local.get 10
            i32.eqz
            br_if 2 (;@2;)
          end
          i32.const 0
          i32.const 28
          i32.store offset=5128
          local.get 0
          i64.const 0
          call $__shlim
          f64.const 0x0p+0 (;=0;)
          local.set 7
          br 2 (;@1;)
        end
        local.get 0
        i64.const 0
        call $__shlim
        f64.const 0x0p+0 (;=0;)
        local.set 7
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 3
        i32.load
        local.tee 0
        br_if 0 (;@2;)
        local.get 9
        f64.convert_i32_s
        f64.const 0x0p+0 (;=0;)
        f64.mul
        local.set 7
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 18
        i64.const 9
        i64.gt_s
        br_if 0 (;@2;)
        local.get 12
        local.get 18
        i64.ne
        br_if 0 (;@2;)
        local.get 6
        local.get 0
        local.get 5
        i32.shr_u
        i32.eqz
        i32.or
        i32.const 1
        i32.ne
        br_if 0 (;@2;)
        local.get 9
        f64.convert_i32_s
        local.get 0
        f64.convert_i32_u
        f64.mul
        local.set 7
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 12
        local.get 4
        i32.const -2
        i32.div_s
        i64.extend_i32_u
        i64.le_s
        br_if 0 (;@2;)
        i32.const 0
        i32.const 68
        i32.store offset=5128
        local.get 9
        f64.convert_i32_s
        f64.const 0x1.fffffffffffffp+1023 (;=1.79769e+308;)
        f64.mul
        f64.const 0x1.fffffffffffffp+1023 (;=1.79769e+308;)
        f64.mul
        local.set 7
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 12
        local.get 4
        i32.const -106
        i32.add
        i64.extend_i32_s
        i64.ge_s
        br_if 0 (;@2;)
        i32.const 0
        i32.const 68
        i32.store offset=5128
        local.get 9
        f64.convert_i32_s
        f64.const 0x1p-1022 (;=2.22507e-308;)
        f64.mul
        f64.const 0x1p-1022 (;=2.22507e-308;)
        f64.mul
        local.set 7
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 20
        i32.eqz
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 20
          i32.const 8
          i32.gt_s
          br_if 0 (;@3;)
          local.get 3
          local.get 19
          i32.const 2
          i32.shl
          i32.add
          local.tee 10
          i32.load
          local.set 0
          block  ;; label = @4
            block  ;; label = @5
              i32.const 1
              local.get 20
              i32.sub
              i32.const 7
              i32.and
              local.tee 8
              br_if 0 (;@5;)
              local.get 20
              local.set 1
              br 1 (;@4;)
            end
            local.get 20
            local.set 1
            loop  ;; label = @5
              local.get 1
              i32.const 1
              i32.add
              local.set 1
              local.get 0
              i32.const 10
              i32.mul
              local.set 0
              local.get 8
              i32.const -1
              i32.add
              local.tee 8
              br_if 0 (;@5;)
            end
          end
          block  ;; label = @4
            local.get 20
            i32.const -2
            i32.add
            i32.const 7
            i32.lt_u
            br_if 0 (;@4;)
            local.get 1
            i32.const -9
            i32.add
            local.set 1
            loop  ;; label = @5
              local.get 0
              i32.const 100000000
              i32.mul
              local.set 0
              local.get 1
              i32.const 8
              i32.add
              local.tee 1
              br_if 0 (;@5;)
            end
          end
          local.get 10
          local.get 0
          i32.store
        end
        local.get 19
        i32.const 1
        i32.add
        local.set 19
      end
      local.get 12
      i32.wrap_i64
      local.set 16
      block  ;; label = @2
        local.get 17
        i32.const 9
        i32.ge_s
        br_if 0 (;@2;)
        local.get 17
        local.get 16
        i32.gt_s
        br_if 0 (;@2;)
        local.get 16
        i32.const 17
        i32.gt_s
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 16
          i32.const 9
          i32.ne
          br_if 0 (;@3;)
          local.get 9
          f64.convert_i32_s
          local.get 3
          i32.load
          f64.convert_i32_u
          f64.mul
          local.set 7
          br 2 (;@1;)
        end
        block  ;; label = @3
          local.get 16
          i32.const 8
          i32.gt_s
          br_if 0 (;@3;)
          local.get 9
          f64.convert_i32_s
          local.get 3
          i32.load
          f64.convert_i32_u
          f64.mul
          i32.const 8
          local.get 16
          i32.sub
          i32.const 2
          i32.shl
          i32.const 3984
          i32.add
          i32.load
          f64.convert_i32_s
          f64.div
          local.set 7
          br 2 (;@1;)
        end
        local.get 3
        i32.load
        local.set 0
        block  ;; label = @3
          local.get 5
          local.get 16
          i32.const -3
          i32.mul
          i32.add
          i32.const 27
          i32.add
          local.tee 1
          i32.const 30
          i32.gt_s
          br_if 0 (;@3;)
          local.get 0
          local.get 1
          i32.shr_u
          br_if 1 (;@2;)
        end
        local.get 9
        f64.convert_i32_s
        local.get 0
        f64.convert_i32_u
        f64.mul
        local.get 16
        i32.const 2
        i32.shl
        i32.const 3944
        i32.add
        i32.load
        f64.convert_i32_s
        f64.mul
        local.set 7
        br 1 (;@1;)
      end
      local.get 19
      i32.const 1
      i32.add
      local.set 1
      local.get 19
      i32.const 2
      i32.shl
      local.get 3
      i32.add
      i32.const 4
      i32.add
      local.set 0
      loop  ;; label = @2
        local.get 1
        i32.const -1
        i32.add
        local.set 1
        local.get 0
        i32.const -8
        i32.add
        local.set 8
        local.get 0
        i32.const -4
        i32.add
        local.tee 11
        local.set 0
        local.get 8
        i32.load
        i32.eqz
        br_if 0 (;@2;)
      end
      i32.const 0
      local.set 19
      block  ;; label = @2
        block  ;; label = @3
          local.get 16
          i32.const 9
          i32.rem_s
          local.tee 0
          br_if 0 (;@3;)
          i32.const 0
          local.set 8
          br 1 (;@2;)
        end
        i32.const 0
        local.set 8
        local.get 0
        i32.const 9
        i32.add
        local.get 0
        local.get 16
        i32.const 0
        i32.lt_s
        select
        local.set 21
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            br_if 0 (;@4;)
            i32.const 0
            local.set 1
            br 1 (;@3;)
          end
          i32.const 1000000000
          i32.const 8
          local.get 21
          i32.sub
          i32.const 2
          i32.shl
          i32.const 3984
          i32.add
          i32.load
          local.tee 6
          i32.div_s
          local.set 17
          i32.const 0
          local.set 13
          local.get 3
          local.set 0
          i32.const 0
          local.set 10
          i32.const 0
          local.set 8
          loop  ;; label = @4
            local.get 0
            local.get 0
            i32.load
            local.tee 20
            local.get 6
            i32.div_u
            local.tee 2
            local.get 13
            i32.add
            local.tee 13
            i32.store
            local.get 8
            i32.const 1
            i32.add
            i32.const 127
            i32.and
            local.get 8
            local.get 10
            local.get 8
            i32.eq
            local.get 13
            i32.eqz
            i32.and
            local.tee 13
            select
            local.set 8
            local.get 16
            i32.const -9
            i32.add
            local.get 16
            local.get 13
            select
            local.set 16
            local.get 0
            i32.const 4
            i32.add
            local.set 0
            local.get 20
            local.get 2
            local.get 6
            i32.mul
            i32.sub
            local.get 17
            i32.mul
            local.set 13
            local.get 1
            local.get 10
            i32.const 1
            i32.add
            local.tee 10
            i32.ne
            br_if 0 (;@4;)
          end
          local.get 13
          i32.eqz
          br_if 0 (;@3;)
          local.get 11
          local.get 13
          i32.store
          local.get 1
          i32.const 1
          i32.add
          local.set 1
        end
        local.get 16
        local.get 21
        i32.sub
        i32.const 9
        i32.add
        local.set 16
      end
      loop  ;; label = @2
        local.get 3
        local.get 8
        i32.const 2
        i32.shl
        i32.add
        local.set 6
        block  ;; label = @3
          loop  ;; label = @4
            block  ;; label = @5
              local.get 16
              i32.const 18
              i32.lt_s
              br_if 0 (;@5;)
              local.get 16
              i32.const 18
              i32.ne
              br_if 2 (;@3;)
              local.get 6
              i32.load
              i32.const 9007198
              i32.gt_u
              br_if 2 (;@3;)
            end
            local.get 1
            i32.const 127
            i32.add
            local.set 11
            i32.const 0
            local.set 10
            loop  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 3
                  local.get 11
                  i32.const 127
                  i32.and
                  local.tee 0
                  i32.const 2
                  i32.shl
                  i32.add
                  local.tee 11
                  i64.load32_u
                  i64.const 29
                  i64.shl
                  local.get 10
                  i64.extend_i32_u
                  i64.add
                  local.tee 12
                  i64.const 1000000001
                  i64.ge_u
                  br_if 0 (;@7;)
                  i32.const 0
                  local.set 10
                  br 1 (;@6;)
                end
                local.get 12
                local.get 12
                i64.const 1000000000
                i64.div_u
                local.tee 18
                i64.const 1000000000
                i64.mul
                i64.sub
                local.set 12
                local.get 18
                i32.wrap_i64
                local.set 10
              end
              local.get 11
              local.get 12
              i32.wrap_i64
              local.tee 13
              i32.store
              local.get 1
              local.get 1
              local.get 1
              local.get 0
              local.get 13
              select
              local.get 0
              local.get 8
              i32.eq
              select
              local.get 0
              local.get 1
              i32.const -1
              i32.add
              i32.const 127
              i32.and
              i32.ne
              select
              local.set 1
              local.get 0
              i32.const -1
              i32.add
              local.set 11
              local.get 0
              local.get 8
              i32.ne
              br_if 0 (;@5;)
            end
            local.get 19
            i32.const -29
            i32.add
            local.set 19
            local.get 10
            i32.eqz
            br_if 0 (;@4;)
          end
          block  ;; label = @4
            local.get 8
            i32.const -1
            i32.add
            i32.const 127
            i32.and
            local.tee 8
            local.get 1
            i32.ne
            br_if 0 (;@4;)
            local.get 3
            local.get 1
            i32.const 126
            i32.add
            i32.const 127
            i32.and
            i32.const 2
            i32.shl
            i32.add
            local.tee 0
            local.get 0
            i32.load
            local.get 3
            local.get 1
            i32.const -1
            i32.add
            i32.const 127
            i32.and
            local.tee 0
            i32.const 2
            i32.shl
            i32.add
            i32.load
            i32.or
            i32.store
            local.get 0
            local.set 1
          end
          local.get 16
          i32.const 9
          i32.add
          local.set 16
          local.get 3
          local.get 8
          i32.const 2
          i32.shl
          i32.add
          local.get 10
          i32.store
          br 1 (;@2;)
        end
      end
      block  ;; label = @2
        loop  ;; label = @3
          local.get 1
          i32.const 1
          i32.add
          i32.const 127
          i32.and
          local.set 17
          local.get 3
          local.get 1
          i32.const -1
          i32.add
          i32.const 127
          i32.and
          i32.const 2
          i32.shl
          i32.add
          local.set 2
          loop  ;; label = @4
            i32.const 9
            i32.const 1
            local.get 16
            i32.const 27
            i32.gt_s
            select
            local.set 10
            block  ;; label = @5
              loop  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 8
                    local.tee 0
                    i32.const 127
                    i32.and
                    local.tee 8
                    local.get 1
                    i32.ne
                    br_if 0 (;@8;)
                    local.get 16
                    i32.const 18
                    i32.eq
                    br_if 3 (;@5;)
                    br 1 (;@7;)
                  end
                  block  ;; label = @8
                    local.get 3
                    local.get 8
                    i32.const 2
                    i32.shl
                    i32.add
                    i32.load
                    local.tee 8
                    i32.const 9007199
                    i32.lt_u
                    br_if 0 (;@8;)
                    local.get 8
                    i32.const 9007199
                    i32.ne
                    br_if 1 (;@7;)
                    local.get 0
                    i32.const 1
                    i32.add
                    i32.const 127
                    i32.and
                    local.tee 11
                    local.get 1
                    i32.eq
                    br_if 0 (;@8;)
                    local.get 3
                    local.get 11
                    i32.const 2
                    i32.shl
                    i32.add
                    i32.load
                    i32.const 254740991
                    i32.gt_u
                    br_if 1 (;@7;)
                    local.get 16
                    i32.const 18
                    i32.ne
                    br_if 1 (;@7;)
                    i32.const 9007199
                    local.set 8
                    br 6 (;@2;)
                  end
                  local.get 16
                  i32.const 18
                  i32.eq
                  br_if 5 (;@2;)
                end
                local.get 19
                local.get 10
                i32.add
                local.set 19
                local.get 1
                local.set 8
                local.get 0
                local.get 1
                i32.eq
                br_if 0 (;@6;)
              end
              i32.const 1000000000
              local.get 10
              i32.shr_u
              local.set 6
              i32.const -1
              local.get 10
              i32.shl
              i32.const -1
              i32.xor
              local.set 20
              i32.const 0
              local.set 11
              local.get 0
              local.set 8
              loop  ;; label = @6
                local.get 3
                local.get 0
                i32.const 2
                i32.shl
                i32.add
                local.tee 13
                local.get 13
                i32.load
                local.tee 13
                local.get 10
                i32.shr_u
                local.get 11
                i32.add
                local.tee 11
                i32.store
                local.get 8
                i32.const 1
                i32.add
                i32.const 127
                i32.and
                local.get 8
                local.get 0
                local.get 8
                i32.eq
                local.get 11
                i32.eqz
                i32.and
                local.tee 11
                select
                local.set 8
                local.get 16
                i32.const -9
                i32.add
                local.get 16
                local.get 11
                select
                local.set 16
                local.get 13
                local.get 20
                i32.and
                local.get 6
                i32.mul
                local.set 11
                local.get 0
                i32.const 1
                i32.add
                i32.const 127
                i32.and
                local.tee 0
                local.get 1
                i32.ne
                br_if 0 (;@6;)
              end
              local.get 11
              i32.eqz
              br_if 1 (;@4;)
              block  ;; label = @6
                local.get 17
                local.get 8
                i32.eq
                br_if 0 (;@6;)
                local.get 3
                local.get 1
                i32.const 2
                i32.shl
                i32.add
                local.get 11
                i32.store
                local.get 17
                local.set 1
                br 3 (;@3;)
              end
              local.get 2
              local.get 2
              i32.load
              i32.const 1
              i32.or
              i32.store
              br 1 (;@4;)
            end
          end
        end
        local.get 1
        i32.const 1
        i32.add
        i32.const 127
        i32.and
        local.tee 10
        i32.const 2
        i32.shl
        local.get 3
        i32.add
        i32.const -4
        i32.add
        i32.const 0
        i32.store
        local.get 3
        local.get 1
        i32.const 2
        i32.shl
        i32.add
        i32.load
        local.set 8
        local.get 10
        local.set 1
      end
      local.get 8
      f64.convert_i32_u
      local.set 7
      block  ;; label = @2
        local.get 0
        i32.const 1
        i32.add
        i32.const 127
        i32.and
        local.tee 8
        local.get 1
        i32.ne
        br_if 0 (;@2;)
        local.get 0
        i32.const 2
        i32.add
        i32.const 127
        i32.and
        local.tee 1
        i32.const 2
        i32.shl
        local.get 3
        i32.add
        i32.const -4
        i32.add
        i32.const 0
        i32.store
      end
      local.get 7
      f64.const 0x1.dcd65p+29 (;=1e+09;)
      f64.mul
      local.get 3
      local.get 8
      i32.const 2
      i32.shl
      i32.add
      i32.load
      f64.convert_i32_u
      f64.add
      local.get 9
      f64.convert_i32_s
      local.tee 23
      f64.mul
      local.set 24
      f64.const 0x0p+0 (;=0;)
      local.set 7
      block  ;; label = @2
        block  ;; label = @3
          local.get 19
          local.get 4
          i32.sub
          i32.const 53
          i32.add
          local.tee 8
          i32.const 0
          local.get 8
          i32.const 0
          i32.gt_s
          select
          local.get 5
          local.get 8
          local.get 5
          i32.lt_s
          local.tee 11
          select
          local.tee 8
          i32.const 52
          i32.le_u
          br_if 0 (;@3;)
          f64.const 0x0p+0 (;=0;)
          local.set 25
          br 1 (;@2;)
        end
        f64.const 0x1p+0 (;=1;)
        i32.const 105
        local.get 8
        i32.sub
        call $scalbn
        local.get 24
        f64.copysign
        local.tee 25
        local.get 24
        local.get 24
        f64.const 0x1p+0 (;=1;)
        i32.const 53
        local.get 8
        i32.sub
        call $scalbn
        call $fmod
        local.tee 7
        f64.sub
        f64.add
        local.set 24
      end
      local.get 19
      i32.const 53
      i32.add
      local.set 10
      block  ;; label = @2
        local.get 0
        i32.const 2
        i32.add
        i32.const 127
        i32.and
        local.tee 13
        local.get 1
        i32.eq
        br_if 0 (;@2;)
        block  ;; label = @3
          block  ;; label = @4
            local.get 3
            local.get 13
            i32.const 2
            i32.shl
            i32.add
            i32.load
            local.tee 13
            i32.const 499999999
            i32.gt_u
            br_if 0 (;@4;)
            block  ;; label = @5
              local.get 13
              br_if 0 (;@5;)
              local.get 0
              i32.const 3
              i32.add
              i32.const 127
              i32.and
              local.get 1
              i32.eq
              br_if 2 (;@3;)
            end
            local.get 23
            f64.const 0x1p-2 (;=0.25;)
            f64.mul
            local.get 7
            f64.add
            local.set 7
            br 1 (;@3;)
          end
          block  ;; label = @4
            local.get 13
            i32.const 500000000
            i32.eq
            br_if 0 (;@4;)
            local.get 23
            f64.const 0x1.8p-1 (;=0.75;)
            f64.mul
            local.get 7
            f64.add
            local.set 7
            br 1 (;@3;)
          end
          block  ;; label = @4
            local.get 0
            i32.const 3
            i32.add
            i32.const 127
            i32.and
            local.get 1
            i32.ne
            br_if 0 (;@4;)
            local.get 23
            f64.const 0x1p-1 (;=0.5;)
            f64.mul
            local.get 7
            f64.add
            local.set 7
            br 1 (;@3;)
          end
          local.get 23
          f64.const 0x1.8p-1 (;=0.75;)
          f64.mul
          local.get 7
          f64.add
          local.set 7
        end
        local.get 7
        local.get 7
        local.get 7
        f64.const 0x1p+0 (;=1;)
        f64.add
        local.get 7
        f64.const 0x1p+0 (;=1;)
        call $fmod
        f64.const 0x0p+0 (;=0;)
        f64.ne
        select
        local.get 8
        i32.const 51
        i32.gt_u
        select
        local.set 7
      end
      local.get 24
      local.get 7
      f64.add
      local.get 25
      f64.sub
      local.set 24
      block  ;; label = @2
        block  ;; label = @3
          local.get 10
          i32.const 2147483647
          i32.and
          i32.const -2
          local.get 14
          i32.sub
          i32.gt_s
          br_if 0 (;@3;)
          local.get 19
          local.set 0
          br 1 (;@2;)
        end
        local.get 24
        f64.const 0x1p-1 (;=0.5;)
        f64.mul
        local.get 24
        local.get 24
        f64.abs
        f64.const 0x1p+53 (;=9.0072e+15;)
        f64.ge
        local.tee 1
        select
        local.set 24
        block  ;; label = @3
          local.get 1
          local.get 19
          i32.add
          local.tee 0
          i32.const 50
          i32.add
          local.get 15
          i32.gt_s
          br_if 0 (;@3;)
          local.get 11
          local.get 4
          local.get 8
          i32.add
          i32.const -53
          i32.add
          local.get 19
          i32.ne
          i32.and
          local.get 11
          local.get 1
          select
          local.get 7
          f64.const 0x0p+0 (;=0;)
          f64.ne
          i32.and
          i32.eqz
          br_if 1 (;@2;)
        end
        i32.const 0
        i32.const 68
        i32.store offset=5128
      end
      local.get 24
      local.get 0
      call $scalbn
      local.set 7
    end
    local.get 3
    i32.const 512
    i32.add
    global.set $__stack_pointer
    local.get 7)
  (func $hexfloat (type 22) (param i32 i32 i32 i32 i32) (result f64)
    (local i32 i32 i64 i32 i64 f64 f64 i32 i32 i32 i32 i64 i64 f64)
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load offset=4
        local.tee 5
        local.get 0
        i32.load offset=84
        i32.eq
        br_if 0 (;@2;)
        local.get 0
        local.get 5
        i32.const 1
        i32.add
        i32.store offset=4
        local.get 5
        i32.load8_u
        local.set 5
        br 1 (;@1;)
      end
      local.get 0
      call $__shgetc
      local.set 5
    end
    i32.const 0
    local.set 6
    block  ;; label = @1
      block  ;; label = @2
        loop  ;; label = @3
          block  ;; label = @4
            local.get 5
            i32.const 48
            i32.eq
            br_if 0 (;@4;)
            local.get 5
            i32.const 46
            i32.eq
            br_if 2 (;@2;)
            i64.const 0
            local.set 7
            i32.const 0
            local.set 8
            br 3 (;@1;)
          end
          block  ;; label = @4
            local.get 0
            i32.load offset=4
            local.tee 5
            local.get 0
            i32.load offset=84
            i32.eq
            br_if 0 (;@4;)
            i32.const 1
            local.set 6
            local.get 0
            local.get 5
            i32.const 1
            i32.add
            i32.store offset=4
            local.get 5
            i32.load8_u
            local.set 5
            br 1 (;@3;)
          end
          i32.const 1
          local.set 6
          local.get 0
          call $__shgetc
          local.set 5
          br 0 (;@3;)
        end
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.load offset=4
          local.tee 5
          local.get 0
          i32.load offset=84
          i32.eq
          br_if 0 (;@3;)
          local.get 0
          local.get 5
          i32.const 1
          i32.add
          i32.store offset=4
          local.get 5
          i32.load8_u
          local.set 5
          br 1 (;@2;)
        end
        local.get 0
        call $__shgetc
        local.set 5
      end
      i64.const 0
      local.set 7
      block  ;; label = @2
        local.get 5
        i32.const 48
        i32.eq
        br_if 0 (;@2;)
        i32.const 1
        local.set 8
        br 1 (;@1;)
      end
      loop  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.load offset=4
            local.tee 5
            local.get 0
            i32.load offset=84
            i32.eq
            br_if 0 (;@4;)
            local.get 0
            local.get 5
            i32.const 1
            i32.add
            i32.store offset=4
            local.get 5
            i32.load8_u
            local.set 5
            br 1 (;@3;)
          end
          local.get 0
          call $__shgetc
          local.set 5
        end
        local.get 7
        i64.const -1
        i64.add
        local.set 7
        local.get 5
        i32.const 48
        i32.eq
        br_if 0 (;@2;)
      end
      i32.const 1
      local.set 8
      i32.const 1
      local.set 6
    end
    i64.const 0
    local.set 9
    f64.const 0x1p+0 (;=1;)
    local.set 10
    f64.const 0x0p+0 (;=0;)
    local.set 11
    i32.const 0
    local.set 12
    i32.const 0
    local.set 13
    block  ;; label = @1
      loop  ;; label = @2
        local.get 5
        i32.const 32
        i32.or
        local.set 14
        block  ;; label = @3
          block  ;; label = @4
            local.get 5
            i32.const -48
            i32.add
            local.tee 15
            i32.const 10
            i32.lt_u
            br_if 0 (;@4;)
            block  ;; label = @5
              local.get 14
              i32.const -97
              i32.add
              i32.const 6
              i32.lt_u
              br_if 0 (;@5;)
              local.get 5
              i32.const 46
              i32.ne
              br_if 4 (;@1;)
            end
            local.get 5
            i32.const 46
            i32.ne
            br_if 0 (;@4;)
            local.get 8
            br_if 3 (;@1;)
            i32.const 1
            local.set 8
            local.get 9
            local.set 7
            br 1 (;@3;)
          end
          local.get 14
          i32.const -87
          i32.add
          local.get 15
          local.get 5
          i32.const 57
          i32.gt_s
          select
          local.set 5
          block  ;; label = @4
            block  ;; label = @5
              local.get 9
              i64.const 7
              i64.gt_s
              br_if 0 (;@5;)
              local.get 5
              local.get 12
              i32.const 4
              i32.shl
              i32.add
              local.set 12
              br 1 (;@4;)
            end
            block  ;; label = @5
              local.get 9
              i64.const 13
              i64.gt_u
              br_if 0 (;@5;)
              local.get 5
              f64.convert_i32_s
              local.get 10
              f64.const 0x1p-4 (;=0.0625;)
              f64.mul
              local.tee 10
              f64.mul
              local.get 11
              f64.add
              local.set 11
              br 1 (;@4;)
            end
            local.get 11
            local.get 10
            f64.const 0x1p-1 (;=0.5;)
            f64.mul
            local.get 11
            f64.add
            local.get 5
            i32.eqz
            local.get 13
            i32.const 0
            i32.ne
            i32.or
            local.tee 5
            select
            local.set 11
            local.get 13
            i32.const 1
            local.get 5
            select
            local.set 13
          end
          local.get 9
          i64.const 1
          i64.add
          local.set 9
          i32.const 1
          local.set 6
        end
        block  ;; label = @3
          local.get 0
          i32.load offset=4
          local.tee 5
          local.get 0
          i32.load offset=84
          i32.eq
          br_if 0 (;@3;)
          local.get 0
          local.get 5
          i32.const 1
          i32.add
          i32.store offset=4
          local.get 5
          i32.load8_u
          local.set 5
          br 1 (;@2;)
        end
        local.get 0
        call $__shgetc
        local.set 5
        br 0 (;@2;)
      end
    end
    block  ;; label = @1
      local.get 6
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            i64.load offset=88
            i64.const 0
            i64.lt_s
            br_if 0 (;@4;)
            local.get 0
            local.get 0
            i32.load offset=4
            local.tee 5
            i32.const -1
            i32.add
            i32.store offset=4
            local.get 4
            i32.eqz
            br_if 1 (;@3;)
            local.get 0
            local.get 5
            i32.const -2
            i32.add
            i32.store offset=4
            local.get 8
            i32.eqz
            br_if 2 (;@2;)
            local.get 0
            local.get 5
            i32.const -3
            i32.add
            i32.store offset=4
            br 2 (;@2;)
          end
          local.get 4
          br_if 1 (;@2;)
        end
        local.get 0
        i64.const 0
        call $__shlim
      end
      local.get 3
      f64.convert_i32_s
      f64.const 0x0p+0 (;=0;)
      f64.mul
      return
    end
    block  ;; label = @1
      local.get 9
      i64.const 7
      i64.gt_s
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          i64.const 0
          local.get 9
          i64.sub
          i64.const 7
          i64.and
          local.tee 16
          i64.eqz
          i32.eqz
          br_if 0 (;@3;)
          local.get 9
          local.set 17
          br 1 (;@2;)
        end
        local.get 9
        local.set 17
        loop  ;; label = @3
          local.get 17
          i64.const 1
          i64.add
          local.set 17
          local.get 12
          i32.const 4
          i32.shl
          local.set 12
          local.get 16
          i64.const -1
          i64.add
          local.tee 16
          i64.const 0
          i64.ne
          br_if 0 (;@3;)
        end
      end
      local.get 9
      i64.const -1
      i64.add
      i64.const 7
      i64.lt_u
      br_if 0 (;@1;)
      local.get 17
      i64.const -8
      i64.add
      local.set 17
      loop  ;; label = @2
        local.get 17
        i64.const 8
        i64.add
        local.tee 17
        i64.const 0
        i64.ne
        br_if 0 (;@2;)
      end
      i32.const 0
      local.set 12
    end
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 5
            i32.const -33
            i32.and
            i32.const 80
            i32.ne
            br_if 0 (;@4;)
            local.get 0
            local.get 4
            call $scanexp
            local.tee 17
            i64.const -9223372036854775808
            i64.ne
            br_if 3 (;@1;)
            block  ;; label = @5
              local.get 4
              i32.eqz
              br_if 0 (;@5;)
              local.get 0
              i64.load offset=88
              i64.const -1
              i64.gt_s
              br_if 2 (;@3;)
              br 3 (;@2;)
            end
            local.get 0
            i64.const 0
            call $__shlim
            f64.const 0x0p+0 (;=0;)
            return
          end
          i64.const 0
          local.set 17
          local.get 0
          i64.load offset=88
          i64.const 0
          i64.lt_s
          br_if 2 (;@1;)
        end
        local.get 0
        local.get 0
        i32.load offset=4
        i32.const -1
        i32.add
        i32.store offset=4
      end
      i64.const 0
      local.set 17
    end
    block  ;; label = @1
      local.get 12
      br_if 0 (;@1;)
      local.get 3
      f64.convert_i32_s
      f64.const 0x0p+0 (;=0;)
      f64.mul
      return
    end
    block  ;; label = @1
      local.get 7
      local.get 9
      local.get 8
      select
      i64.const 2
      i64.shl
      local.get 17
      i64.add
      i64.const -32
      i64.add
      local.tee 9
      i32.const 0
      local.get 2
      i32.sub
      i64.extend_i32_u
      i64.le_s
      br_if 0 (;@1;)
      i32.const 0
      i32.const 68
      i32.store offset=5128
      local.get 3
      f64.convert_i32_s
      f64.const 0x1.fffffffffffffp+1023 (;=1.79769e+308;)
      f64.mul
      f64.const 0x1.fffffffffffffp+1023 (;=1.79769e+308;)
      f64.mul
      return
    end
    block  ;; label = @1
      local.get 9
      local.get 2
      i32.const -106
      i32.add
      i64.extend_i32_s
      i64.lt_s
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 12
        i32.const 0
        i32.lt_s
        br_if 0 (;@2;)
        loop  ;; label = @3
          local.get 11
          local.get 11
          f64.const -0x1p+0 (;=-1;)
          f64.add
          local.get 11
          local.get 11
          f64.const 0x1p-1 (;=0.5;)
          f64.ge
          local.tee 5
          select
          f64.add
          local.set 11
          local.get 9
          i64.const -1
          i64.add
          local.set 9
          local.get 5
          local.get 12
          i32.const 1
          i32.shl
          i32.or
          local.tee 12
          i32.const -1
          i32.gt_s
          br_if 0 (;@3;)
        end
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 9
          local.get 2
          i64.extend_i32_s
          i64.sub
          i64.const 32
          i64.add
          local.tee 7
          i32.wrap_i64
          local.tee 5
          i32.const 0
          local.get 5
          i32.const 0
          i32.gt_s
          select
          local.get 1
          local.get 7
          local.get 1
          i64.extend_i32_u
          i64.lt_s
          select
          local.tee 5
          i32.const 53
          i32.lt_s
          br_if 0 (;@3;)
          local.get 3
          f64.convert_i32_s
          local.set 10
          f64.const 0x0p+0 (;=0;)
          local.set 18
          br 1 (;@2;)
        end
        f64.const 0x1p+0 (;=1;)
        i32.const 84
        local.get 5
        i32.sub
        call $scalbn
        local.get 3
        f64.convert_i32_s
        local.tee 10
        f64.copysign
        local.set 18
      end
      block  ;; label = @2
        local.get 10
        f64.const 0x0p+0 (;=0;)
        local.get 11
        local.get 5
        i32.const 32
        i32.lt_s
        local.get 11
        f64.const 0x0p+0 (;=0;)
        f64.ne
        i32.and
        local.get 12
        i32.const 1
        i32.and
        i32.eqz
        i32.and
        local.tee 5
        select
        f64.mul
        local.get 10
        local.get 12
        local.get 5
        i32.add
        f64.convert_i32_u
        f64.mul
        local.get 18
        f64.add
        f64.add
        local.get 18
        f64.sub
        local.tee 11
        f64.const 0x0p+0 (;=0;)
        f64.ne
        br_if 0 (;@2;)
        i32.const 0
        i32.const 68
        i32.store offset=5128
      end
      local.get 11
      local.get 9
      i32.wrap_i64
      call $scalbn
      return
    end
    i32.const 0
    i32.const 68
    i32.store offset=5128
    local.get 3
    f64.convert_i32_s
    f64.const 0x1p-1022 (;=2.22507e-308;)
    f64.mul
    f64.const 0x1p-1022 (;=2.22507e-308;)
    f64.mul)
  (func $scanexp (type 23) (param i32 i32) (result i64)
    (local i32 i32 i32 i32 i64)
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load offset=4
        local.tee 2
        local.get 0
        i32.load offset=84
        i32.eq
        br_if 0 (;@2;)
        local.get 0
        local.get 2
        i32.const 1
        i32.add
        i32.store offset=4
        local.get 2
        i32.load8_u
        local.set 3
        br 1 (;@1;)
      end
      local.get 0
      call $__shgetc
      local.set 3
    end
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 3
              i32.const -43
              i32.add
              br_table 0 (;@5;) 1 (;@4;) 0 (;@5;) 1 (;@4;)
            end
            block  ;; label = @5
              block  ;; label = @6
                local.get 0
                i32.load offset=4
                local.tee 2
                local.get 0
                i32.load offset=84
                i32.eq
                br_if 0 (;@6;)
                local.get 0
                local.get 2
                i32.const 1
                i32.add
                i32.store offset=4
                local.get 2
                i32.load8_u
                local.set 2
                br 1 (;@5;)
              end
              local.get 0
              call $__shgetc
              local.set 2
            end
            local.get 3
            i32.const 45
            i32.eq
            local.set 4
            local.get 2
            i32.const -58
            i32.add
            local.set 5
            local.get 1
            i32.eqz
            br_if 1 (;@3;)
            local.get 5
            i32.const -11
            i32.gt_u
            br_if 1 (;@3;)
            local.get 0
            i64.load offset=88
            i64.const 0
            i64.lt_s
            br_if 2 (;@2;)
            local.get 0
            local.get 0
            i32.load offset=4
            i32.const -1
            i32.add
            i32.store offset=4
            br 2 (;@2;)
          end
          local.get 3
          i32.const -58
          i32.add
          local.set 5
          i32.const 0
          local.set 4
          local.get 3
          local.set 2
        end
        local.get 5
        i32.const -10
        i32.lt_u
        br_if 0 (;@2;)
        i64.const 0
        local.set 6
        block  ;; label = @3
          local.get 2
          i32.const -48
          i32.add
          local.tee 5
          i32.const 9
          i32.gt_u
          br_if 0 (;@3;)
          i32.const 0
          local.set 3
          loop  ;; label = @4
            local.get 2
            local.get 3
            i32.const 10
            i32.mul
            i32.add
            local.set 3
            block  ;; label = @5
              block  ;; label = @6
                local.get 0
                i32.load offset=4
                local.tee 2
                local.get 0
                i32.load offset=84
                i32.eq
                br_if 0 (;@6;)
                local.get 0
                local.get 2
                i32.const 1
                i32.add
                i32.store offset=4
                local.get 2
                i32.load8_u
                local.set 2
                br 1 (;@5;)
              end
              local.get 0
              call $__shgetc
              local.set 2
            end
            local.get 3
            i32.const -48
            i32.add
            local.set 3
            block  ;; label = @5
              local.get 2
              i32.const -48
              i32.add
              local.tee 5
              i32.const 9
              i32.gt_u
              br_if 0 (;@5;)
              local.get 3
              i32.const 214748364
              i32.lt_s
              br_if 1 (;@4;)
            end
          end
          local.get 3
          i64.extend_i32_s
          local.set 6
        end
        block  ;; label = @3
          local.get 5
          i32.const 9
          i32.gt_u
          br_if 0 (;@3;)
          loop  ;; label = @4
            local.get 2
            i64.extend_i32_u
            local.get 6
            i64.const 10
            i64.mul
            i64.add
            local.set 6
            block  ;; label = @5
              block  ;; label = @6
                local.get 0
                i32.load offset=4
                local.tee 2
                local.get 0
                i32.load offset=84
                i32.eq
                br_if 0 (;@6;)
                local.get 0
                local.get 2
                i32.const 1
                i32.add
                i32.store offset=4
                local.get 2
                i32.load8_u
                local.set 2
                br 1 (;@5;)
              end
              local.get 0
              call $__shgetc
              local.set 2
            end
            local.get 6
            i64.const -48
            i64.add
            local.set 6
            local.get 2
            i32.const -48
            i32.add
            local.tee 5
            i32.const 9
            i32.gt_u
            br_if 1 (;@3;)
            local.get 6
            i64.const 92233720368547758
            i64.lt_s
            br_if 0 (;@4;)
          end
        end
        block  ;; label = @3
          local.get 5
          i32.const 9
          i32.gt_u
          br_if 0 (;@3;)
          loop  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 0
                i32.load offset=4
                local.tee 2
                local.get 0
                i32.load offset=84
                i32.eq
                br_if 0 (;@6;)
                local.get 0
                local.get 2
                i32.const 1
                i32.add
                i32.store offset=4
                local.get 2
                i32.load8_u
                local.set 2
                br 1 (;@5;)
              end
              local.get 0
              call $__shgetc
              local.set 2
            end
            local.get 2
            i32.const -48
            i32.add
            i32.const 10
            i32.lt_u
            br_if 0 (;@4;)
          end
        end
        block  ;; label = @3
          local.get 0
          i64.load offset=88
          i64.const 0
          i64.lt_s
          br_if 0 (;@3;)
          local.get 0
          local.get 0
          i32.load offset=4
          i32.const -1
          i32.add
          i32.store offset=4
        end
        i64.const 0
        local.get 6
        i64.sub
        local.get 6
        local.get 4
        select
        local.set 6
        br 1 (;@1;)
      end
      i64.const -9223372036854775808
      local.set 6
      local.get 0
      i64.load offset=88
      i64.const 0
      i64.lt_s
      br_if 0 (;@1;)
      local.get 0
      local.get 0
      i32.load offset=4
      i32.const -1
      i32.add
      i32.store offset=4
      i64.const -9223372036854775808
      return
    end
    local.get 6)
  (func $vfscanf (type 1) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i64 f64 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 304
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.load offset=4
            br_if 0 (;@4;)
            local.get 0
            call $__toread
            drop
            local.get 0
            i32.load offset=4
            br_if 0 (;@4;)
            i32.const 0
            local.set 4
            br 1 (;@3;)
          end
          block  ;; label = @4
            local.get 1
            i32.load8_u
            local.tee 5
            br_if 0 (;@4;)
            i32.const 0
            local.set 6
            br 3 (;@1;)
          end
          local.get 3
          i32.const 16
          i32.add
          i32.const 1
          i32.or
          local.set 7
          local.get 3
          i32.const 16
          i32.add
          i32.const 10
          i32.or
          local.set 8
          i64.const 0
          local.set 9
          i32.const 0
          local.set 6
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  loop  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 5
                          i32.const 255
                          i32.and
                          local.tee 5
                          i32.const 32
                          i32.eq
                          br_if 0 (;@11;)
                          local.get 5
                          i32.const -14
                          i32.add
                          i32.const -5
                          i32.lt_u
                          br_if 1 (;@10;)
                        end
                        local.get 1
                        i32.const 1
                        i32.add
                        local.set 5
                        loop  ;; label = @11
                          local.get 5
                          i32.load8_u
                          local.tee 1
                          i32.const -14
                          i32.add
                          local.set 10
                          local.get 5
                          i32.const 1
                          i32.add
                          local.tee 11
                          local.set 5
                          local.get 1
                          i32.const 32
                          i32.eq
                          br_if 0 (;@11;)
                          local.get 11
                          local.set 5
                          local.get 10
                          i32.const -6
                          i32.gt_u
                          br_if 0 (;@11;)
                        end
                        local.get 0
                        i64.const 0
                        call $__shlim
                        local.get 11
                        i32.const -2
                        i32.add
                        local.set 10
                        loop  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 0
                              i32.load offset=4
                              local.tee 5
                              local.get 0
                              i32.load offset=84
                              i32.eq
                              br_if 0 (;@13;)
                              local.get 0
                              local.get 5
                              i32.const 1
                              i32.add
                              i32.store offset=4
                              local.get 5
                              i32.load8_u
                              local.set 5
                              br 1 (;@12;)
                            end
                            local.get 0
                            call $__shgetc
                            local.set 5
                          end
                          local.get 5
                          i32.const -9
                          i32.add
                          i32.const 5
                          i32.lt_u
                          br_if 0 (;@11;)
                          local.get 5
                          i32.const 32
                          i32.eq
                          br_if 0 (;@11;)
                        end
                        local.get 0
                        i32.load offset=4
                        local.set 5
                        block  ;; label = @11
                          local.get 0
                          i64.load offset=88
                          i64.const 0
                          i64.lt_s
                          br_if 0 (;@11;)
                          local.get 0
                          local.get 5
                          i32.const -1
                          i32.add
                          local.tee 5
                          i32.store offset=4
                        end
                        local.get 0
                        i64.load offset=96
                        local.get 9
                        i64.add
                        local.get 5
                        local.get 0
                        i32.load offset=40
                        i32.sub
                        i64.extend_i32_s
                        i64.add
                        local.set 9
                        br 1 (;@9;)
                      end
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 5
                              i32.const 37
                              i32.ne
                              br_if 0 (;@13;)
                              local.get 1
                              i32.load8_u offset=1
                              local.tee 5
                              i32.const -37
                              i32.add
                              br_table 0 (;@13;) 2 (;@11;) 2 (;@11;) 2 (;@11;) 2 (;@11;) 1 (;@12;) 2 (;@11;)
                            end
                            local.get 0
                            i64.const 0
                            call $__shlim
                            block  ;; label = @13
                              block  ;; label = @14
                                local.get 1
                                i32.load8_u
                                i32.const 37
                                i32.ne
                                br_if 0 (;@14;)
                                loop  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      local.get 0
                                      i32.load offset=4
                                      local.tee 5
                                      local.get 0
                                      i32.load offset=84
                                      i32.eq
                                      br_if 0 (;@17;)
                                      local.get 0
                                      local.get 5
                                      i32.const 1
                                      i32.add
                                      i32.store offset=4
                                      local.get 5
                                      i32.load8_u
                                      local.set 5
                                      br 1 (;@16;)
                                    end
                                    local.get 0
                                    call $__shgetc
                                    local.set 5
                                  end
                                  local.get 5
                                  i32.const -9
                                  i32.add
                                  i32.const 5
                                  i32.lt_u
                                  br_if 0 (;@15;)
                                  local.get 5
                                  i32.const 32
                                  i32.eq
                                  br_if 0 (;@15;)
                                end
                                local.get 1
                                i32.const 1
                                i32.add
                                local.set 1
                                br 1 (;@13;)
                              end
                              block  ;; label = @14
                                local.get 0
                                i32.load offset=4
                                local.tee 5
                                local.get 0
                                i32.load offset=84
                                i32.eq
                                br_if 0 (;@14;)
                                local.get 0
                                local.get 5
                                i32.const 1
                                i32.add
                                i32.store offset=4
                                local.get 5
                                i32.load8_u
                                local.set 5
                                br 1 (;@13;)
                              end
                              local.get 0
                              call $__shgetc
                              local.set 5
                            end
                            block  ;; label = @13
                              local.get 5
                              local.get 1
                              i32.load8_u
                              i32.eq
                              br_if 0 (;@13;)
                              block  ;; label = @14
                                local.get 0
                                i64.load offset=88
                                i64.const 0
                                i64.lt_s
                                br_if 0 (;@14;)
                                local.get 0
                                local.get 0
                                i32.load offset=4
                                i32.const -1
                                i32.add
                                i32.store offset=4
                              end
                              local.get 5
                              i32.const -1
                              i32.gt_s
                              br_if 12 (;@1;)
                              i32.const 0
                              local.set 4
                              local.get 6
                              i32.eqz
                              br_if 10 (;@3;)
                              br 12 (;@1;)
                            end
                            local.get 0
                            i64.load offset=96
                            local.get 9
                            i64.add
                            local.get 0
                            i32.load offset=4
                            local.get 0
                            i32.load offset=40
                            i32.sub
                            i64.extend_i32_s
                            i64.add
                            local.set 9
                            local.get 1
                            local.set 10
                            br 3 (;@9;)
                          end
                          local.get 1
                          i32.const 2
                          i32.add
                          local.set 1
                          i32.const 0
                          local.set 12
                          br 1 (;@10;)
                        end
                        block  ;; label = @11
                          local.get 5
                          i32.const -48
                          i32.add
                          local.tee 5
                          i32.const 9
                          i32.gt_u
                          br_if 0 (;@11;)
                          local.get 1
                          i32.load8_u offset=2
                          i32.const 36
                          i32.ne
                          br_if 0 (;@11;)
                          local.get 3
                          local.get 2
                          i32.store offset=300
                          local.get 3
                          local.get 2
                          local.get 5
                          i32.const 2
                          i32.shl
                          i32.const -4
                          i32.add
                          i32.const 0
                          local.get 5
                          i32.const 1
                          i32.gt_u
                          select
                          i32.add
                          local.tee 5
                          i32.const 4
                          i32.add
                          i32.store offset=296
                          local.get 5
                          i32.load
                          local.set 12
                          local.get 1
                          i32.const 3
                          i32.add
                          local.set 1
                          br 1 (;@10;)
                        end
                        local.get 1
                        i32.const 1
                        i32.add
                        local.set 1
                        local.get 2
                        i32.load
                        local.set 12
                        local.get 2
                        i32.const 4
                        i32.add
                        local.set 2
                      end
                      i32.const 0
                      local.set 4
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 1
                          i32.load8_u
                          local.tee 5
                          i32.const -48
                          i32.add
                          i32.const 9
                          i32.le_u
                          br_if 0 (;@11;)
                          local.get 1
                          local.set 10
                          i32.const 0
                          local.set 11
                          br 1 (;@10;)
                        end
                        i32.const 0
                        local.set 11
                        loop  ;; label = @11
                          local.get 5
                          local.get 11
                          i32.const 10
                          i32.mul
                          i32.add
                          i32.const -48
                          i32.add
                          local.set 11
                          local.get 1
                          i32.load8_u offset=1
                          local.set 5
                          local.get 1
                          i32.const 1
                          i32.add
                          local.tee 10
                          local.set 1
                          local.get 5
                          i32.const -48
                          i32.add
                          i32.const 10
                          i32.lt_u
                          br_if 0 (;@11;)
                        end
                      end
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 5
                          i32.const 109
                          i32.eq
                          br_if 0 (;@11;)
                          local.get 10
                          local.set 13
                          br 1 (;@10;)
                        end
                        local.get 10
                        i32.const 1
                        i32.add
                        local.set 13
                        i32.const 0
                        local.set 14
                        local.get 12
                        i32.const 0
                        i32.ne
                        local.set 4
                        local.get 10
                        i32.load8_u offset=1
                        local.set 5
                        i32.const 0
                        local.set 15
                      end
                      local.get 13
                      i32.const 1
                      i32.add
                      local.set 10
                      i32.const 3
                      local.set 1
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  local.get 5
                                  i32.const 255
                                  i32.and
                                  i32.const -65
                                  i32.add
                                  br_table 4 (;@11;) 11 (;@4;) 4 (;@11;) 11 (;@4;) 4 (;@11;) 4 (;@11;) 4 (;@11;) 11 (;@4;) 11 (;@4;) 11 (;@4;) 11 (;@4;) 3 (;@12;) 11 (;@4;) 11 (;@4;) 11 (;@4;) 11 (;@4;) 11 (;@4;) 11 (;@4;) 4 (;@11;) 11 (;@4;) 11 (;@4;) 11 (;@4;) 11 (;@4;) 4 (;@11;) 11 (;@4;) 11 (;@4;) 4 (;@11;) 11 (;@4;) 11 (;@4;) 11 (;@4;) 11 (;@4;) 11 (;@4;) 4 (;@11;) 11 (;@4;) 4 (;@11;) 4 (;@11;) 4 (;@11;) 4 (;@11;) 4 (;@11;) 0 (;@15;) 4 (;@11;) 5 (;@10;) 11 (;@4;) 1 (;@14;) 11 (;@4;) 4 (;@11;) 4 (;@11;) 4 (;@11;) 11 (;@4;) 11 (;@4;) 4 (;@11;) 2 (;@13;) 4 (;@11;) 11 (;@4;) 11 (;@4;) 4 (;@11;) 11 (;@4;) 2 (;@13;) 11 (;@4;)
                                end
                                local.get 13
                                i32.const 2
                                i32.add
                                local.get 10
                                local.get 13
                                i32.load8_u offset=1
                                i32.const 104
                                i32.eq
                                local.tee 5
                                select
                                local.set 10
                                i32.const -2
                                i32.const -1
                                local.get 5
                                select
                                local.set 1
                                br 4 (;@10;)
                              end
                              local.get 13
                              i32.const 2
                              i32.add
                              local.get 10
                              local.get 13
                              i32.load8_u offset=1
                              i32.const 108
                              i32.eq
                              local.tee 5
                              select
                              local.set 10
                              i32.const 3
                              i32.const 1
                              local.get 5
                              select
                              local.set 1
                              br 3 (;@10;)
                            end
                            i32.const 1
                            local.set 1
                            br 2 (;@10;)
                          end
                          i32.const 2
                          local.set 1
                          br 1 (;@10;)
                        end
                        i32.const 0
                        local.set 1
                        local.get 13
                        local.set 10
                      end
                      i32.const 1
                      local.get 1
                      local.get 10
                      i32.load8_u
                      local.tee 5
                      i32.const 47
                      i32.and
                      i32.const 3
                      i32.eq
                      local.tee 13
                      select
                      local.set 16
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 5
                              i32.const 32
                              i32.or
                              local.get 5
                              local.get 13
                              select
                              local.tee 13
                              i32.const -91
                              i32.add
                              br_table 3 (;@10;) 2 (;@11;) 2 (;@11;) 2 (;@11;) 2 (;@11;) 2 (;@11;) 2 (;@11;) 2 (;@11;) 0 (;@13;) 2 (;@11;) 2 (;@11;) 2 (;@11;) 2 (;@11;) 2 (;@11;) 2 (;@11;) 2 (;@11;) 2 (;@11;) 2 (;@11;) 2 (;@11;) 1 (;@12;) 2 (;@11;)
                            end
                            local.get 11
                            i32.const 1
                            local.get 11
                            i32.const 1
                            i32.gt_s
                            select
                            local.set 11
                            br 2 (;@10;)
                          end
                          local.get 12
                          i32.eqz
                          br_if 2 (;@9;)
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  local.get 16
                                  i32.const 2
                                  i32.add
                                  br_table 0 (;@15;) 1 (;@14;) 2 (;@13;) 2 (;@13;) 6 (;@9;) 3 (;@12;) 6 (;@9;)
                                end
                                local.get 12
                                local.get 9
                                i64.store8
                                br 5 (;@9;)
                              end
                              local.get 12
                              local.get 9
                              i64.store16
                              br 4 (;@9;)
                            end
                            local.get 12
                            local.get 9
                            i64.store32
                            br 3 (;@9;)
                          end
                          local.get 12
                          local.get 9
                          i64.store
                          br 2 (;@9;)
                        end
                        local.get 0
                        i64.const 0
                        call $__shlim
                        loop  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 0
                              i32.load offset=4
                              local.tee 5
                              local.get 0
                              i32.load offset=84
                              i32.eq
                              br_if 0 (;@13;)
                              local.get 0
                              local.get 5
                              i32.const 1
                              i32.add
                              i32.store offset=4
                              local.get 5
                              i32.load8_u
                              local.set 5
                              br 1 (;@12;)
                            end
                            local.get 0
                            call $__shgetc
                            local.set 5
                          end
                          local.get 5
                          i32.const -9
                          i32.add
                          i32.const 5
                          i32.lt_u
                          br_if 0 (;@11;)
                          local.get 5
                          i32.const 32
                          i32.eq
                          br_if 0 (;@11;)
                        end
                        local.get 0
                        i32.load offset=4
                        local.set 5
                        block  ;; label = @11
                          local.get 0
                          i64.load offset=88
                          i64.const 0
                          i64.lt_s
                          br_if 0 (;@11;)
                          local.get 0
                          local.get 5
                          i32.const -1
                          i32.add
                          local.tee 5
                          i32.store offset=4
                        end
                        local.get 0
                        i64.load offset=96
                        local.get 9
                        i64.add
                        local.get 5
                        local.get 0
                        i32.load offset=40
                        i32.sub
                        i64.extend_i32_s
                        i64.add
                        local.set 9
                      end
                      local.get 0
                      local.get 11
                      i64.extend_i32_s
                      local.tee 17
                      call $__shlim
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 0
                          i32.load offset=4
                          local.tee 5
                          local.get 0
                          i32.load offset=84
                          i32.eq
                          br_if 0 (;@11;)
                          local.get 0
                          local.get 5
                          i32.const 1
                          i32.add
                          i32.store offset=4
                          br 1 (;@10;)
                        end
                        local.get 0
                        call $__shgetc
                        i32.const 0
                        i32.lt_s
                        br_if 6 (;@4;)
                      end
                      block  ;; label = @10
                        local.get 0
                        i64.load offset=88
                        i64.const 0
                        i64.lt_s
                        br_if 0 (;@10;)
                        local.get 0
                        local.get 0
                        i32.load offset=4
                        i32.const -1
                        i32.add
                        i32.store offset=4
                      end
                      i32.const 16
                      local.set 5
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          local.get 13
                                          i32.const -65
                                          i32.add
                                          br_table 5 (;@14;) 9 (;@10;) 9 (;@10;) 9 (;@10;) 5 (;@14;) 5 (;@14;) 5 (;@14;) 9 (;@10;) 9 (;@10;) 9 (;@10;) 9 (;@10;) 9 (;@10;) 9 (;@10;) 9 (;@10;) 9 (;@10;) 9 (;@10;) 9 (;@10;) 9 (;@10;) 9 (;@10;) 9 (;@10;) 9 (;@10;) 9 (;@10;) 9 (;@10;) 4 (;@15;) 9 (;@10;) 9 (;@10;) 0 (;@19;) 9 (;@10;) 9 (;@10;) 9 (;@10;) 9 (;@10;) 9 (;@10;) 5 (;@14;) 9 (;@10;) 0 (;@19;) 2 (;@17;) 5 (;@14;) 5 (;@14;) 5 (;@14;) 9 (;@10;) 3 (;@16;) 9 (;@10;) 9 (;@10;) 9 (;@10;) 9 (;@10;) 9 (;@10;) 1 (;@18;) 4 (;@15;) 9 (;@10;) 9 (;@10;) 0 (;@19;) 9 (;@10;) 2 (;@17;) 9 (;@10;) 9 (;@10;) 4 (;@15;) 9 (;@10;)
                                        end
                                        block  ;; label = @19
                                          block  ;; label = @20
                                            local.get 13
                                            i32.const -99
                                            i32.add
                                            br_table 0 (;@20;) 1 (;@19;) 1 (;@19;) 1 (;@19;) 1 (;@19;) 1 (;@19;) 1 (;@19;) 1 (;@19;) 1 (;@19;) 1 (;@19;) 1 (;@19;) 1 (;@19;) 1 (;@19;) 1 (;@19;) 1 (;@19;) 1 (;@19;) 0 (;@20;) 1 (;@19;)
                                          end
                                          local.get 3
                                          i32.const 16
                                          i32.add
                                          i32.const 255
                                          i32.const 257
                                          call $memset
                                          drop
                                          local.get 3
                                          i32.const 0
                                          i32.store8 offset=16
                                          local.get 13
                                          i32.const 115
                                          i32.ne
                                          br_if 8 (;@11;)
                                          local.get 8
                                          i32.const 0
                                          i32.store align=2
                                          local.get 8
                                          i32.const 4
                                          i32.add
                                          i32.const 0
                                          i32.store8
                                          local.get 3
                                          i32.const 0
                                          i32.store8 offset=49
                                          br 8 (;@11;)
                                        end
                                        local.get 3
                                        i32.const 16
                                        i32.add
                                        local.get 10
                                        i32.load8_u offset=1
                                        i32.const 94
                                        i32.eq
                                        local.tee 1
                                        i32.const 257
                                        call $memset
                                        drop
                                        local.get 3
                                        i32.const 0
                                        i32.store8 offset=16
                                        local.get 10
                                        i32.const 2
                                        i32.add
                                        local.get 10
                                        i32.const 1
                                        i32.add
                                        local.get 1
                                        select
                                        local.set 5
                                        block  ;; label = @19
                                          block  ;; label = @20
                                            block  ;; label = @21
                                              local.get 10
                                              i32.const 2
                                              i32.const 1
                                              local.get 1
                                              select
                                              i32.add
                                              i32.load8_u
                                              local.tee 10
                                              i32.const 45
                                              i32.eq
                                              br_if 0 (;@21;)
                                              local.get 10
                                              i32.const 93
                                              i32.eq
                                              br_if 1 (;@20;)
                                              local.get 1
                                              i32.const 1
                                              i32.xor
                                              local.set 10
                                              br 8 (;@13;)
                                            end
                                            local.get 3
                                            local.get 1
                                            i32.const 1
                                            i32.xor
                                            local.tee 10
                                            i32.store8 offset=62
                                            br 1 (;@19;)
                                          end
                                          local.get 3
                                          local.get 1
                                          i32.const 1
                                          i32.xor
                                          local.tee 10
                                          i32.store8 offset=110
                                        end
                                        i32.const 0
                                        local.set 1
                                        br 6 (;@12;)
                                      end
                                      i32.const 8
                                      local.set 5
                                      br 2 (;@15;)
                                    end
                                    i32.const 10
                                    local.set 5
                                    br 1 (;@15;)
                                  end
                                  i32.const 0
                                  local.set 5
                                end
                                local.get 0
                                local.get 5
                                i32.const 0
                                i64.const -1
                                call $__intscan
                                local.set 17
                                local.get 0
                                i64.load offset=96
                                i64.const 0
                                local.get 0
                                i32.load offset=4
                                local.get 0
                                i32.load offset=40
                                i32.sub
                                i64.extend_i32_s
                                i64.sub
                                i64.eq
                                br_if 12 (;@2;)
                                block  ;; label = @15
                                  local.get 13
                                  i32.const 112
                                  i32.ne
                                  br_if 0 (;@15;)
                                  local.get 12
                                  i32.eqz
                                  br_if 0 (;@15;)
                                  local.get 12
                                  local.get 17
                                  i64.store32
                                  br 5 (;@10;)
                                end
                                local.get 12
                                i32.eqz
                                br_if 4 (;@10;)
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        local.get 16
                                        i32.const 2
                                        i32.add
                                        br_table 0 (;@18;) 1 (;@17;) 2 (;@16;) 2 (;@16;) 8 (;@10;) 3 (;@15;) 8 (;@10;)
                                      end
                                      local.get 12
                                      local.get 17
                                      i64.store8
                                      br 7 (;@10;)
                                    end
                                    local.get 12
                                    local.get 17
                                    i64.store16
                                    br 6 (;@10;)
                                  end
                                  local.get 12
                                  local.get 17
                                  i64.store32
                                  br 5 (;@10;)
                                end
                                local.get 12
                                local.get 17
                                i64.store
                                br 4 (;@10;)
                              end
                              local.get 0
                              local.get 16
                              i32.const 0
                              call $__floatscan
                              local.set 18
                              local.get 0
                              i64.load offset=96
                              i64.const 0
                              local.get 0
                              i32.load offset=4
                              local.get 0
                              i32.load offset=40
                              i32.sub
                              i64.extend_i32_s
                              i64.sub
                              i64.eq
                              br_if 11 (;@2;)
                              local.get 12
                              i32.eqz
                              br_if 3 (;@10;)
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    local.get 16
                                    br_table 0 (;@16;) 1 (;@15;) 2 (;@14;) 6 (;@10;)
                                  end
                                  local.get 12
                                  local.get 18
                                  f32.demote_f64
                                  f32.store
                                  br 5 (;@10;)
                                end
                                local.get 12
                                local.get 18
                                f64.store
                                br 4 (;@10;)
                              end
                              call $long_double_not_supported.1
                              unreachable
                            end
                            i32.const 1
                            local.set 1
                          end
                          loop  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                local.get 1
                                br_table 0 (;@14;) 1 (;@13;) 1 (;@13;)
                              end
                              local.get 5
                              i32.const 1
                              i32.add
                              local.set 5
                              i32.const 1
                              local.set 1
                              br 1 (;@12;)
                            end
                            block  ;; label = @13
                              block  ;; label = @14
                                local.get 5
                                i32.load8_u
                                local.tee 1
                                i32.const 45
                                i32.eq
                                br_if 0 (;@14;)
                                local.get 1
                                i32.eqz
                                br_if 10 (;@4;)
                                local.get 1
                                i32.const 93
                                i32.ne
                                br_if 1 (;@13;)
                                local.get 5
                                local.set 10
                                br 3 (;@11;)
                              end
                              i32.const 45
                              local.set 1
                              local.get 5
                              i32.load8_u offset=1
                              local.tee 19
                              i32.eqz
                              br_if 0 (;@13;)
                              local.get 19
                              i32.const 93
                              i32.eq
                              br_if 0 (;@13;)
                              local.get 5
                              i32.const 1
                              i32.add
                              local.set 20
                              block  ;; label = @14
                                block  ;; label = @15
                                  local.get 5
                                  i32.const -1
                                  i32.add
                                  i32.load8_u
                                  local.tee 5
                                  local.get 19
                                  i32.lt_u
                                  br_if 0 (;@15;)
                                  local.get 19
                                  local.set 1
                                  br 1 (;@14;)
                                end
                                loop  ;; label = @15
                                  local.get 7
                                  local.get 5
                                  i32.add
                                  local.get 10
                                  i32.store8
                                  local.get 5
                                  i32.const 1
                                  i32.add
                                  local.tee 5
                                  local.get 20
                                  i32.load8_u
                                  local.tee 1
                                  i32.lt_u
                                  br_if 0 (;@15;)
                                end
                              end
                              local.get 20
                              local.set 5
                            end
                            local.get 1
                            local.get 3
                            i32.const 16
                            i32.add
                            i32.add
                            i32.const 1
                            i32.add
                            local.get 10
                            i32.store8
                            i32.const 0
                            local.set 1
                            br 0 (;@12;)
                          end
                        end
                        local.get 11
                        i32.const 1
                        i32.add
                        i32.const 31
                        local.get 13
                        i32.const 99
                        i32.eq
                        local.tee 19
                        select
                        local.set 20
                        block  ;; label = @11
                          block  ;; label = @12
                            local.get 16
                            i32.const 1
                            i32.ne
                            br_if 0 (;@12;)
                            local.get 12
                            local.set 1
                            block  ;; label = @13
                              local.get 4
                              i32.eqz
                              br_if 0 (;@13;)
                              local.get 20
                              i32.const 2
                              i32.shl
                              call $malloc
                              local.tee 1
                              i32.eqz
                              br_if 8 (;@5;)
                            end
                            local.get 3
                            i64.const 0
                            i64.store offset=288
                            i32.const 0
                            local.set 5
                            local.get 4
                            i32.const 0
                            i32.ne
                            local.set 16
                            block  ;; label = @13
                              loop  ;; label = @14
                                local.get 1
                                local.set 11
                                loop  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      local.get 0
                                      i32.load offset=4
                                      local.tee 1
                                      local.get 0
                                      i32.load offset=84
                                      i32.eq
                                      br_if 0 (;@17;)
                                      local.get 0
                                      local.get 1
                                      i32.const 1
                                      i32.add
                                      i32.store offset=4
                                      local.get 1
                                      i32.load8_u
                                      local.set 1
                                      br 1 (;@16;)
                                    end
                                    local.get 0
                                    call $__shgetc
                                    local.set 1
                                  end
                                  local.get 1
                                  local.get 3
                                  i32.const 16
                                  i32.add
                                  i32.add
                                  i32.const 1
                                  i32.add
                                  i32.load8_u
                                  i32.eqz
                                  br_if 2 (;@13;)
                                  local.get 3
                                  local.get 1
                                  i32.store8 offset=11
                                  local.get 3
                                  i32.const 12
                                  i32.add
                                  local.get 3
                                  i32.const 11
                                  i32.add
                                  i32.const 1
                                  local.get 3
                                  i32.const 288
                                  i32.add
                                  call $mbrtowc
                                  local.tee 1
                                  i32.const -2
                                  i32.eq
                                  br_if 0 (;@15;)
                                  local.get 1
                                  i32.const -1
                                  i32.eq
                                  br_if 8 (;@7;)
                                  block  ;; label = @16
                                    local.get 11
                                    i32.eqz
                                    br_if 0 (;@16;)
                                    local.get 11
                                    local.get 5
                                    i32.const 2
                                    i32.shl
                                    i32.add
                                    local.get 3
                                    i32.load offset=12
                                    i32.store
                                    local.get 5
                                    i32.const 1
                                    i32.add
                                    local.set 5
                                  end
                                  local.get 16
                                  local.get 5
                                  local.get 20
                                  i32.eq
                                  i32.and
                                  i32.const 1
                                  i32.ne
                                  br_if 0 (;@15;)
                                end
                                local.get 11
                                local.get 20
                                i32.const 1
                                i32.shl
                                i32.const 1
                                i32.or
                                local.tee 20
                                i32.const 2
                                i32.shl
                                call $realloc
                                local.tee 1
                                br_if 0 (;@14;)
                              end
                              i32.const 0
                              local.set 14
                              local.get 11
                              local.set 15
                              i32.const 1
                              local.set 4
                              br 9 (;@4;)
                            end
                            i32.const 0
                            local.set 14
                            local.get 11
                            local.set 15
                            local.get 3
                            i32.const 288
                            i32.add
                            call $mbsinit
                            br_if 1 (;@11;)
                            br 6 (;@6;)
                          end
                          block  ;; label = @12
                            local.get 4
                            i32.eqz
                            br_if 0 (;@12;)
                            local.get 20
                            call $malloc
                            local.tee 1
                            i32.eqz
                            br_if 7 (;@5;)
                            i32.const 0
                            local.set 5
                            loop  ;; label = @13
                              local.get 1
                              local.set 11
                              loop  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    local.get 0
                                    i32.load offset=4
                                    local.tee 1
                                    local.get 0
                                    i32.load offset=84
                                    i32.eq
                                    br_if 0 (;@16;)
                                    local.get 0
                                    local.get 1
                                    i32.const 1
                                    i32.add
                                    i32.store offset=4
                                    local.get 1
                                    i32.load8_u
                                    local.set 1
                                    br 1 (;@15;)
                                  end
                                  local.get 0
                                  call $__shgetc
                                  local.set 1
                                end
                                block  ;; label = @15
                                  local.get 1
                                  local.get 3
                                  i32.const 16
                                  i32.add
                                  i32.add
                                  i32.const 1
                                  i32.add
                                  i32.load8_u
                                  br_if 0 (;@15;)
                                  i32.const 0
                                  local.set 15
                                  local.get 11
                                  local.set 14
                                  br 4 (;@11;)
                                end
                                local.get 11
                                local.get 5
                                i32.add
                                local.get 1
                                i32.store8
                                local.get 20
                                local.get 5
                                i32.const 1
                                i32.add
                                local.tee 5
                                i32.ne
                                br_if 0 (;@14;)
                              end
                              local.get 11
                              local.get 20
                              i32.const 1
                              i32.shl
                              i32.const 1
                              i32.or
                              local.tee 20
                              call $realloc
                              local.tee 1
                              br_if 0 (;@13;)
                            end
                            i32.const 0
                            local.set 15
                            local.get 11
                            local.set 14
                            i32.const 1
                            local.set 4
                            br 8 (;@4;)
                          end
                          block  ;; label = @12
                            local.get 12
                            i32.eqz
                            br_if 0 (;@12;)
                            i32.const 0
                            local.set 5
                            loop  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  local.get 0
                                  i32.load offset=4
                                  local.tee 1
                                  local.get 0
                                  i32.load offset=84
                                  i32.eq
                                  br_if 0 (;@15;)
                                  local.get 0
                                  local.get 1
                                  i32.const 1
                                  i32.add
                                  i32.store offset=4
                                  local.get 1
                                  i32.load8_u
                                  local.set 1
                                  br 1 (;@14;)
                                end
                                local.get 0
                                call $__shgetc
                                local.set 1
                              end
                              block  ;; label = @14
                                local.get 1
                                local.get 3
                                i32.const 16
                                i32.add
                                i32.add
                                i32.const 1
                                i32.add
                                i32.load8_u
                                br_if 0 (;@14;)
                                i32.const 0
                                local.set 15
                                local.get 12
                                local.set 11
                                local.get 12
                                local.set 14
                                br 3 (;@11;)
                              end
                              local.get 12
                              local.get 5
                              i32.add
                              local.get 1
                              i32.store8
                              local.get 5
                              i32.const 1
                              i32.add
                              local.set 5
                              br 0 (;@13;)
                            end
                          end
                          loop  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                local.get 0
                                i32.load offset=4
                                local.tee 5
                                local.get 0
                                i32.load offset=84
                                i32.eq
                                br_if 0 (;@14;)
                                local.get 0
                                local.get 5
                                i32.const 1
                                i32.add
                                i32.store offset=4
                                local.get 5
                                i32.load8_u
                                local.set 5
                                br 1 (;@13;)
                              end
                              local.get 0
                              call $__shgetc
                              local.set 5
                            end
                            local.get 5
                            local.get 3
                            i32.const 16
                            i32.add
                            i32.add
                            i32.const 1
                            i32.add
                            i32.load8_u
                            br_if 0 (;@12;)
                          end
                          i32.const 0
                          local.set 11
                          i32.const 0
                          local.set 14
                          i32.const 0
                          local.set 15
                          i32.const 0
                          local.set 5
                        end
                        local.get 0
                        i32.load offset=4
                        local.set 1
                        block  ;; label = @11
                          local.get 0
                          i64.load offset=88
                          i64.const 0
                          i64.lt_s
                          br_if 0 (;@11;)
                          local.get 0
                          local.get 1
                          i32.const -1
                          i32.add
                          local.tee 1
                          i32.store offset=4
                        end
                        local.get 0
                        i64.load offset=96
                        local.get 1
                        local.get 0
                        i32.load offset=40
                        i32.sub
                        i64.extend_i32_s
                        i64.add
                        local.tee 21
                        i64.eqz
                        br_if 8 (;@2;)
                        block  ;; label = @11
                          local.get 13
                          i32.const 99
                          i32.ne
                          br_if 0 (;@11;)
                          local.get 21
                          local.get 17
                          i64.ne
                          br_if 9 (;@2;)
                        end
                        block  ;; label = @11
                          local.get 4
                          i32.eqz
                          br_if 0 (;@11;)
                          local.get 12
                          local.get 11
                          i32.store
                        end
                        local.get 19
                        br_if 0 (;@10;)
                        block  ;; label = @11
                          local.get 15
                          i32.eqz
                          br_if 0 (;@11;)
                          local.get 15
                          local.get 5
                          i32.const 2
                          i32.shl
                          i32.add
                          i32.const 0
                          i32.store
                        end
                        block  ;; label = @11
                          local.get 14
                          br_if 0 (;@11;)
                          i32.const 0
                          local.set 14
                          br 1 (;@10;)
                        end
                        local.get 14
                        local.get 5
                        i32.add
                        i32.const 0
                        i32.store8
                      end
                      local.get 0
                      i64.load offset=96
                      local.get 9
                      i64.add
                      local.get 0
                      i32.load offset=4
                      local.get 0
                      i32.load offset=40
                      i32.sub
                      i64.extend_i32_s
                      i64.add
                      local.set 9
                      local.get 6
                      local.get 12
                      i32.const 0
                      i32.ne
                      i32.add
                      local.set 6
                    end
                    local.get 10
                    i32.const 1
                    i32.add
                    local.set 1
                    local.get 10
                    i32.load8_u offset=1
                    local.tee 5
                    br_if 0 (;@8;)
                    br 7 (;@1;)
                  end
                end
                i32.const 0
                local.set 14
              end
              local.get 11
              local.set 15
              br 1 (;@4;)
            end
            i32.const 1
            local.set 4
            i32.const 0
            local.set 14
            i32.const 0
            local.set 15
          end
          local.get 6
          br_if 1 (;@2;)
        end
        i32.const -1
        local.set 6
      end
      local.get 4
      i32.eqz
      br_if 0 (;@1;)
      local.get 14
      call $free
      local.get 15
      call $free
    end
    local.get 3
    i32.const 304
    i32.add
    global.set $__stack_pointer
    local.get 6)
  (func $long_double_not_supported.1 (type 9)
    i32.const 1378
    i32.const 4352
    call $fputs
    drop
    call $abort
    unreachable)
  (func $memchr (type 1) (param i32 i32 i32) (result i32)
    (local i32 i32 i32)
    local.get 2
    i32.const 0
    i32.ne
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.const 3
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            local.get 2
            i32.eqz
            br_if 0 (;@4;)
            block  ;; label = @5
              local.get 0
              i32.load8_u
              local.get 1
              i32.const 255
              i32.and
              i32.ne
              br_if 0 (;@5;)
              local.get 0
              local.set 4
              local.get 2
              local.set 5
              br 3 (;@2;)
            end
            local.get 2
            i32.const -1
            i32.add
            local.tee 5
            i32.const 0
            i32.ne
            local.set 3
            local.get 0
            i32.const 1
            i32.add
            local.tee 4
            i32.const 3
            i32.and
            i32.eqz
            br_if 1 (;@3;)
            local.get 5
            i32.eqz
            br_if 1 (;@3;)
            local.get 4
            i32.load8_u
            local.get 1
            i32.const 255
            i32.and
            i32.eq
            br_if 2 (;@2;)
            local.get 2
            i32.const -2
            i32.add
            local.tee 5
            i32.const 0
            i32.ne
            local.set 3
            local.get 0
            i32.const 2
            i32.add
            local.tee 4
            i32.const 3
            i32.and
            i32.eqz
            br_if 1 (;@3;)
            local.get 5
            i32.eqz
            br_if 1 (;@3;)
            local.get 4
            i32.load8_u
            local.get 1
            i32.const 255
            i32.and
            i32.eq
            br_if 2 (;@2;)
            local.get 2
            i32.const -3
            i32.add
            local.tee 5
            i32.const 0
            i32.ne
            local.set 3
            local.get 0
            i32.const 3
            i32.add
            local.tee 4
            i32.const 3
            i32.and
            i32.eqz
            br_if 1 (;@3;)
            local.get 5
            i32.eqz
            br_if 1 (;@3;)
            local.get 4
            i32.load8_u
            local.get 1
            i32.const 255
            i32.and
            i32.eq
            br_if 2 (;@2;)
            local.get 0
            i32.const 4
            i32.add
            local.set 4
            local.get 2
            i32.const -4
            i32.add
            local.tee 5
            i32.const 0
            i32.ne
            local.set 3
            br 1 (;@3;)
          end
          local.get 2
          local.set 5
          local.get 0
          local.set 4
        end
        local.get 3
        i32.eqz
        br_if 1 (;@1;)
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 4
          i32.load8_u
          local.get 1
          i32.const 255
          i32.and
          i32.eq
          br_if 0 (;@3;)
          local.get 5
          i32.const 4
          i32.lt_u
          br_if 0 (;@3;)
          local.get 1
          i32.const 255
          i32.and
          i32.const 16843009
          i32.mul
          local.set 0
          loop  ;; label = @4
            local.get 4
            i32.load
            local.get 0
            i32.xor
            local.tee 2
            i32.const -1
            i32.xor
            local.get 2
            i32.const -16843009
            i32.add
            i32.and
            i32.const -2139062144
            i32.and
            br_if 2 (;@2;)
            local.get 4
            i32.const 4
            i32.add
            local.set 4
            local.get 5
            i32.const -4
            i32.add
            local.tee 5
            i32.const 3
            i32.gt_u
            br_if 0 (;@4;)
          end
        end
        local.get 5
        i32.eqz
        br_if 1 (;@1;)
      end
      local.get 1
      i32.const 255
      i32.and
      local.set 2
      loop  ;; label = @2
        block  ;; label = @3
          local.get 4
          i32.load8_u
          local.get 2
          i32.ne
          br_if 0 (;@3;)
          local.get 4
          return
        end
        local.get 4
        i32.const 1
        i32.add
        local.set 4
        local.get 5
        i32.const -1
        i32.add
        local.tee 5
        br_if 0 (;@2;)
      end
    end
    i32.const 0)
  (func $memcmp (type 1) (param i32 i32 i32) (result i32)
    (local i32 i32 i32)
    i32.const 0
    local.set 3
    block  ;; label = @1
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        loop  ;; label = @3
          local.get 0
          i32.load8_u
          local.tee 4
          local.get 1
          i32.load8_u
          local.tee 5
          i32.ne
          br_if 1 (;@2;)
          local.get 1
          i32.const 1
          i32.add
          local.set 1
          local.get 0
          i32.const 1
          i32.add
          local.set 0
          local.get 2
          i32.const -1
          i32.add
          local.tee 2
          br_if 0 (;@3;)
          br 2 (;@1;)
        end
      end
      local.get 4
      local.get 5
      i32.sub
      local.set 3
    end
    local.get 3)
  (func $memcpy (type 1) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.const 32
          i32.gt_u
          br_if 0 (;@3;)
          local.get 1
          i32.const 3
          i32.and
          i32.eqz
          br_if 1 (;@2;)
          local.get 2
          i32.eqz
          br_if 1 (;@2;)
          local.get 0
          local.get 1
          i32.load8_u
          i32.store8
          local.get 2
          i32.const -1
          i32.add
          local.set 3
          local.get 0
          i32.const 1
          i32.add
          local.set 4
          local.get 1
          i32.const 1
          i32.add
          local.tee 5
          i32.const 3
          i32.and
          i32.eqz
          br_if 2 (;@1;)
          local.get 3
          i32.eqz
          br_if 2 (;@1;)
          local.get 0
          local.get 1
          i32.load8_u offset=1
          i32.store8 offset=1
          local.get 2
          i32.const -2
          i32.add
          local.set 3
          local.get 0
          i32.const 2
          i32.add
          local.set 4
          local.get 1
          i32.const 2
          i32.add
          local.tee 5
          i32.const 3
          i32.and
          i32.eqz
          br_if 2 (;@1;)
          local.get 3
          i32.eqz
          br_if 2 (;@1;)
          local.get 0
          local.get 1
          i32.load8_u offset=2
          i32.store8 offset=2
          local.get 2
          i32.const -3
          i32.add
          local.set 3
          local.get 0
          i32.const 3
          i32.add
          local.set 4
          local.get 1
          i32.const 3
          i32.add
          local.tee 5
          i32.const 3
          i32.and
          i32.eqz
          br_if 2 (;@1;)
          local.get 3
          i32.eqz
          br_if 2 (;@1;)
          local.get 0
          local.get 1
          i32.load8_u offset=3
          i32.store8 offset=3
          local.get 2
          i32.const -4
          i32.add
          local.set 3
          local.get 0
          i32.const 4
          i32.add
          local.set 4
          local.get 1
          i32.const 4
          i32.add
          local.set 5
          br 2 (;@1;)
        end
        local.get 0
        local.get 1
        local.get 2
        memory.copy
        local.get 0
        return
      end
      local.get 2
      local.set 3
      local.get 0
      local.set 4
      local.get 1
      local.set 5
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 4
        i32.const 3
        i32.and
        local.tee 2
        br_if 0 (;@2;)
        block  ;; label = @3
          block  ;; label = @4
            local.get 3
            i32.const 16
            i32.ge_u
            br_if 0 (;@4;)
            local.get 3
            local.set 2
            br 1 (;@3;)
          end
          block  ;; label = @4
            local.get 3
            i32.const -16
            i32.add
            local.tee 2
            i32.const 16
            i32.and
            br_if 0 (;@4;)
            local.get 4
            local.get 5
            i64.load align=4
            i64.store align=4
            local.get 4
            local.get 5
            i64.load offset=8 align=4
            i64.store offset=8 align=4
            local.get 4
            i32.const 16
            i32.add
            local.set 4
            local.get 5
            i32.const 16
            i32.add
            local.set 5
            local.get 2
            local.set 3
          end
          local.get 2
          i32.const 16
          i32.lt_u
          br_if 0 (;@3;)
          local.get 3
          local.set 2
          loop  ;; label = @4
            local.get 4
            local.get 5
            i64.load align=4
            i64.store align=4
            local.get 4
            local.get 5
            i64.load offset=8 align=4
            i64.store offset=8 align=4
            local.get 4
            local.get 5
            i64.load offset=16 align=4
            i64.store offset=16 align=4
            local.get 4
            local.get 5
            i64.load offset=24 align=4
            i64.store offset=24 align=4
            local.get 4
            i32.const 32
            i32.add
            local.set 4
            local.get 5
            i32.const 32
            i32.add
            local.set 5
            local.get 2
            i32.const -32
            i32.add
            local.tee 2
            i32.const 15
            i32.gt_u
            br_if 0 (;@4;)
          end
        end
        block  ;; label = @3
          local.get 2
          i32.const 8
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 4
          local.get 5
          i64.load align=4
          i64.store align=4
          local.get 5
          i32.const 8
          i32.add
          local.set 5
          local.get 4
          i32.const 8
          i32.add
          local.set 4
        end
        block  ;; label = @3
          local.get 2
          i32.const 4
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 4
          local.get 5
          i32.load
          i32.store
          local.get 5
          i32.const 4
          i32.add
          local.set 5
          local.get 4
          i32.const 4
          i32.add
          local.set 4
        end
        block  ;; label = @3
          local.get 2
          i32.const 2
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 4
          local.get 5
          i32.load16_u align=1
          i32.store16 align=1
          local.get 4
          i32.const 2
          i32.add
          local.set 4
          local.get 5
          i32.const 2
          i32.add
          local.set 5
        end
        local.get 2
        i32.const 1
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 4
        local.get 5
        i32.load8_u
        i32.store8
        local.get 0
        return
      end
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 3
                i32.const 32
                i32.lt_u
                br_if 0 (;@6;)
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 2
                    i32.const -1
                    i32.add
                    br_table 3 (;@5;) 0 (;@8;) 1 (;@7;) 7 (;@1;)
                  end
                  local.get 4
                  local.get 5
                  i32.load
                  i32.store16 align=1
                  local.get 4
                  local.get 5
                  i32.const 2
                  i32.add
                  i32.load align=2
                  i32.store offset=2
                  local.get 4
                  local.get 5
                  i32.const 6
                  i32.add
                  i64.load align=2
                  i64.store offset=6 align=4
                  local.get 4
                  i32.const 18
                  i32.add
                  local.set 2
                  local.get 5
                  i32.const 18
                  i32.add
                  local.set 1
                  i32.const 14
                  local.set 6
                  local.get 5
                  i32.const 14
                  i32.add
                  i32.load align=2
                  local.set 5
                  i32.const 14
                  local.set 3
                  br 3 (;@4;)
                end
                local.get 4
                local.get 5
                i32.load
                i32.store8
                local.get 4
                local.get 5
                i32.const 1
                i32.add
                i32.load align=1
                i32.store offset=1
                local.get 4
                local.get 5
                i32.const 5
                i32.add
                i64.load align=1
                i64.store offset=5 align=4
                local.get 4
                i32.const 17
                i32.add
                local.set 2
                local.get 5
                i32.const 17
                i32.add
                local.set 1
                i32.const 13
                local.set 6
                local.get 5
                i32.const 13
                i32.add
                i32.load align=1
                local.set 5
                i32.const 15
                local.set 3
                br 2 (;@4;)
              end
              block  ;; label = @6
                block  ;; label = @7
                  local.get 3
                  i32.const 16
                  i32.and
                  br_if 0 (;@7;)
                  local.get 4
                  local.set 2
                  local.get 5
                  local.set 1
                  br 1 (;@6;)
                end
                local.get 4
                local.get 5
                i32.load8_u
                i32.store8
                local.get 4
                local.get 5
                i32.load offset=1 align=1
                i32.store offset=1 align=1
                local.get 4
                local.get 5
                i64.load offset=5 align=1
                i64.store offset=5 align=1
                local.get 4
                local.get 5
                i32.load16_u offset=13 align=1
                i32.store16 offset=13 align=1
                local.get 4
                local.get 5
                i32.load8_u offset=15
                i32.store8 offset=15
                local.get 4
                i32.const 16
                i32.add
                local.set 2
                local.get 5
                i32.const 16
                i32.add
                local.set 1
              end
              local.get 3
              i32.const 8
              i32.and
              br_if 2 (;@3;)
              br 3 (;@2;)
            end
            local.get 4
            local.get 5
            i32.load
            local.tee 2
            i32.store8
            local.get 4
            local.get 2
            i32.const 16
            i32.shr_u
            i32.store8 offset=2
            local.get 4
            local.get 2
            i32.const 8
            i32.shr_u
            i32.store8 offset=1
            local.get 4
            local.get 5
            i32.const 3
            i32.add
            i32.load align=1
            i32.store offset=3
            local.get 4
            local.get 5
            i32.const 7
            i32.add
            i64.load align=1
            i64.store offset=7 align=4
            local.get 4
            i32.const 19
            i32.add
            local.set 2
            local.get 5
            i32.const 19
            i32.add
            local.set 1
            i32.const 15
            local.set 6
            local.get 5
            i32.const 15
            i32.add
            i32.load align=1
            local.set 5
            i32.const 13
            local.set 3
          end
          local.get 4
          local.get 6
          i32.add
          local.get 5
          i32.store
        end
        local.get 2
        local.get 1
        i64.load align=1
        i64.store align=1
        local.get 2
        i32.const 8
        i32.add
        local.set 2
        local.get 1
        i32.const 8
        i32.add
        local.set 1
      end
      block  ;; label = @2
        local.get 3
        i32.const 4
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        local.get 1
        i32.load align=1
        i32.store align=1
        local.get 2
        i32.const 4
        i32.add
        local.set 2
        local.get 1
        i32.const 4
        i32.add
        local.set 1
      end
      block  ;; label = @2
        local.get 3
        i32.const 2
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        local.get 1
        i32.load16_u align=1
        i32.store16 align=1
        local.get 2
        i32.const 2
        i32.add
        local.set 2
        local.get 1
        i32.const 2
        i32.add
        local.set 1
      end
      local.get 3
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      local.get 1
      i32.load8_u
      i32.store8
    end
    local.get 0)
  (func $memset (type 1) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i64)
    block  ;; label = @1
      local.get 2
      i32.const 33
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      local.get 2
      memory.fill
      local.get 0
      return
    end
    block  ;; label = @1
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      i32.store8
      local.get 2
      local.get 0
      i32.add
      local.tee 3
      i32.const -1
      i32.add
      local.get 1
      i32.store8
      local.get 2
      i32.const 3
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      i32.store8 offset=2
      local.get 0
      local.get 1
      i32.store8 offset=1
      local.get 3
      i32.const -3
      i32.add
      local.get 1
      i32.store8
      local.get 3
      i32.const -2
      i32.add
      local.get 1
      i32.store8
      local.get 2
      i32.const 7
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      i32.store8 offset=3
      local.get 3
      i32.const -4
      i32.add
      local.get 1
      i32.store8
      local.get 2
      i32.const 9
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 0
      local.get 0
      i32.sub
      i32.const 3
      i32.and
      local.tee 4
      i32.add
      local.tee 5
      local.get 1
      i32.const 255
      i32.and
      i32.const 16843009
      i32.mul
      local.tee 3
      i32.store
      local.get 5
      local.get 2
      local.get 4
      i32.sub
      i32.const -4
      i32.and
      local.tee 1
      i32.add
      local.tee 2
      i32.const -4
      i32.add
      local.get 3
      i32.store
      local.get 1
      i32.const 9
      i32.lt_u
      br_if 0 (;@1;)
      local.get 5
      local.get 3
      i32.store offset=8
      local.get 5
      local.get 3
      i32.store offset=4
      local.get 2
      i32.const -8
      i32.add
      local.get 3
      i32.store
      local.get 2
      i32.const -12
      i32.add
      local.get 3
      i32.store
      local.get 1
      i32.const 25
      i32.lt_u
      br_if 0 (;@1;)
      local.get 5
      local.get 3
      i32.store offset=24
      local.get 5
      local.get 3
      i32.store offset=20
      local.get 5
      local.get 3
      i32.store offset=16
      local.get 5
      local.get 3
      i32.store offset=12
      local.get 2
      i32.const -16
      i32.add
      local.get 3
      i32.store
      local.get 2
      i32.const -20
      i32.add
      local.get 3
      i32.store
      local.get 2
      i32.const -24
      i32.add
      local.get 3
      i32.store
      local.get 2
      i32.const -28
      i32.add
      local.get 3
      i32.store
      local.get 1
      local.get 5
      i32.const 4
      i32.and
      i32.const 24
      i32.or
      local.tee 2
      i32.sub
      local.tee 1
      i32.const 32
      i32.lt_u
      br_if 0 (;@1;)
      local.get 3
      i64.extend_i32_u
      i64.const 4294967297
      i64.mul
      local.set 6
      local.get 5
      local.get 2
      i32.add
      local.set 2
      loop  ;; label = @2
        local.get 2
        local.get 6
        i64.store offset=24
        local.get 2
        local.get 6
        i64.store offset=16
        local.get 2
        local.get 6
        i64.store offset=8
        local.get 2
        local.get 6
        i64.store
        local.get 2
        i32.const 32
        i32.add
        local.set 2
        local.get 1
        i32.const -32
        i32.add
        local.tee 1
        i32.const 31
        i32.gt_u
        br_if 0 (;@2;)
      end
    end
    local.get 0)
  (func $strchr (type 3) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $__strchrnul
    local.tee 0
    i32.const 0
    local.get 0
    i32.load8_u
    local.get 1
    i32.const 255
    i32.and
    i32.eq
    select)
  (func $__strchrnul (type 3) (param i32 i32) (result i32)
    (local i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.const 255
            i32.and
            local.tee 2
            i32.eqz
            br_if 0 (;@4;)
            local.get 0
            i32.const 3
            i32.and
            i32.eqz
            br_if 2 (;@2;)
            block  ;; label = @5
              local.get 0
              i32.load8_u
              local.tee 3
              br_if 0 (;@5;)
              local.get 0
              return
            end
            local.get 3
            local.get 1
            i32.const 255
            i32.and
            i32.ne
            br_if 1 (;@3;)
            local.get 0
            return
          end
          local.get 0
          local.get 0
          call $strlen
          i32.add
          return
        end
        block  ;; label = @3
          local.get 0
          i32.const 1
          i32.add
          local.tee 3
          i32.const 3
          i32.and
          br_if 0 (;@3;)
          local.get 3
          local.set 0
          br 1 (;@2;)
        end
        local.get 3
        i32.load8_u
        local.tee 4
        i32.eqz
        br_if 1 (;@1;)
        local.get 4
        local.get 1
        i32.const 255
        i32.and
        i32.eq
        br_if 1 (;@1;)
        block  ;; label = @3
          local.get 0
          i32.const 2
          i32.add
          local.tee 3
          i32.const 3
          i32.and
          br_if 0 (;@3;)
          local.get 3
          local.set 0
          br 1 (;@2;)
        end
        local.get 3
        i32.load8_u
        local.tee 4
        i32.eqz
        br_if 1 (;@1;)
        local.get 4
        local.get 1
        i32.const 255
        i32.and
        i32.eq
        br_if 1 (;@1;)
        block  ;; label = @3
          local.get 0
          i32.const 3
          i32.add
          local.tee 3
          i32.const 3
          i32.and
          br_if 0 (;@3;)
          local.get 3
          local.set 0
          br 1 (;@2;)
        end
        local.get 3
        i32.load8_u
        local.tee 4
        i32.eqz
        br_if 1 (;@1;)
        local.get 4
        local.get 1
        i32.const 255
        i32.and
        i32.eq
        br_if 1 (;@1;)
        local.get 0
        i32.const 4
        i32.add
        local.set 0
      end
      block  ;; label = @2
        local.get 0
        i32.load
        local.tee 3
        i32.const -1
        i32.xor
        local.get 3
        i32.const -16843009
        i32.add
        i32.and
        i32.const -2139062144
        i32.and
        br_if 0 (;@2;)
        local.get 2
        i32.const 16843009
        i32.mul
        local.set 2
        loop  ;; label = @3
          local.get 3
          local.get 2
          i32.xor
          local.tee 3
          i32.const -1
          i32.xor
          local.get 3
          i32.const -16843009
          i32.add
          i32.and
          i32.const -2139062144
          i32.and
          br_if 1 (;@2;)
          local.get 0
          i32.const 4
          i32.add
          local.tee 0
          i32.load
          local.tee 3
          i32.const -1
          i32.xor
          local.get 3
          i32.const -16843009
          i32.add
          i32.and
          i32.const -2139062144
          i32.and
          i32.eqz
          br_if 0 (;@3;)
        end
      end
      local.get 0
      i32.const -1
      i32.add
      local.set 3
      loop  ;; label = @2
        local.get 3
        i32.const 1
        i32.add
        local.tee 3
        i32.load8_u
        local.tee 0
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        local.get 1
        i32.const 255
        i32.and
        i32.ne
        br_if 0 (;@2;)
      end
    end
    local.get 3)
  (func $strcmp (type 3) (param i32 i32) (result i32)
    (local i32 i32)
    local.get 1
    i32.load8_u
    local.set 2
    block  ;; label = @1
      local.get 0
      i32.load8_u
      local.tee 3
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      local.get 2
      i32.const 255
      i32.and
      i32.ne
      br_if 0 (;@1;)
      local.get 0
      i32.const 1
      i32.add
      local.set 0
      local.get 1
      i32.const 1
      i32.add
      local.set 1
      loop  ;; label = @2
        local.get 1
        i32.load8_u
        local.set 2
        local.get 0
        i32.load8_u
        local.tee 3
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.const 1
        i32.add
        local.set 0
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        local.get 3
        local.get 2
        i32.const 255
        i32.and
        i32.eq
        br_if 0 (;@2;)
      end
    end
    local.get 3
    local.get 2
    i32.const 255
    i32.and
    i32.sub)
  (func $strdup (type 0) (param i32) (result i32)
    (local i32 i32)
    block  ;; label = @1
      local.get 0
      call $strlen
      i32.const 1
      i32.add
      local.tee 1
      call $malloc
      local.tee 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      local.get 0
      local.get 1
      call $memcpy
      drop
    end
    local.get 2)
  (func $strlen (type 0) (param i32) (result i32)
    (local i32 i32)
    local.get 0
    local.set 1
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.const 3
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        local.set 1
        local.get 0
        i32.load8_u
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.const 1
        i32.add
        local.tee 1
        i32.const 3
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.load8_u
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.const 2
        i32.add
        local.tee 1
        i32.const 3
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.load8_u
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.const 3
        i32.add
        local.tee 1
        i32.const 3
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.load8_u
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.const 4
        i32.add
        local.set 1
      end
      local.get 1
      i32.const -5
      i32.add
      local.set 1
      loop  ;; label = @2
        local.get 1
        i32.const 5
        i32.add
        local.set 2
        local.get 1
        i32.const 4
        i32.add
        local.set 1
        local.get 2
        i32.load
        local.tee 2
        i32.const -1
        i32.xor
        local.get 2
        i32.const -16843009
        i32.add
        i32.and
        i32.const -2139062144
        i32.and
        i32.eqz
        br_if 0 (;@2;)
      end
      loop  ;; label = @2
        local.get 1
        i32.const 1
        i32.add
        local.tee 1
        i32.load8_u
        br_if 0 (;@2;)
      end
    end
    local.get 1
    local.get 0
    i32.sub)
  (func $strnlen (type 3) (param i32 i32) (result i32)
    (local i32)
    local.get 0
    i32.const 0
    local.get 1
    call $memchr
    local.tee 2
    local.get 0
    i32.sub
    local.get 1
    local.get 2
    select)
  (func $dummy.2 (type 3) (param i32 i32) (result i32)
    local.get 0)
  (func $__lctrans (type 3) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $dummy.2)
  (func $mbrtowc (type 5) (param i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 4
    local.get 3
    i32.const 6240
    local.get 3
    select
    local.tee 5
    i32.load
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            br_if 0 (;@4;)
            local.get 3
            br_if 1 (;@3;)
            i32.const 0
            return
          end
          i32.const -2
          local.set 6
          local.get 2
          i32.eqz
          br_if 1 (;@2;)
          local.get 0
          local.get 4
          i32.const 12
          i32.add
          local.get 0
          select
          local.set 4
          block  ;; label = @4
            block  ;; label = @5
              local.get 3
              i32.eqz
              br_if 0 (;@5;)
              local.get 2
              local.set 7
              br 1 (;@4;)
            end
            block  ;; label = @5
              local.get 1
              i32.load8_u
              local.tee 3
              i32.const 24
              i32.shl
              i32.const 24
              i32.shr_s
              local.tee 0
              i32.const 0
              i32.lt_s
              br_if 0 (;@5;)
              local.get 4
              local.get 3
              i32.store
              local.get 0
              i32.const 0
              i32.ne
              return
            end
            block  ;; label = @5
              i32.const 0
              i32.load offset=6204
              br_if 0 (;@5;)
              local.get 4
              local.get 0
              i32.const 57343
              i32.and
              i32.store
              i32.const 1
              return
            end
            local.get 3
            i32.const -194
            i32.add
            local.tee 3
            i32.const 50
            i32.gt_u
            br_if 1 (;@3;)
            local.get 3
            i32.const 2
            i32.shl
            i32.const 4016
            i32.add
            i32.load
            local.set 3
            local.get 2
            i32.const -1
            i32.add
            local.tee 7
            i32.eqz
            br_if 3 (;@1;)
            local.get 1
            i32.const 1
            i32.add
            local.set 1
          end
          local.get 1
          i32.load8_u
          local.tee 0
          i32.const 3
          i32.shr_u
          local.tee 6
          i32.const -16
          i32.add
          local.get 3
          i32.const 26
          i32.shr_s
          local.get 6
          i32.add
          i32.or
          i32.const 7
          i32.gt_u
          br_if 0 (;@3;)
          local.get 1
          i32.const 1
          i32.add
          local.set 6
          local.get 7
          i32.const -1
          i32.add
          local.set 1
          loop  ;; label = @4
            block  ;; label = @5
              local.get 0
              i32.const 255
              i32.and
              i32.const -128
              i32.add
              local.get 3
              i32.const 6
              i32.shl
              i32.or
              local.tee 3
              i32.const 0
              i32.lt_s
              br_if 0 (;@5;)
              local.get 4
              local.get 3
              i32.store
              local.get 5
              i32.const 0
              i32.store
              local.get 2
              local.get 1
              i32.sub
              return
            end
            local.get 1
            i32.eqz
            br_if 3 (;@1;)
            local.get 1
            i32.const -1
            i32.add
            local.set 1
            local.get 6
            i32.load8_u
            local.set 0
            local.get 6
            i32.const 1
            i32.add
            local.set 6
            local.get 0
            i32.const 192
            i32.and
            i32.const 128
            i32.eq
            br_if 0 (;@4;)
          end
        end
        i32.const 0
        i32.const 25
        i32.store offset=5128
        local.get 5
        i32.const 0
        i32.store
        i32.const -1
        local.set 6
      end
      local.get 6
      return
    end
    local.get 5
    local.get 3
    i32.store
    i32.const -2)
  (func $mbsinit (type 0) (param i32) (result i32)
    block  ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      i32.const 1
      return
    end
    local.get 0
    i32.load
    i32.eqz)
  (func $wcrtomb (type 1) (param i32 i32 i32) (result i32)
    (local i32)
    i32.const 1
    local.set 3
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 1
        i32.const 127
        i32.gt_u
        br_if 0 (;@2;)
        local.get 0
        local.get 1
        i32.store8
        i32.const 1
        return
      end
      block  ;; label = @2
        block  ;; label = @3
          i32.const 0
          i32.load offset=6204
          br_if 0 (;@3;)
          block  ;; label = @4
            local.get 1
            i32.const -128
            i32.and
            i32.const 57216
            i32.eq
            br_if 0 (;@4;)
            i32.const 0
            i32.const 25
            i32.store offset=5128
            br 2 (;@2;)
          end
          local.get 0
          local.get 1
          i32.store8
          i32.const 1
          return
        end
        block  ;; label = @3
          local.get 1
          i32.const 2047
          i32.gt_u
          br_if 0 (;@3;)
          local.get 0
          local.get 1
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=1
          local.get 0
          local.get 1
          i32.const 6
          i32.shr_u
          i32.const 192
          i32.or
          i32.store8
          i32.const 2
          return
        end
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.const 55296
            i32.lt_u
            br_if 0 (;@4;)
            local.get 1
            i32.const -8192
            i32.and
            i32.const 57344
            i32.ne
            br_if 1 (;@3;)
          end
          local.get 0
          local.get 1
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=2
          local.get 0
          local.get 1
          i32.const 12
          i32.shr_u
          i32.const 224
          i32.or
          i32.store8
          local.get 0
          local.get 1
          i32.const 6
          i32.shr_u
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=1
          i32.const 3
          return
        end
        block  ;; label = @3
          local.get 1
          i32.const -65536
          i32.add
          i32.const 1048575
          i32.gt_u
          br_if 0 (;@3;)
          local.get 0
          local.get 1
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=3
          local.get 0
          local.get 1
          i32.const 18
          i32.shr_u
          i32.const 240
          i32.or
          i32.store8
          local.get 0
          local.get 1
          i32.const 6
          i32.shr_u
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=2
          local.get 0
          local.get 1
          i32.const 12
          i32.shr_u
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=1
          i32.const 4
          return
        end
        i32.const 0
        i32.const 25
        i32.store offset=5128
      end
      i32.const -1
      local.set 3
    end
    local.get 3)
  (func $wctomb (type 3) (param i32 i32) (result i32)
    block  ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      i32.const 0
      return
    end
    local.get 0
    local.get 1
    i32.const 0
    call $wcrtomb)
  (func $fmod (type 24) (param f64 f64) (result f64)
    (local i64 i64 i64 i32 i64 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        local.get 1
        f64.ne
        br_if 0 (;@2;)
        local.get 1
        i64.reinterpret_f64
        local.tee 2
        i64.const 1
        i64.shl
        local.tee 3
        i64.eqz
        br_if 0 (;@2;)
        local.get 0
        i64.reinterpret_f64
        local.tee 4
        i64.const 52
        i64.shr_u
        i32.wrap_i64
        i32.const 2047
        i32.and
        local.tee 5
        i32.const 2047
        i32.ne
        br_if 1 (;@1;)
      end
      local.get 0
      local.get 1
      f64.mul
      local.tee 1
      local.get 1
      f64.div
      return
    end
    block  ;; label = @1
      local.get 4
      i64.const 1
      i64.shl
      local.tee 6
      local.get 3
      i64.gt_u
      br_if 0 (;@1;)
      local.get 0
      f64.const 0x0p+0 (;=0;)
      f64.mul
      local.get 0
      local.get 6
      local.get 3
      i64.eq
      select
      return
    end
    local.get 2
    i64.const 52
    i64.shr_u
    i32.wrap_i64
    i32.const 2047
    i32.and
    local.set 7
    block  ;; label = @1
      block  ;; label = @2
        local.get 5
        br_if 0 (;@2;)
        i32.const 0
        local.set 5
        block  ;; label = @3
          local.get 4
          i64.const 12
          i64.shl
          local.tee 3
          i64.const 0
          i64.lt_s
          br_if 0 (;@3;)
          loop  ;; label = @4
            local.get 5
            i32.const -1
            i32.add
            local.set 5
            local.get 3
            i64.const 1
            i64.shl
            local.tee 3
            i64.const -1
            i64.gt_s
            br_if 0 (;@4;)
          end
        end
        local.get 4
        i32.const 1
        local.get 5
        i32.sub
        i64.extend_i32_u
        i64.shl
        local.set 3
        br 1 (;@1;)
      end
      local.get 4
      i64.const 4503599627370495
      i64.and
      i64.const 4503599627370496
      i64.or
      local.set 3
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 7
        br_if 0 (;@2;)
        i32.const 0
        local.set 7
        block  ;; label = @3
          local.get 2
          i64.const 12
          i64.shl
          local.tee 6
          i64.const 0
          i64.lt_s
          br_if 0 (;@3;)
          loop  ;; label = @4
            local.get 7
            i32.const -1
            i32.add
            local.set 7
            local.get 6
            i64.const 1
            i64.shl
            local.tee 6
            i64.const -1
            i64.gt_s
            br_if 0 (;@4;)
          end
        end
        local.get 2
        i32.const 1
        local.get 7
        i32.sub
        i64.extend_i32_u
        i64.shl
        local.set 2
        br 1 (;@1;)
      end
      local.get 2
      i64.const 4503599627370495
      i64.and
      i64.const 4503599627370496
      i64.or
      local.set 2
    end
    block  ;; label = @1
      local.get 5
      local.get 7
      i32.le_s
      br_if 0 (;@1;)
      loop  ;; label = @2
        block  ;; label = @3
          local.get 3
          local.get 2
          i64.sub
          local.tee 6
          i64.const 0
          i64.lt_s
          br_if 0 (;@3;)
          local.get 6
          local.set 3
          local.get 6
          i64.const 0
          i64.ne
          br_if 0 (;@3;)
          local.get 0
          f64.const 0x0p+0 (;=0;)
          f64.mul
          return
        end
        local.get 3
        i64.const 1
        i64.shl
        local.set 3
        local.get 5
        i32.const -1
        i32.add
        local.tee 5
        local.get 7
        i32.gt_s
        br_if 0 (;@2;)
      end
      local.get 7
      local.set 5
    end
    block  ;; label = @1
      local.get 3
      local.get 2
      i64.sub
      local.tee 6
      i64.const 0
      i64.lt_s
      br_if 0 (;@1;)
      local.get 6
      local.set 3
      local.get 6
      i64.const 0
      i64.ne
      br_if 0 (;@1;)
      local.get 0
      f64.const 0x0p+0 (;=0;)
      f64.mul
      return
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        i64.const 4503599627370495
        i64.le_u
        br_if 0 (;@2;)
        local.get 3
        local.set 6
        br 1 (;@1;)
      end
      loop  ;; label = @2
        local.get 5
        i32.const -1
        i32.add
        local.set 5
        local.get 3
        i64.const 2251799813685248
        i64.lt_u
        local.set 7
        local.get 3
        i64.const 1
        i64.shl
        local.tee 6
        local.set 3
        local.get 7
        br_if 0 (;@2;)
      end
    end
    local.get 4
    i64.const -9223372036854775808
    i64.and
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        local.get 5
        i32.const 1
        i32.lt_s
        br_if 0 (;@2;)
        local.get 6
        i64.const -4503599627370496
        i64.add
        local.get 5
        i64.extend_i32_u
        i64.const 52
        i64.shl
        i64.or
        local.set 6
        br 1 (;@1;)
      end
      local.get 6
      i32.const 1
      local.get 5
      i32.sub
      i64.extend_i32_u
      i64.shr_u
      local.set 6
    end
    local.get 6
    local.get 3
    i64.or
    f64.reinterpret_i64)
  (func $frexp (type 25) (param f64 i32) (result f64)
    (local i64 i32)
    block  ;; label = @1
      local.get 0
      i64.reinterpret_f64
      local.tee 2
      i64.const 52
      i64.shr_u
      i32.wrap_i64
      i32.const 2047
      i32.and
      local.tee 3
      i32.const 2047
      i32.eq
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 3
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 0
          f64.const 0x0p+0 (;=0;)
          f64.ne
          br_if 0 (;@3;)
          local.get 1
          i32.const 0
          i32.store
          local.get 0
          return
        end
        local.get 0
        f64.const 0x1p+64 (;=1.84467e+19;)
        f64.mul
        local.get 1
        call $frexp
        local.set 0
        local.get 1
        local.get 1
        i32.load
        i32.const -64
        i32.add
        i32.store
        local.get 0
        return
      end
      local.get 1
      local.get 3
      i32.const -1022
      i32.add
      i32.store
      local.get 2
      i64.const -9218868437227405313
      i64.and
      i64.const 4602678819172646912
      i64.or
      f64.reinterpret_i64
      local.set 0
    end
    local.get 0)
  (func $scalbn (type 25) (param f64 i32) (result f64)
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const 1024
        i32.lt_s
        br_if 0 (;@2;)
        local.get 0
        f64.const 0x1p+1023 (;=8.98847e+307;)
        f64.mul
        local.set 0
        block  ;; label = @3
          local.get 1
          i32.const 2047
          i32.ge_u
          br_if 0 (;@3;)
          local.get 1
          i32.const -1023
          i32.add
          local.set 1
          br 2 (;@1;)
        end
        local.get 0
        f64.const 0x1p+1023 (;=8.98847e+307;)
        f64.mul
        local.set 0
        local.get 1
        i32.const 3069
        local.get 1
        i32.const 3069
        i32.lt_s
        select
        i32.const -2046
        i32.add
        local.set 1
        br 1 (;@1;)
      end
      local.get 1
      i32.const -1023
      i32.gt_s
      br_if 0 (;@1;)
      local.get 0
      f64.const 0x1p-969 (;=2.00417e-292;)
      f64.mul
      local.set 0
      block  ;; label = @2
        local.get 1
        i32.const -1992
        i32.le_u
        br_if 0 (;@2;)
        local.get 1
        i32.const 969
        i32.add
        local.set 1
        br 1 (;@1;)
      end
      local.get 0
      f64.const 0x1p-969 (;=2.00417e-292;)
      f64.mul
      local.set 0
      local.get 1
      i32.const -2960
      local.get 1
      i32.const -2960
      i32.gt_s
      select
      i32.const 1938
      i32.add
      local.set 1
    end
    local.get 0
    local.get 1
    i32.const 1023
    i32.add
    i64.extend_i32_u
    i64.const 52
    i64.shl
    f64.reinterpret_i64
    f64.mul)
  (func $__multi3 (type 26) (param i32 i64 i64 i64 i64)
    (local i64)
    local.get 0
    local.get 4
    local.get 1
    i64.mul
    local.get 2
    local.get 3
    i64.mul
    i64.add
    local.get 3
    i64.const 32
    i64.shr_u
    local.tee 2
    local.get 1
    i64.const 32
    i64.shr_u
    local.tee 4
    i64.mul
    i64.add
    local.get 3
    i64.const 4294967295
    i64.and
    local.tee 3
    local.get 1
    i64.const 4294967295
    i64.and
    local.tee 1
    i64.mul
    local.tee 5
    i64.const 32
    i64.shr_u
    local.get 3
    local.get 4
    i64.mul
    i64.add
    local.tee 3
    i64.const 32
    i64.shr_u
    i64.add
    local.get 3
    i64.const 4294967295
    i64.and
    local.get 2
    local.get 1
    i64.mul
    i64.add
    local.tee 1
    i64.const 32
    i64.shr_u
    i64.add
    i64.store offset=8
    local.get 0
    local.get 1
    i64.const 32
    i64.shl
    local.get 5
    i64.const 4294967295
    i64.and
    i64.or
    i64.store)
  (table (;0;) 6 6 funcref)
  (memory (;0;) 2)
  (global $__stack_pointer (mut i32) (i32.const 71792))
  (export "memory" (memory 0))
  (export "_start" (func $_start))
  (elem (;0;) (i32.const 1) func $__stdio_seek $__stdio_write $__stdio_read $__stdio_close $__stdout_write)
  (data $.rodata (i32.const 1024) "raspberry\00-+   0X0x\00-0X+0X 0X-0x+0x 0x\00 %hu\00/home/kaikai/measurement/iot-benchmark/images/datas/sensor_data.txt\00/home/pi/WasmRL-PPO/wasm-rl-ppo/benchmark/sensor_data.txt\00/home/mini-edge/WasmRL-PPO/wasm-rl-ppo/benchmark/sensor_data.txt\00r\00jetsonnano\00nan\00inf\00rwa\00NAN\00INF\00x86\00.\00(null)\00Failed to open data file: %s\0a\00\0aDevice not supported\0a\00Usage: %s <device>\0a\00Support for formatting long double values is currently disabled.\0aTo enable it, add -lc-printscan-long-double to the link command.\0a\00panic!\0a\00Success\00Illegal byte sequence\00Domain error\00Result not representable\00Not a tty\00Permission denied\00Operation not permitted\00No such file or directory\00No such process\00File exists\00Value too large for data type\00No space left on device\00Out of memory\00Resource busy\00Interrupted system call\00Resource temporarily unavailable\00Invalid seek\00Cross-device link\00Read-only file system\00Directory not empty\00Connection reset by peer\00Operation timed out\00Connection refused\00Host is unreachable\00Address in use\00Broken pipe\00I/O error\00No such device or address\00No such device\00Not a directory\00Is a directory\00Text file busy\00Exec format error\00Invalid argument\00Argument list too long\00Symbolic link loop\00Filename too long\00Too many open files in system\00No file descriptors available\00Bad file descriptor\00No child process\00Bad address\00File too large\00Too many links\00No locks available\00Resource deadlock would occur\00State not recoverable\00Previous owner died\00Operation canceled\00Function not implemented\00No message of desired type\00Identifier removed\00Link has been severed\00Protocol error\00Bad message\00Not a socket\00Destination address required\00Message too large\00Protocol wrong type for socket\00Protocol not available\00Protocol not supported\00Not supported\00Address family not supported by protocol\00Address not available\00Network is down\00Network unreachable\00Connection reset by network\00Connection aborted\00No buffer space available\00Socket is connected\00Socket not connected\00Operation already in progress\00Operation in progress\00Stale file handle\00Quota exceeded\00Multihop attempted\00Capabilities insufficient\00\00\00\00\00\00u\02N\00\d6\01\e2\04\b9\04\18\01\8e\05\ed\02\16\04\f2\00\97\03\01\038\05\af\01\82\01O\03/\04\1e\00\d4\05\a2\00\12\03\1e\03\c2\01\de\03\08\00\ac\05\00\01d\02\f1\01e\054\02\8c\02\cf\02-\03L\04\e3\05\9f\02\f8\04\1c\05\08\05\b1\02K\05\15\02x\00R\02<\03\f1\03\e4\00\c3\03}\04\cc\00\aa\03y\05$\02n\01m\03\22\04\ab\04D\00\fb\01\ae\00\83\03`\00\e5\01\07\04\94\04^\04+\00X\019\01\92\00\c2\05\9b\01C\02F\01\f6\05\00\00\00\00\00\00\19\00\0a\00\19\19\19\00\00\00\00\05\00\00\00\00\00\00\09\00\00\00\00\0b\00\00\00\00\00\00\00\00\19\00\11\0a\19\19\19\03\0a\07\00\01\1b\09\0b\18\00\00\09\06\0b\00\00\0b\00\06\19\00\00\00\19\19\19\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0e\00\00\00\00\00\00\00\00\19\00\0a\0d\19\19\19\00\0d\00\00\02\00\09\0e\00\00\00\09\00\0e\00\00\0e\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0c\00\00\00\00\00\00\00\00\00\00\00\13\00\00\00\00\13\00\00\00\00\09\0c\00\00\00\00\00\0c\00\00\0c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\00\00\00\00\0f\00\00\00\04\0f\00\00\00\00\09\10\00\00\00\00\00\10\00\00\10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\12\00\00\00\00\00\00\00\00\00\00\00\11\00\00\00\00\11\00\00\00\00\09\12\00\00\00\00\00\12\00\00\12\00\00\1a\00\00\00\1a\1a\1a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\1a\00\00\00\1a\1a\1a\00\00\00\00\00\00\09\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\17\00\00\00\00\17\00\00\00\00\09\14\00\00\00\00\00\14\00\00\14\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\16\00\00\00\00\00\00\00\00\00\00\00\15\00\00\00\00\15\00\00\00\00\09\16\00\00\00\00\00\16\00\00\16\00\000123456789ABCDEF\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\00\01\02\03\04\05\06\07\08\09\ff\ff\ff\ff\ff\ff\ff\0a\0b\0c\0d\0e\0f\10\11\12\13\14\15\16\17\18\19\1a\1b\1c\1d\1e\1f !\22#\ff\ff\ff\ff\ff\ff\0a\0b\0c\0d\0e\0f\10\11\12\13\14\15\16\17\18\19\1a\1b\1c\1d\1e\1f !\22#\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\00\01\02\04\07\03\06\05\00\00\00\00\00\00\00\0a\00\00\00d\00\00\00\e8\03\00\00\10'\00\00\a0\86\01\00@B\0f\00\80\96\98\00\00\e1\f5\05\02\00\00\c0\03\00\00\c0\04\00\00\c0\05\00\00\c0\06\00\00\c0\07\00\00\c0\08\00\00\c0\09\00\00\c0\0a\00\00\c0\0b\00\00\c0\0c\00\00\c0\0d\00\00\c0\0e\00\00\c0\0f\00\00\c0\10\00\00\c0\11\00\00\c0\12\00\00\c0\13\00\00\c0\14\00\00\c0\15\00\00\c0\16\00\00\c0\17\00\00\c0\18\00\00\c0\19\00\00\c0\1a\00\00\c0\1b\00\00\c0\1c\00\00\c0\1d\00\00\c0\1e\00\00\c0\1f\00\00\c0\00\00\00\b3\01\00\00\c3\02\00\00\c3\03\00\00\c3\04\00\00\c3\05\00\00\c3\06\00\00\c3\07\00\00\c3\08\00\00\c3\09\00\00\c3\0a\00\00\c3\0b\00\00\c3\0c\00\00\c3\0d\00\00\d3\0e\00\00\c3\0f\00\00\c3\00\00\0c\bb\01\00\0c\c3\02\00\0c\c3\03\00\0c\c3\04\00\0c\db")
  (data $.data (i32.const 4224) "\e8\03\f4\01\88\13\00\00\05\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\05\00\00\00\01\00\00\008\14\00\00\00\04\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\0a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\88\10\00\00\00\00\00\00\05\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\01\00\00\00`\18\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\ff\ff\ff\ff\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\11\00\00"))
