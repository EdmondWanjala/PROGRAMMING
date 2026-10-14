                C PROGRAMMING 
C is a general-purpose, procedural programming language developed by Dennis Ritchie. It provides efficient execution, structured programming, and low-level access to memory and hardware.

Key characteristics:
- Compiled: source code is translated into machine code by a compiler.
- Statically typed: variables have declared types.
- Procedural: programs can be organized into functions and sequential operations.
- Portable: standards-compliant programs can be compiled on different platforms, subject to platform-specific differences.
- Efficient: provides direct control over memory and data representation.
- Low-level capabilities: supports pointers, bitwise operations, and hardware-oriented programming.

Applications
- Operating systems and system utilities.
- Embedded systems and microcontrollers.
- Device drivers and firmware.
- Robotics and industrial control.
- Compilers, interpreters, and language runtimes.
- Networking software and databases.
- Digital signal processing and scientific computing.
- Performance-critical libraries and applications.

C development environment:
A C development environment typically includes:
    - Source-code editor or IDE.
    - C compiler, such as GCC, Clang, or MSVC.
    - Linker, which combines compiled object files and libraries.
    - Debugger, such as GDB.
    - Build tools, such as Make or CMake.
    - Terminal for compiling and running programs.

Compilation process:
1. Preprocessing: processes directives such as "#include" and "#define".
2. Compilation: translates C source into lower-level code.
3. Assembly: produces object files containing machine code.
4. Linking: combines object files and libraries into an executable.
5. Execution: the operating system loads and runs the program.

A common GCC command is:
"gcc -std=c11 -Wall -Wextra -Wpedantic program.c -o program".
Here, "-std=c11" selects the C11 language standard, warning options help identify potential problems, and "-o" specifies the executable name.

Structure of c program:
A basic C program contains:
    - Preprocessor directives, such as "#include".
    - Function declarations or definitions.
    - The "main()" function, the program's entry point in a hosted C application.
    - Statements and expressions.
    - Return statements where required.
Statements generally end with a semicolon. Braces "{}" group statements into blocks.
C is case-sensitive: "total", "Total", and "TOTAL" are different identifiers.
Comments use "//" for a single line and "/* ... */" for a block.

Variables and constants:
A variable is a named object used to store a value of a particular type.
A declaration specifies a type and one or more names. Initialization gives a variable its initial value.

Common examples:
- "int": integer values.
- "char": a character-sized integer type, often used for characters.
- "float": single-precision floating-point values.
- "double": double-precision floating-point values.
- "_Bool": Boolean type; "bool" is available through "stdbool.h" in C99 through C17.
- Arrays: collections of elements of the same type.
- Pointers: objects that store addresses.
- Structures: groups of named members, potentially of different types.
Constants can be expressed using "const"-qualified objects or preprocessor macros defined with "#define". 
These mechanisms differ in scope, type handling, and compile-time behavior.

Important distinctions:
- A local variable that is not initialized has an indeterminate value.
- Objects with static storage duration are zero-initialized if no explicit initializer is supplied.
- "const" prevents modification through that particular qualified access; it does not necessarily make an object a compile-time constant expression.
Use meaningful identifiers and initialize variables before reading their values.

Dta types and type modifiers:
Fundamental types
    - "char", "signed char", "unsigned char".
    - "short", "int", "long", "long long", with signed or unsigned forms where applicable.
    - "float", "double", "long double".
    - "_Bool".
    - "void", representing the absence of a value or type where appropriate.

Derived and user-defined types
    - Arrays.
    - Pointers.
    - Functions and function pointers.
    - Structures ("struct").
    - Unions ("union").
    - Enumerations ("enum").
    - Type aliases declared using "typedef".

Type modifiers and portability:
"short", "long", "signed", and "unsigned" modify certain integer types.
Exact type sizes and ranges can depend on the implementation. 
Use "sizeof" to inspect object sizes and "<limits.h>" or "<float.h>" to examine implementation limits.
Use fixed-width integer types from "<stdint.h>", such as "uint32_t", when a specific width is required and the implementation provides that type.

Operations and expressions:
Operators perform calculations, comparisons, assignments, and logical operations.
Arithmetic
    - "+": addition.
    - "-": subtraction.
    - "*": multiplication.
    - "/": division.
    - "%": integer remainder.
Integer division truncates toward zero. Division by zero is undefined behavior.
Relational
    "<", ">", "<=", ">=", "==", "!=".
These operators evaluate to an integer result of either zero or one.
Logical
    - "&&": logical AND.
    - "||": logical OR.
    - "!": logical NOT.
