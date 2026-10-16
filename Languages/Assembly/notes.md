                ASSEMBLY LANGUAGE

Assembly language is a low-level programming language that represents machine instructions using mnemonic codes such as "MOV", "ADD", "SUB", and "JMP".
It is closely related to a processor's Instruction Set Architecture (ISA).
    - Machine language: binary instructions executed by the CPU.
    - Assembly language: human-readable representation of processor instructions.
    - High-level languages: languages such as C, C++, and Python, which provide greater abstraction.
An assembler translates assembly source code into machine code/object code.
Applications: embedded systems, microcontrollers, operating systems, device drivers, computer architecture, firmware, performance-critical routines, and hardware debugging.

PROCESSOR ARCHITECTURES
Assembly depends on the target processor.
    - x86-64: common in desktop and laptop computers; used in these notes.
    - x86-32: older 32-bit Intel/AMD systems.
    - ARM/AArch64: common in phones, single-board computers, and embedded devices.
    - RISC-V: an open instruction set used in education, research, and embedded systems.
Instructions and registers are not universally interchangeable between architectures.

BASIC COMPUTER ORGANIZATION
A CPU executes instructions using registers, arithmetic/logic hardware, a control unit, and memory.
Important components
    - ALU: performs arithmetic and logical operations.
    - Control unit: directs instruction execution.
    - Registers: very fast storage inside the CPU.
    - RAM: stores program instructions and data while running.
    - Stack: memory region used for function calls, local data, and saved values.
    - Program counter: identifies the next instruction; called "RIP" in x86-64.
    - Flags register: stores status information from operations, including zero, carry, sign, and overflow flags.

X86-64 REGISTERS
General-purpose registers
64-bit| 32-bit| 16-bit| 8-bit
RAX| EAX| AX| AL
RBX| EBX| BX| BL
RCX| ECX| CX| CL
RDX| EDX| DX| DL
RSI| ESI| SI| SIL
RDI| EDI| DI| DIL
RBP| EBP| BP| BPL
RSP| ESP| SP| SPL
Additional registers include "R8"–"R15".
Common conventions:
    - "RAX": often used for arithmetic results and function return values.
    - "RDI", "RSI", "RDX", "RCX", "R8", "R9": first six integer/pointer arguments under the standard Linux x86-64 System V calling convention.
    - "RSP": stack pointer.
    - "RBP": often used as a stack-frame pointer, but not always.
    - "RIP": instruction pointer.
    - "RFLAGS": status and control flags.
Writing to a 32-bit register such as "EAX" clears the upper 32 bits of its corresponding 64-bit register, "RAX".

ASSEMBLY PROGRAM STRUCTURE
A typical NASM program contains:
    - "section .data": initialized data.
    - "section .bss": reserved uninitialized storage.
    - "section .text": executable instructions.
    - "global _start": exports the entry-point label for a simple Linux program.
    - Labels: named positions in code or data.
    - Comments: introduced by ";" in NASM.
Example:
section .data
    number dq 10
section .text
    global _start
_start:
    mov rax, 60
    xor rdi, rdi
    syscall
This exits a Linux program with status code 0. Linux x86-64 syscall number 60 is "exit"; the status code is supplied in "RDI".

DATA DECLARATIONS AND SIZES
NASM data directives:
    - "db": define byte (8 bits).
    - "dw": define word (16 bits).
    - "dd": define doubleword (32 bits).
    - "dq": define quadword (64 bits).
    - "resb", "resw", "resd", "resq": reserve storage of the corresponding sizes.
Example:
section .data
    age db 20
    count dw 1000
    value dd 250000
    total dq 5000000000
    message db "Hello", 10
    message_len equ $ - message
"equ" defines a constant. "$" represents the current assembly location, so "$ - message" calculates the string length in this example.
Remember: "db" specifies storage size; it does not automatically determine whether a value is signed or unsigned. Signedness depends on how instructions interpret the bits.

BASIC INSTRUCTION SYNTAX
General pattern:
mnemonic destination, source
Example:
    mov rax, 5
    add rax, 3
After execution, "RAX = 8".
In NASM Intel syntax, the destination is generally written first.
"MOV" copies a value; it does not normally remove the original value from the source.
Most x86 instructions cannot directly move data from one memory location to another. Use a register as an intermediate step.

DATA TRANSFER INSTRUCTIONS
    - "MOV": copy data.
    - "LEA": calculate an effective address.
    - "PUSH": place a value on the stack.
    - "POP": remove the top stack value into a destination.
    - "XCHG": exchange values.
Examples:
mov rax, 25
mov rbx, rax
lea rdi, [rel message]
push rax
pop rcx
"LEA" calculates an address expression; it does not read the contents at that address.

