# Libasm 🤖

This project is one of the advanced assignments in the 42Cursus.<br>
The goal is to reimplement a subset of standard C library functions in **x86-64 Assembly**,and to gain hands-on experience with low-level programming and the basics of assembly.

## Usage 💻

### 1.Build
```bash
make
```

### 2.Compile
```bash
cc -no-pie -I includes main.c libasm.a
```

### 3.Execute
```bash
./a.out
```

## Points Learned 📋
- Basic assembly instructions (e.g., mov, cmp, jmp, ret)
- The System V ABI calling convention using registers (rdi, rsi, rdx, etc.)
- Implementation of write and read using syscall and explicit setting of errno
- Integration of NASM assembly and C code with a Makefile-based build system
- Understanding the build flow combining assembly and C
- Compilation flow from preprocessing to linking
- Difference between Intel and AT&T syntax in assembly