Logical AND and OR use short-circuit evaluation: the second operand is not evaluated when the result is already determined.
Assignment
    "=", "+=", "-=", "*=", "/=", "%=".
Assignment stores a value; "==" tests equality.
Increment and decrement
    "++" increments by one; "--" decrements by one. Prefix and postfix forms differ in the value of the expression they produce.
Bitwise
    "&", "|", "^", "~", "<<", ">>".
These operate on integer representations and are important for flags, registers, masks, and embedded systems. Shift operations require care with operand types and ranges.
Other operators
    - "sizeof": obtains the size in bytes.
    - "&": obtains an object's address in an appropriate expression.
    - "*": dereferences a pointer.
    - "?:": conditional operator.
    - ",": comma operator.
    - "." and "->": access structure or union members.
Operator precedence and associativity determine evaluation grouping. Use parentheses to make complex expressions explicit.

Input and output:
C uses standard input, output, and error streams.
The "stdio.h" header provides:
    - "printf()": formatted output.
    - "scanf()": formatted input.
    - "getchar()" and "putchar()": character input and output.
    - "fgets()": reads a line into a bounded character array.
    - "puts()": outputs a string followed by a newline.
    - "fprintf()" and "fscanf()": formatted file or stream operations.
Format specifiers
    - "%d": "int".
    - "%u": "unsigned int".
    - "%ld": "long".
    - "%lld": "long long".
    - "%f": "double" when used with "printf"; "float" when used with "scanf".
    - "%lf": "double" when used with "scanf".
    - "%c": character.
    - "%s": character string.
    - "%zu": "size_t".
    - "%p": pointer, passed as a "void *" argument.
Incorrect format specifiers can cause undefined behavior.
Check the return value of "scanf()" and other input functions. Prefer "fgets()" for reading user-supplied lines, then parse and validate the input.

Type conversion and casting:
Type conversion changes how a value is represented or interpreted.
    - Implicit conversion: performed automatically by the language.
    - Explicit cast: requested using syntax such as "(double)value".
Examples include converting an integer to a floating-point value or converting a character to an integer code.
Important risks:
    - Assigning a floating-point value to an integer discards the fractional part.
    - Out-of-range conversions can produce implementation-defined or otherwise problematic results depending on the type and conversion.
    - Signed integer overflow is undefined behavior.
    - Unsigned integer arithmetic wraps modulo one more than the maximum representable value.
Always choose suitable types and check ranges when processing external values.

Conditional statements:
Conditional statements control program execution.
    - "if": executes a block when a condition is nonzero.
    - "else": handles the alternative case.
    - "else if": checks additional conditions.
    - "switch": selects a branch based on an integer-like expression, including compatible enumeration types.
    - Conditional operator "?:": selects between two expressions.
In C, zero is false and nonzero is true.
A "switch" statement can use "case" labels and an optional "default" label. 
"break" normally prevents execution from falling through to the next case.
Conditions are useful for validation, control logic, menus, grading systems, state machines, and hardware decisions.

Loops:
Loops repeat operations.
"for"
Suitable for repetition with initialization, a continuation condition, and an update expression.
"while"
Checks the condition before each iteration; may execute zero times.
"do-while"
Checks the condition after the loop body; executes at least once.
Loop-control statements
    - "break": exits the nearest enclosing loop or switch.
    - "continue": proceeds to the next loop iteration.
    - "return": exits the current function.
Incorrect loop conditions can produce infinite loops or out-of-range memory access.
Loops are used for array processing, calculations, polling, data acquisition, and repetitive control tasks.

Arrays:
An array stores a fixed number of elements of the same type in contiguous memory.
Examples include:
    - One-dimensional arrays: lists of values.
    - Multidimensional arrays: tables, matrices, and image data.
Array indices start at zero. For an array of length "n", valid indices are "0" through "n - 1".
C does not automatically check array bounds. Accessing an invalid index can cause undefined behavior.
In most expressions, an array expression converts to a pointer to its first element. An array and a pointer are related but are not interchangeable in every context.
When an array is passed to a function as a parameter, it is adjusted to a pointer parameter; its length is not automatically carried with it. Pass the length separately.
Applications include signal samples, lookup tables, buffers, matrices, and sensor readings.

Strings and character arrays:
C does not have a built-in string object like Python. A C string is a sequence of characters terminated by a null character, "'\0'".
The "string.h" header contains common string functions:
    - "strlen()": measures the number of characters before the terminating null character.
    - "strcmp()": compares strings lexicographically.
    - "strcpy()" and "strncpy()": copy character data, with different safety and termination considerations.
    - "strcat()": concatenates strings.
    - "strchr()": locates a character.
    - "strstr()": locates a substring.