ARITHMETIC INSTRUCTIONS
- "ADD": addition.
- "SUB": subtraction.
- "INC": increment by one.
- "DEC": decrement by one.
- "IMUL": signed multiplication.
- "MUL": unsigned multiplication.
- "IDIV": signed division.
- "DIV": unsigned division.
- "NEG": two's-complement negation.
Examples:
mov rax, 10
add rax, 5       ; RAX = 15
sub rax, 3       ; RAX = 12
imul rax, 2      ; RAX = 24
dec rax          ; RAX = 23
For "DIV" and "IDIV", dividend and result registers depend on operand size. For 64-bit division, the dividend is "RDX:RAX"; quotient goes to "RAX" and remainder to "RDX".
Before unsigned 64-bit division, "xor rdx, rdx" is commonly used when the dividend fits in "RAX". Before signed division, use the appropriate sign-extension instruction, commonly "cqo" for a signed 64-bit dividend in "RAX".
Division by zero and quotient overflow cause a processor exception.

LOGICAL AND BITWISE INSTRUCTIONS
- "AND": bitwise AND.
- "OR": bitwise OR.
- "XOR": bitwise exclusive OR.
- "NOT": invert all bits.
- "TEST": perform an AND for flag-setting without saving the result.
- "SHL" / "SAL": shift left.
- "SHR": logical right shift.
- "SAR": arithmetic right shift.
Example:
mov rax, 12       ; 1100 binary
and rax, 10       ; 1010 binary
                  ; result: 1000 binary = 8
xor rbx, rbx      ; set RBX to zero
Shifting left by one often corresponds to multiplication by two for unsigned values when no relevant bits are lost. Right shifts can correspond to division by powers of two, but signed rounding and overflow details matter.

FLAGS AND COMPARISONS
Important flags:
- "ZF" — Zero Flag: result was zero.
- "CF" — Carry Flag: unsigned carry or borrow information.
- "SF" — Sign Flag: copies the sign bit of a result.
- "OF" — Overflow Flag: signed arithmetic overflow.
- "PF" — Parity Flag: parity of the low byte.
"CMP a, b" sets flags as if calculating "a - b", but does not store the subtraction result.
"TEST a, b" sets flags based on "a AND b" without storing the result.
Choose conditions based on whether values are signed or unsigned.
Conditional jumps
- "JE" / "JZ": equal / zero.
- "JNE" / "JNZ": not equal / not zero.
- "JG", "JGE", "JL", "JLE": signed comparisons.
- "JA", "JAE", "JB", "JBE": unsigned comparisons.
- "JC": jump if carry is set.
- "JO": jump if overflow is set.
- "JMP": unconditional jump.

DECISION-MAKING
Assembly uses labels and conditional jumps to implement "if", "else", and similar logic.
Example:
cmp rax, rbx
jg greater
jl less
; values are equal
jmp done
greater:
; RAX > RBX, signed comparison
jmp done
less:
; RAX < RBX, signed comparison
done:
The instruction following a conditional jump is executed normally if the condition is false.

LOOPS
Assembly loops are built from labels, counters, and conditional jumps.
Example:
mov rcx, 5
loop_start:
; body of loop
dec rcx
jnz loop_start
This repeats five times if the counter is initialized as shown and is not modified elsewhere.
The "LOOP" instruction also exists, but explicit counter updates and conditional jumps are often easier to understand and control.

MEMORY ADDRESSING
Common addressing forms:
- Immediate: "mov rax, 10"
- Register: "mov rax, rbx"
- Direct memory: "mov rax, [rel value]"
- Base plus displacement: "mov rax, [rbx + 8]"
- Base plus index and scale: "mov rax, [rbx + rcx*8]"
Square brackets mean access memory at an address.
For example:
mov rax, [rel number]
loads the stored value, whereas:
lea rax, [rel number]
calculates the address of "number".
Memory operands need suitable sizes when the assembler cannot infer them. For example, "mov byte [rel flag], 1" specifies a one-byte destination.

ARRAYS AND STRINGS
An array is a sequence of elements stored in memory.
For an array of 64-bit integers:
    mov rax, [rel numbers + rcx*8]
Here, "RCX" is the element index and each element occupies 8 bytes.
Typical element offsets:
- Byte array: index × 1.
- 16-bit array: index × 2.
- 32-bit array: index × 4.
- 64-bit array: index × 8.
Strings are sequences of bytes. Null-terminated strings use "0" as an end marker, while other interfaces use an explicit length.

THE STACK AND FUNCTION CALLS
The stack is a last-in, first-out memory structure.
- "PUSH": adds a value to the stack.
- "POP": retrieves the most recently pushed value.
- "CALL": saves a return address and transfers control.
- "RET": returns to the saved address.
On x86-64, the stack normally grows toward lower addresses.
Example:
push rbx
; preserve RBX while using it
pop rbx
Functions must follow the relevant calling convention, including rules for argument registers, return values, preserved registers, and stack alignment.
Under the System V AMD64 ABI, a caller must align the stack appropriately before a function call; at ordinary function entry, the return address means "RSP" is typically 8 bytes off a 16-byte boundary. Do not assume every platform uses the same convention.

