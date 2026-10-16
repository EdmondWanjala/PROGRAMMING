ASSEMBLY LANGUAGE — WORKED EXAMPLES

EXAMPLE 1: BASIC PROGRAM AND EXIT STATUS

File: "01_basic.asm"

section .text
    global _start

_start:
    mov rax, 60
    mov rdi, 0
    syscall

Explanation:

- "RAX = 60" selects Linux x86-64 "exit".
- "RDI = 0" sets the exit status to success.
- "SYSCALL" requests termination.

Build and run:

nasm -f elf64 01_basic.asm -o 01_basic.o
ld 01_basic.o -o 01_basic
./01_basic

EXAMPLE 2: ADDITION

File: "02_add.asm"

section .text
    global _start

_start:
    mov rax, 12
    mov rbx, 8
    add rax, rbx       ; RAX = 20

    mov rdi, 0
    mov rax, 60
    syscall

Working:

- Initial value: "RAX = 12"
- Add "RBX = 8"
- Result: "RAX = 20"

The program does not print the result. Inspect "RAX" with a debugger before the exit instructions to verify it.

EXAMPLE 3: SUBTRACTION, MULTIPLICATION, AND DIVISION

File: "03_arithmetic.asm"

section .text
    global _start

_start:
    ; Subtraction: 20 - 6 = 14
    mov rax, 20
    sub rax, 6

    ; Multiplication: 7 * 4 = 28
    mov rax, 7
    imul rax, 4

    ; Unsigned division: 29 / 5
    ; Quotient = 5, remainder = 4
    mov rax, 29
    xor rdx, rdx
    mov rbx, 5
    div rbx

    ; RAX = 5, RDX = 4
    mov rax, 60
    xor rdi, rdi
    syscall

Note: "DIV" uses "RDX:RAX" as the dividend for a 64-bit divisor. Clear "RDX" here because the dividend is the unsigned value 29.

EXAMPLE 4: PRINTING TEXT

File: "04_print.asm"

section .data
    message db "Hello, Assembly!", 10
    length equ $ - message

section .text
    global _start

_start:
    mov rax, 1              ; write
    mov rdi, 1              ; stdout
    lea rsi, [rel message]  ; address
    mov rdx, length         ; byte count
    syscall

    mov rax, 60             ; exit
    xor rdi, rdi
    syscall

Expected output:

Hello, Assembly!

Explanation:

- Linux "write" syscall number is 1.
- File descriptor 1 is standard output.
- "RSI" holds the buffer address.
- "RDX" holds the number of bytes to write.
- "10" is the newline character.

EXAMPLE 5: COMPARISON AND DECISION-MAKING

File: "05_compare.asm"

section .text
    global _start

_start:
    mov rax, 15
    mov rbx, 10

    cmp rax, rbx
    jg greater

    ; This path executes if RAX is not greater
    mov rdi, 0
    jmp finish

greater:
    mov rdi, 1

finish:
    mov rax, 60
    syscall

The program exits with status 1 because 15 is greater than 10. It exits with status 0 otherwise.

The example uses a signed comparison ("JG"). For unsigned values, choose the appropriate unsigned jump.

EXAMPLE 6: LOOPING FIVE TIMES

File: "06_loop.asm"

section .text
    global _start

_start:
    mov rcx, 5
    xor rbx, rbx

loop_start:
    inc rbx
    dec rcx
    jnz loop_start

    ; RBX = 5
    mov rax, 60
    xor rdi, rdi
    syscall

Working:

- Start with "RCX = 5", "RBX = 0".
- Each iteration increases "RBX" by one and decreases "RCX" by one.
- The loop stops when "RCX = 0".
- Final value: "RBX = 5".

EXAMPLE 7: SUMMING AN ARRAY

File: "07_array_sum.asm"

section .data
    numbers dq 10, 20, 30, 40, 50
    count equ 5

section .text
    global _start

_start:
    xor rax, rax        ; sum = 0
    xor rcx, rcx        ; index = 0

sum_loop:
    cmp rcx, count
    jge sum_done

    add rax, [rel numbers + rcx*8]
    inc rcx
    jmp sum_loop

sum_done:
    ; RAX = 150
    mov rax, 60
    xor rdi, rdi
    syscall

Working:

Sum = 10 + 20 + 30 + 40 + 50
    = 150

Each "dq" element occupies 8 bytes, so the address uses "RCX*8".

Important: this example uses the array index only while it is less than "count", preventing an out-of-bounds read.

EXAMPLE 8: BITWISE OPERATIONS

File: "08_bitwise.asm"

section .text
    global _start

_start:
    mov rax, 12
    mov rbx, 10

    and rax, rbx       ; 12 AND 10 = 8

    mov rax, 12
    or rax, rbx        ; 12 OR 10 = 14

    mov rax, 12
    xor rax, rbx       ; 12 XOR 10 = 6

    mov rax, 60
    xor rdi, rdi
    syscall

Binary working:

12 = 1100
10 = 1010

AND  1000 = 8
OR   1110 = 14
XOR  0110 = 6

EXAMPLE 9: MEMORY AND ADDRESSES

File: "09_memory.asm"

section .data
    value dq 100

section .text
    global _start

_start:
    mov rax, [rel value]    ; load stored value: 100
    lea rbx, [rel value]    ; load address of value

    add rax, 50             ; RAX = 150

    mov rax, 60
    xor rdi, rdi
    syscall

Key distinction:

mov rax, [rel value]

loads the data stored at "value".

lea rbx, [rel value]

calculates the address of "value".

EXAMPLE 10: USING A FUNCTION WITH CALL AND RET

File: "10_function.asm"

section .text
    global _start

_start:
    mov rdi, 12
    mov rsi, 8
    call add_numbers

    ; RAX = 20
    mov rax, 60
    xor rdi, rdi
    syscall

add_numbers:
    mov rax, rdi
    add rax, rsi
    ret

The function receives its first two integer arguments in "RDI" and "RSI" and returns the sum in "RAX" under the Linux x86-64 System V calling convention.

This minimal example does not call a C library function. It uses a direct system-call exit after the result is calculated.

EXAMPLE 11: SIGNED DIVISION

File: "11_signed_division.asm"

section .text
    global _start

_start:
    mov rax, -17
    cqo
    mov rbx, 5
    idiv rbx

    ; RAX = -3
    ; RDX = -2

    mov rax, 60
    xor rdi, rdi
    syscall

Working:

-17 / 5 = -3 remainder -2

Integer division truncates toward zero. Therefore, the remainder has the sign of the dividend for this example.

"CQO" sign-extends "RAX" into the combined "RDX:RAX" dividend before "IDIV".

EXAMPLE 12: PRINTING AN INTEGER — CONCEPT

Printing a number is more complex than printing a fixed string because the integer must first be converted to decimal ASCII characters.

For example:

Integer: 1234

Repeated division by 10:
1234 / 10 = 123 remainder 4
 123 / 10 = 12  remainder 3
  12 / 10 = 1   remainder 2
   1 / 10 = 0   remainder 1

The remainders are produced in reverse order. A program can store the digits in reverse, then print them from the last digit to the first.

Important steps:

1. Handle zero separately.
2. Repeatedly divide by 10.
3. Convert each remainder to ASCII by adding "'0'" (decimal 48).
4. Store the digits in a buffer.
5. Write the buffer to standard output.
6. For signed numbers, handle the negative sign and the absolute-value edge case.

This technique is useful for building a reusable integer-output routine.

EXAMPLE 13: DEBUGGING A PROGRAM

Build a debug-friendly executable:

nasm -f elf64 07_array_sum.asm -o 07_array_sum.o
ld -g 07_array_sum.o -o 07_array_sum
gdb ./07_array_sum

Inside GDB:

break _start
run
stepi
info registers
disassemble
quit

To inspect memory around the array, use its symbol address if symbols are available, or examine the relevant address using GDB's memory examination commands.

Observe how the registers change after each instruction. This is one of the best ways to understand assembly.

EXAMPLE 14: BUILDING AND INSPECTING MACHINE CODE

Assemble:

nasm -f elf64 02_add.asm -o 02_add.o

Inspect object-file instructions:

objdump -d -Mintel 02_add.o

Inspect symbols:

nm 02_add.o

Check the file format:

file 02_add.o

These commands help connect assembly mnemonics to machine-code bytes, symbols, and executable formats.

EXAMPLE 15: PRACTICE EXERCISES

Try these without looking at the solutions first.

1. Load 25 and 15 into registers and calculate their sum.
2. Calculate 100 − 37.
3. Multiply 9 by 7.
4. Divide 47 by 6 and find both quotient and remainder.
5. Compare two signed integers and select the greater.
6. Use a loop to count from 1 to 10.
7. Sum the array "dq 2, 4, 6, 8, 10".
8. Count how many elements in an array are positive.
9. Find the largest value in an array.
10. Write a function that returns the square of an integer.
11. Print a negative integer as decimal text.
12. Write a program that prints a message and exits successfully.

Suggested answers

1. 40
2. 63
3. 63
4. Quotient = 7, remainder = 5
5. Depends on the two input values.
6. Final count = 10
7. Sum = 30
8. Depends on the array.
9. Depends on the array.
10. For input (n), return (n \times n), subject to overflow limits.
11. Convert the magnitude into decimal digits and print a minus sign.
12. Use Linux "write" followed by "exit".

FINAL CHECKLIST

Before running an assembly program, check:

- Is the processor architecture correct?
- Are the register sizes correct?
- Are memory operands and addresses valid?
- Are signed and unsigned operations distinguished?
- Are the correct flags and jump conditions used?
- Is the stack balanced and aligned where required?
- Are system-call numbers and argument registers correct for the target OS?
- Have you tested zero, negative values, boundary conditions, and overflow?