Character arrays need enough space for their contents and the terminating null character.
String functions do not automatically guarantee that destination buffers are large enough. Incorrect sizing can lead to buffer overflows and memory corruption.
Use bounded input methods and explicitly ensure that buffers are large enough.

Functions:
A function is a reusable unit of code that performs a task.
A function definition specifies its return type, name, parameters, and body.
Important concepts:
    - Function declaration or prototype: informs the compiler of the function's signature.
    - Function definition: implements the function.
    - Parameters: receive arguments supplied during a call.
    - Return value: communicates a result to the caller.
    - "void": indicates no return value or, in a parameter list, no parameters when used as "function(void)".
C passes function arguments by value. To allow a function to modify an object belonging to its caller, pass a pointer to that object.
A function should ideally perform one clear task, use explicit inputs, and communicate results through return values or documented output parameters.
Functions support modularity, reuse, testing, and maintainability.

Scope, storage duration and linkage:
Scope
Scope determines where an identifier can be used:
    - Block scope: within a block.
    - Function scope: applies to labels.
    - Function prototype scope: applies to parameter names in a prototype.
    - File scope: outside functions.
Storage duration
    - Automatic: typically local variables with block scope.
    - Static: objects that exist for the entire program execution.
    - Allocated: dynamically allocated objects.
    - Thread: thread-local objects where supported.
Linkage
Linkage determines whether declarations in different scopes or translation units refer to the same entity.
The "static" keyword has different effects depending on context. At file scope, it can give an identifier internal linkage. For a local variable, it gives static storage duration.
Use global variables sparingly because they can make programs harder to test and maintain.

Pointers:
A pointer stores the address of an object or function.
Key operations:
    - "&variable": obtains an object's address.
    - "*pointer": dereferences a pointer to access the pointed-to object.
    - "NULL": represents a null pointer constant.
    - Pointer arithmetic: permits certain operations within arrays and one element past the end.
Pointers are essential for:
    - Passing objects to functions for modification.
    - Dynamic memory management.
    - Efficient array and buffer processing.
    - Linked data structures.
    - Hardware registers and low-level interfaces.
Important rules
    - Initialize pointers before use.
    - Do not dereference a null, dangling, or otherwise invalid pointer.
    - Do not access memory outside an object's lifetime.
    - Pointer arithmetic must remain within the relevant array object or one past its end; the one-past pointer cannot be dereferenced.
    - Pointer types must be used appropriately.
A pointer is not necessarily an integer, and not every memory address is safe to access.

Dynamic memory allocation:
Dynamic memory allows a program to request memory at runtime.
Functions declared in "stdlib.h":
    - "malloc()": allocates uninitialized memory.
    - "calloc()": allocates memory for an array and initializes its bytes to zero.
    - "realloc()": attempts to resize an allocation.
    - "free()": releases allocated memory.
The programmer is responsible for managing the lifetime of dynamically allocated memory.
Common errors:
    - Memory leaks: allocated memory is never released.
    - Use-after-free: accessing memory after it has been freed.
    - Double-free: releasing the same allocation more than once.
    - Buffer overflow: accessing beyond allocated bounds.
    - Allocation failure: not checking whether allocation succeeded.
Always check allocation results, calculate allocation sizes safely, and free memory when it is no longer needed.

Structures, Unions, Enumerations abd Typedefs:
Structures ("struct")
Group related members of different types into one record.
Applications include sensor records, student records, packets, and configuration data.
Unions ("union")
Allow different members to share the same storage region. A union can be useful when representing one of several alternative data forms, but the active member must be managed correctly.
Enumerations ("enum")
Define named integer constants, improving readability for states, modes, and categories.
Typedef ("typedef")
Creates an alias for an existing type. It does not create a completely new distinct type.
Structures may include arrays, pointers, nested structures, and function pointers. Padding may be inserted between members, so do not assume a structure's layout or size without checking platform and ABI requirements.

Preprocessor directives and header files:
The preprocessor processes directives before compilation.
Common directives:
    - "#include": includes header content.
    - "#define": defines a macro.
    - "#undef": removes a macro definition.
    - "#if", "#ifdef", "#ifndef", "#else", "#endif": conditional compilation.
    - "#error": produces a preprocessing error.
Header files commonly contain declarations, type definitions, macros, and function prototypes.
Include guards prevent a header from being processed repeatedly within one translation unit.
Macros are expanded textually. Parenthesize macro parameters and the entire expression to avoid precedence bugs, and prefer functions or inline functions where appropriate.