PROCEDURES AND PARAMETERS
A procedure or function is a reusable block of instructions.
Under the Linux x86-64 System V calling convention:
    - Integer/pointer arguments 1–6: "RDI", "RSI", "RDX", "RCX", "R8", "R9".
    - Integer/pointer return value: usually "RAX".
    - "RBX", "RBP", and "R12"–"R15" are callee-saved.
    - Many other general-purpose registers are caller-saved.
A function that changes a callee-saved register must restore it before returning.
The "CALL" instruction is not the same as a Linux system call ("SYSCALL").

SYSTEM CALLS ON LINUX X86-64
A system call requests a service from the operating system.
For the Linux x86-64 syscall convention:
- "RAX": syscall number.
- "RDI", "RSI", "RDX", "R10", "R8", "R9": arguments 1–6.
- "SYSCALL": enter the kernel.
- Return value: "RAX"; negative values generally indicate errors.
Common examples:
- "read": syscall 0.
- "write": syscall 1.
- "exit": syscall 60.
These numbers and conventions are specific to Linux x86-64, not universal across operating systems or architectures.

SIGNED AND UNSIGNED DATA
A bit pattern can represent different values depending on interpretation.
For 8 bits:
- Unsigned range: 0 to 255.
- Two's-complement signed range: −128 to 127.
Signed values use instructions and comparisons that interpret the sign bit appropriately.
Example: after "cmp rax, rbx", use "JL" for a signed less-than comparison and "JB" for an unsigned below comparison.
Overflow must be considered in arithmetic, particularly when values are stored in fixed-width registers.

ASSEMBLY DIRECTIVES AND SYMBOLS
Directives guide the assembler; they are not generally CPU instructions.
- "section": selects a section.
- "global": exports a symbol.
- "extern": declares a symbol defined elsewhere.
- "equ": defines a constant.
- "times": repeats data or instructions.
- "align": requests alignment.
Example:
section .data
    limit equ 100
    zeros times 16 db 0

ASSEMBLING AND RUNNING ON UBUNTU
Install NASM and common build tools:
sudo apt update
sudo apt install nasm binutils gdb
For a standalone Linux x86-64 NASM program:
nasm -f elf64 program.asm -o program.o
ld program.o -o program
./program
The linker command above is suitable for a program with its own "_start" entry point and direct Linux system calls. Programs using C library functions generally need a C compiler/linker and the correct runtime setup.
Useful inspection commands:
file program
objdump -d program
nm program
gdb ./program

DEBUGGING
Use GDB to inspect registers, instructions, and memory.
gdb ./program
Useful commands:
break _start
run
stepi
nexti
info registers
x/8gx $rsp
disassemble
quit
- "stepi": execute one machine instruction.
- "info registers": display register values.
- "x/8gx $rsp": inspect eight 8-byte values near the stack pointer.
- "disassemble": display machine instructions.

COMMON ERRORS
1. Confusing an address with the value stored at that address.
2. Using the wrong register width.
3. Using signed jumps for unsigned comparisons, or vice versa.
4. Forgetting that arithmetic can overflow.
5. Dividing without preparing the dividend registers.
6. Overwriting a register that must be preserved.
7. Breaking stack alignment before a function call.
8. Accessing array elements beyond their bounds.
9. Assuming syscall numbers are the same on all systems.
10. Forgetting that labels are resolved by the assembler/linker, not executed as data.

ENGINEERING APPLICATIONS
Assembly is useful for understanding:
- CPU instruction execution and processor architecture.
- Microcontroller programming and embedded firmware.
- Interrupts, memory-mapped I/O, and hardware registers.
- Digital systems and low-level control.
- Compiler output and optimization.
- Operating-system kernels and boot processes.
- Performance analysis and debugging.
For microcontrollers, always consult the specific chip's architecture and datasheet. A memory-mapped hardware register must be accessed according to the hardware's required width, address, and ordering rules.

BEST PRACTICES
- Comment the purpose of each non-obvious instruction sequence.
- Use meaningful labels and constants.
- Keep track of register contents and widths.
- Document calling conventions and register preservation.
- Validate array indexes and input lengths.
- Follow ABI stack-alignment requirements.
- Test boundary cases, overflow, and invalid input.
- Use a debugger and disassembler to verify what the CPU executes.
- Learn the architecture before copying code from another processor family.
Core principle: Assembly programming requires tracking exactly which values are in registers, which are in memory, how each instruction changes processor state, and which execution path follows.