Recursion:
Recursion occurs when a function calls itself directly or indirectly.
A correct recursive function needs:
    - A base case that stops recursion.
    - A recursive case that makes progress toward the base case.
Applications include tree traversal, divide-and-conquer algorithms, and mathematical definitions.
Deep recursion can exhaust available stack space. Iterative approaches may be more appropriate for large inputs.

File handling:
C provides file operations through "FILE *" and functions in "stdio.h".
Important functions:
    - "fopen()": opens a file.
    - "fclose()": closes a file.
    - "fprintf()" and "fscanf()": formatted file I/O.
    - "fgets()" and "fputs()": line-oriented text I/O.
    - "fread()" and "fwrite()": binary block I/O.
    - "fseek()" and "ftell()": position and query file positions.
    - "fgetc()" and "fputc()": character I/O.
    - "remove()" and "rename()": file operations.
Common modes include "r", "w", "a", "rb", "wb", and "ab".
Always check whether "fopen()" succeeds. 
Check return values from read and write operations, handle end-of-file correctly, and close files when finished.
Binary file formats may depend on endianness, type sizes, padding, and platform conventions. 
Do not assume raw structure memory is a portable file format.

Bitwise operators and embedded C:
Bitwise operators manipulate individual bits.
Common techniques:
    - Set a bit using bitwise OR.
    - Clear a bit using bitwise AND with a complemented mask.
    - Toggle a bit using bitwise XOR.
    - Test a bit using bitwise AND.
    - Shift bits to construct masks or extract fields.
Applications include hardware registers, communication protocols, permissions flags, compact data representations, and digital electronics.
Use unsigned integer types for many bit-manipulation tasks, and ensure shift counts are valid. Signed shifts and shifts by a negative amount or an amount greater than or equal to the operand width can cause undefined or implementation-defined behavior.
In embedded programming, register addresses, bit definitions, and hardware access rules must come from the relevant device documentation.

Data structures:
Common data structures implemented in C include:
    - Arrays: fixed-size sequential storage.
    - Linked lists: nodes connected by pointers.
    - Stacks: last-in, first-out.
    - Queues: first-in, first-out.
    - Hash tables: key-based lookup.
    - Trees: hierarchical relationships.
    - Graphs: nodes and edges.
    - Heaps: priority-oriented structures.
C provides the building blocks rather than a comprehensive built-in collection framework. 
Programmers implement or use libraries for these structures.
Choose a structure according to its operation costs, memory overhead, and use case.

Algorithms and complexity:
An algorithm is a sequence of steps that solves a problem.
Common techniques include:
    - Linear and binary search.
    - Sorting.
    - Recursion.
    - Divide and conquer.
    - Greedy algorithms.
    - Dynamic programming.
    - Graph traversal.
Big O notation describes how time or memory requirements grow with input size:
    - O(1): constant.
    - O(log n): logarithmic.
    - O(n): linear.
    - O(n log n): common for efficient comparison sorting.
    - O(n²): quadratic.
Binary search requires sorted data. 
Algorithm choice should consider correctness, input size, memory use, and practical performance.

Function pointers and callbacks:
A function pointer stores a reference to a function with a compatible signature.
Applications include:
    - Callback functions.
    - Sorting with custom comparison rules.
    - Event-driven programs.
    - Driver interfaces.
    - Dispatch tables and state machines.
Function pointers must be called through compatible types. 
Calling an incompatible function pointer or using an invalid pointer results in undefined behavior.

Modular programmin and multiple files:
Large C projects are commonly divided into source files (".c") and header files (".h").
Headers expose interfaces through declarations. Source files contain implementations.
Each source file is typically compiled into an object file, then linked with other object files and libraries.
Advantages:
    - Separation of concerns.
    - Reuse of functions and types.
    - Easier testing and maintenance.
    - Faster incremental builds in larger projects.
    - Clear interfaces between modules.
Avoid defining the same externally linked function in multiple translation units unless the program is intentionally structured for that purpose.

Debugging and testing:
Debugging identifies defects in program behavior.
Useful tools:
    - Compiler warnings.
    - GDB debugger.
    - Assertions from "assert.h".
    - AddressSanitizer and UndefinedBehaviorSanitizer, where supported.
    - Unit tests and integration tests.
    - Static analysis tools.
Compile during development with warnings enabled. 
Test boundary conditions, invalid input, empty arrays, allocation failures, and error paths.
An assertion checks an assumption during development, but it is not a replacement for validating untrusted input.
Undefined behavior is especially important in C: a program may appear to work while containing a defect that causes unpredictable results under other builds or platforms.

Undefined behavior and memory safety:
Undefined behavior means the C standard imposes no requirements on what happens.
Examples include:
    - Signed integer overflow.
    - Out-of-bounds array access.
    - Dereferencing an invalid pointer.
    - Using an object after its lifetime ends.
    - Modifying a string literal.
    - Violating certain aliasing or alignment requirements.
Prevent these problems by using valid bounds, checking sizes and return values, managing pointer lifetimes carefully, and enabling diagnostic tools.
C's performance and flexibility come with a responsibility to manage memory and data correctly.

Concurrency and threads:
Concurrent programs allow tasks to make progress in overlapping periods.
C11 introduced standardized thread-related facilities, including "<threads.h>", although support varies across implementations. POSIX systems commonly provide pthreads.
Important concepts:
    - Thread creation and joining.
    - Shared state.
    - Mutexes and synchronization.
    - Race conditions.
    - Deadlocks.
    - Atomic operations.
    - Data races and memory ordering.
Unsynchronized conflicting accesses to shared objects can cause undefined behavior. 
Use appropriate synchronization and minimize shared mutable state.
Concurrency is useful for servers, simulations, parallel workloads, and responsive applications.

Networking and system programming:
C supports low-level networking and operating-system interfaces.
Common concepts include:
    - Sockets.
    - TCP and UDP.
    - File descriptors.
    - System calls.
    - Processes and signals.
    - Inter-process communication.
    - Memory-mapped I/O.
Many of these facilities are operating-system-specific rather than part of ISO C. For example, POSIX sockets and process APIs are not universally available on every C platform.
Applications include network servers, protocol implementations, operating-system tools, and system utilities.

C for electronics, robotics and embeddded systems:
C is particularly important when software interacts directly with hardware.
Applications include:
    - Reading sensors.
    - Controlling motors.
    - Communicating over UART, SPI, and I2C.
    - Processing ADC readings.
    - Driving displays and actuators.
    - Implementing interrupts and real-time control logic.
Embedded projects often use a vendor-provided compiler, device headers, startup code, and hardware abstraction libraries.
The "volatile" qualifier is used for certain objects that can change outside ordinary program flow, such as memory-mapped hardware registers. 
It does not make operations atomic, provide thread synchronization, or replace appropriate hardware and concurrency rules.
Real-time systems also require attention to execution time, stack usage, memory limits, interrupts, and fault recovery.

Portability and the C standard:
C programs may target different standards and platforms.
Important standards include C90, C99, C11, C17, and C23. Compiler support varies.
Portable programming practices include:
    - Avoid relying on unspecified integer sizes.
    - Use standard library functions when suitable.
    - Isolate operating-system-specific code.
    - Check return values and errors.
    - Use standard format specifiers.
    - Avoid undefined behavior.
    - Document platform assumptions.
    - Compile with warnings on multiple supported compilers where possible.
Use the language standard appropriate for the target environment and compiler.

Built sytems, Git and CICD:
For small programs, one compiler command may be sufficient. Larger projects often use Make or CMake to manage dependencies and build configurations.
A professional workflow includes:
    1. Organize source and header files.
    2. Compile with warnings enabled.
    3. Run automated tests.
    4. Use Git to track changes.
    5. Push changes to a remote repository.
    6. Run continuous integration checks.
    7. Build and package release artifacts.
    8. Deploy and monitor the application where applicable.
Build automation improves reproducibility and helps detect errors before software is released.

C progrmming best practices:
1. Initialize variables before use.
2. Use descriptive names and clear functions.
3. Declare function prototypes in headers where appropriate.
4. Check all important return values.
5. Validate user input and array bounds.
6. Match every successful resource acquisition with appropriate cleanup.
7. Check allocation sizes and allocation results.
8. Avoid buffer overflows and dangling pointers.
9. Use compiler warnings and sanitizers.
10. Prefer simple control flow and explicit conditions.
11. Use "const" to document values that should not be modified through a particular reference.
12. Avoid unnecessary global state.
13. Separate interfaces from implementations.
14. Document units and hardware assumptions.
15. Use Git and automated testing.
16. Never assume code that compiles is necessarily correct or safe.

Essential Cproject structure:
A small project may contain:
    - "main.c": program entry point.
    - "functions.c": function implementations.
    - "functions.h": public declarations.
    - "tests/": test programs or test suites.
    - "Makefile" or "CMakeLists.txt": build configuration.
    - "README.md": documentation and build instructions.
    - ".gitignore": generated files and local artifacts to exclude from Git.
Compiled objects and executables should normally be kept separate from source files in larger projects.
