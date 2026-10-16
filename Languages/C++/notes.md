                    C++ PROGRAMMING NOTES

C++ is a compiled, statically typed, general-purpose programming language that supports procedural, object-oriented, generic, and functional programming techniques.

Key characteristics
- Compiled: source code is translated into machine code.
- Statically typed: types are checked primarily at compile time.
- Multi-paradigm: supports functions, classes, templates, and other programming styles.
- High performance: allows efficient memory management and fine-grained control over resources.
- Object-oriented: supports classes, inheritance, encapsulation, and polymorphism.
- Generic programming: templates allow reusable code to work with different types.
- Standard library: provides containers, algorithms, strings, streams, concurrency tools, and more.
- Resource management: supports deterministic cleanup through constructors, destructors, and RAII.

Real-world applications
- Game engines and graphics software.
- Robotics and autonomous systems.
- Embedded software and hardware interfaces.
- Scientific computing and simulations.
- Financial modelling and trading systems.
- Desktop applications and operating-system components.
- Computer vision and image processing.
- High-performance networking and databases.
- Compilers and language runtimes.

C++ DEVELOPMENT ENVIRONMEN
A typical development environment contains:
    - Source-code editor or IDE.
    - Compiler, such as GCC, Clang, or MSVC.
    - Linker and standard library.
    - Debugger, such as GDB or LLDB.
    - Build system, such as CMake.
    - Version control, such as Git.
C++ source files commonly use ".cpp", ".cc", or ".cxx". Header files commonly use ".hpp" or ".h".
Example compilation using GCC:
    "g++ -std=c++17 -Wall -Wextra -Wpedantic main.cpp -o main"
The command selects C++17, enables useful compiler warnings, and creates an executable called "main".
The usual development workflow is to write source code, compile, resolve warnings and errors, test, debug, and then package or deploy the application.

STRUCTURE OF A C++ PROGRAM
A basic program normally contains:
    - Header inclusions, such as "#include <iostream>".
    - Declarations and definitions of functions, classes, and types.
    - The "main()" function in a hosted application.
    - Statements and expressions.
    - Return statements where required.
Example concepts:
    - "#include": makes declarations from a header available.
    - "std::cout": writes output to the standard output stream.
    - "std::cin": reads input from the standard input stream.
    - "std::endl": writes a newline and flushes the stream.
    - "'\n'": writes a newline without necessarily flushing.
    - "std::": identifies names in the standard namespace.
C++ is case-sensitive. Statements commonly end in semicolons, and braces define blocks.
Prefer "int main()" or "int main(void)"-style equivalents in C++; "int main()" is the standard form.

VARIABLES, CONSTANTS, AND DATA TYPES
A variable is a named object that stores a value. Its type determines the operations that can be performed on it and how it is represented.
Fundamental types
    - "bool": Boolean values, "true" and "false".
    - "char": character-sized integer type.
    - "int": integer values.
    - "short", "long", "long long": integer types with different minimum ranges.
    - "float": single-precision floating point.
    - "double": double-precision floating point.
    - "long double": extended floating-point type where supported.
    - "void": absence of a value or return type in appropriate contexts.
Common C++ types
    - "std::string": dynamically managed text.
    - "std::array": fixed-size array wrapper.
    - "std::vector": dynamically sized sequence.
    - "std::map": ordered key-value collection.
    - "std::unordered_map": hash-based key-value collection.
    - "std::set": ordered collection of unique keys.
    - "std::optional": represents a value that may be absent.
    - User-defined classes and structures.
Initialization
C++ supports several forms:
    - Copy initialization: "int x = 5;"
    - Direct initialization: "int x(5);"
    - Brace initialization: "int x{5};"

Brace initialization helps prevent certain narrowing conversions, such as converting a non-integral floating-point value to an integer without an explicit conversion.
Constants
    - "const": prevents modification through that particular qualified object or reference.
    - "constexpr": supports compile-time evaluation when the expression and context permit it.
    - "consteval": requires an immediate compile-time invocation for applicable functions.
    - "constinit": requires static or thread-local initialization to be constant initialization.
Use descriptive names and initialize variables before reading them. Prefer "const" for values that should not change.

OPERATORS AND EXPRESSIONS
Operators perform arithmetic, comparisons, assignments, logical operations, and bit manipulation.
Arithmetic
    "+", "-", "*", "/", "%".
Integer division truncates toward zero. Division by zero is undefined behavior for built-in arithmetic.
Comparison
    "==", "!=", "<", ">", "<=", ">=".
Comparisons normally produce Boolean results.
Logical
    "&&", "||", "!".
Logical AND and OR use short-circuit evaluation.
Assignment
    "=", "+=", "-=", "*=", "/=", "%=".
Assignment changes an object's stored value; equality comparison tests values.
Increment and decrement
    "++" and "--" change a suitable object by one. Prefix and postfix forms differ in the expression value they produce.
Bitwise
    "&", "|", "^", "~", "<<", ">>".
These operations are useful for bit masks, hardware registers, compact flags, and protocol processing.
Other operators
    - "sizeof": obtains object or type size.
    - "&": address-of operator in an appropriate expression.
    - "*": pointer dereference.
    - "->": member access through a pointer.
    - ".": member access through an object.
    - "?:": conditional operator.
    - "::": scope resolution.
    - "new" and "delete": direct dynamic allocation and deallocation, although modern C++ generally prefers resource-managing abstractions.
Operator precedence and associativity determine how expressions are grouped. Parentheses improve clarity.

INPUT AND OUTPUT
C++ commonly uses streams from the "iostream" library.
    - "std::cout": standard output.
    - "std::cin": standard input.
    - "std::cerr": error output, generally unbuffered.
    - "std::clog": logging output.
    - "std::getline()": reads a complete line into a string.
Example:
    "std::cout << "Hello\n";"
The insertion operator "<<" sends data to a stream. The extraction operator ">>" reads formatted input.
Formatted extraction usually stops at whitespace. Use "std::getline()" when reading sentences or full lines.
Mixing "std::cin >> value" and "std::getline()" requires care because the newline may remain in the input stream. Use appropriate line-consumption logic.
Always check stream state when input can fail. Validate ranges and reject malformed or unexpected input.

TYPE CONVERSION AND TYPE DEDUCTION
Type conversion changes the type or representation of a value.
    - Implicit conversion: occurs automatically when permitted.
    - Explicit conversion: uses a cast.
    - "static_cast": performs appropriate compile-time-checked conversions.
    - "dynamic_cast": performs certain checked conversions within polymorphic class hierarchies.
    - "const_cast": changes cv-qualification; modifying an object that was originally defined as const through such a cast is undefined behavior.
    - "reinterpret_cast": performs low-level reinterpretations with significant restrictions and portability risks.
Type deduction:
    - "auto": deduces a variable's type from its initializer.
    - "decltype": determines a type from an expression.
    - "decltype(auto)": preserves the type and value-category rules of an initializer or expression.
"auto" does not mean dynamically typed. The type is deduced at compile time.
Prefer explicit casts when a conversion deserves attention, and avoid unsafe reinterpretation of memory.

CONDITIONAL STATEMENTS
Conditional statements select which code runs.
    - "if": executes when a condition is true.
    - "else if": checks additional conditions.
    - "else": handles remaining cases.
    - "switch": selects among cases based on an integral, enumeration, or otherwise permitted expression.
    - "?:": chooses between two expressions.
C++ uses Boolean conversion in conditions, but explicit Boolean comparisons are often clearer.
"switch" commonly uses "break" to prevent accidental fall-through. Modern C++ also supports attributes such as "[[fallthrough]]" to document intentional fall-through.
Applications include menus, validation, state machines, pricing, access rules, and control systems.

LOOPS
Loops repeat operations.
"for"
Best suited to repetition with initialization, a condition, and an update expression.
Range-based "for"
Iterates directly over elements in an array or suitable range.
"while"
Repeats while its condition remains true.
"do-while"
Executes at least once before checking its condition.
Loop-control statements
    - "break": exits the nearest enclosing loop or switch.
    - "continue": skips to the next iteration.
    - "return": exits the current function.
C++ loops are useful for processing data, numerical simulations, event handling, sensor readings, and repeated calculations.
Use range-based loops when possible. When modifying elements, use a reference in the loop declaration if appropriate.

ARRAYS, STRINGS, AND SEQUENCES
Built-in arrays
Built-in arrays store a fixed number of elements of the same type. Indexing starts at zero, and out-of-bounds access is undefined behavior.
"std::array"
Provides a fixed-size sequence with useful operations such as "size()", iterators, and compatibility with standard algorithms.
"std::vector"
Provides a dynamically sized sequence that can grow or shrink. It is one of the most commonly used C++ containers.
"std::string"
Provides managed text storage and operations such as concatenation, searching, comparison, and substring extraction.
Important distinctions
    - Built-in arrays have fixed extents.
    - "std::array" has a size fixed by its type.
    - "std::vector" supports dynamic sizing.
    - "std::string" manages its character storage.
    - Container indexing with "operator[]" generally does not perform bounds checking.
    - "at()" performs bounds checking and throws an exception when an index is invalid.
Use standard containers instead of raw arrays for most general-purpose application code.

FUNCTIONS
A function is a reusable unit of code.
Functions have a return type, name, parameter list, and body. They can return values, modify objects through references or pointers, and call other functions.
Important concepts:
    - Function declaration: announces a function's signature.
    - Function definition: supplies the implementation.
    - Parameters and arguments: define and supply input values.
    - Return values: communicate results.
    - Default arguments: supply values when arguments are omitted.
    - Function overloading: permits multiple functions with the same name but different parameter lists.
    - Inline functions: allow definitions in multiple translation units under appropriate rules and suggest inline substitution to the implementation.
    - "constexpr" functions: can participate in constant evaluation when requirements are met.
    - Recursive functions: call themselves directly or indirectly.
C++ normally passes arguments by value. Use references when a function needs to modify the caller's object or avoid copying a large object.
Use "const T&" for read-only access to larger objects where appropriate, and pass small inexpensive values such as integers by value.

REFERENCES AND POINTERS
References
A reference is an alias for an existing object.
    - Lvalue references use "T&".
    - Const references use "const T&".
    - Rvalue references use "T&&" and are important for move semantics.
A reference normally must be initialized when declared and cannot later be reseated to refer to another object.
Pointers
A pointer stores an address.
    - "&object": obtains an object's address.
    - "*pointer": accesses the pointed-to object.
    - "nullptr": represents a null pointer.
    - "->": accesses a member through a pointer.
Pointers can be null or reassigned. They require careful lifetime management.
Use references for required objects and pointers when optionality, reseating, or low-level interfaces are needed. Prefer smart pointers for dynamically managed ownership.
Never dereference a null, dangling, or invalid pointer.

OBJECT-ORIENTED PROGRAMMING
Object-oriented programming groups state and behavior into classes and objects.
Class and object
A class defines members and behavior. An object is an instance of a class.
Encapsulation
Controls how data and operations are exposed.
Access specifiers:
    - "public": accessible through the public interface.
    - "private": accessible to the class's members and designated friends.
    - "protected": accessible to the class, derived classes under applicable rules, and friends.
Constructors and destructors
    - Constructors initialize objects.
    - Destructors perform cleanup when an object's lifetime ends.
Inheritance
A derived class can extend or specialize a base class.
Polymorphism
Virtual functions enable runtime dispatch through suitable base-class interfaces.
Abstraction
Exposes essential behavior while hiding implementation details.
Use classes when data and behavior form a meaningful unit. Prefer composition over inheritance when a "has-a" relationship is more appropriate than an "is-a" relationship.

CONSTRUCTORS, DESTRUCTORS, AND RAII
Constructors establish valid object state. Destructors release resources associated with object lifetimes.
RAII stands for Resource Acquisition Is Initialization. A resource is tied to an object's lifetime so that cleanup occurs automatically when the object is destroyed.
Examples of resources:
    - Files.
    - Dynamic memory.
    - Mutex locks.
    - Database connections.
    - Network handles.
RAII is central to safe C++ programming because cleanup occurs during normal scope exit and stack unwinding caused by exceptions.
Use standard resource-managing types instead of manually coordinating every allocation and release.

INHERITANCE AND POLYMORPHISM
Inheritance supports code reuse and interface specialization.
Common forms include:
    - Single inheritance.
    - Multiple inheritance.
    - Multilevel inheritance.
    - Hierarchical inheritance.
A virtual function allows derived classes to override behavior. Calling it through a suitable base pointer or reference uses runtime dispatch.
A class with at least one pure virtual function is abstract and cannot be instantiated directly.
Important practices:
    - Use "override" when overriding virtual functions.
    - Give polymorphic base classes a public virtual destructor when objects may be destroyed through base pointers.
    - Avoid unnecessary deep inheritance hierarchies.
    - Prefer interfaces and composition when they simplify design.
Applications include device interfaces, simulation entities, game objects, and interchangeable software components.

TEMPLATES AND GENERIC PROGRAMMING
Templates allow code to operate on types and values supplied as parameters.
Function templates
Define functions that can work with multiple compatible types.
Class templates
Define generic classes such as containers.
Template specialization
Provides a tailored implementation for certain template arguments.
Variadic templates
Accept a variable number of template arguments.
Concepts
Introduced in C++20, concepts constrain template parameters and improve error messages.
Templates are the foundation of many standard-library components, including containers, iterators, algorithms, and smart pointers.
Use templates to express reusable algorithms and abstractions without sacrificing static type checking.

THE C++ STANDARD TEMPLATE LIBRARY (STL)
The STL is a major part of the C++ standard library.
Containers
    - "std::vector": dynamic sequence.
    - "std::array": fixed-size sequence.
    - "std::deque": double-ended sequence.
    - "std::list": doubly linked list.
    - "std::forward_list": singly linked list.
    - "std::stack": last-in, first-out adapter.
    - "std::queue": first-in, first-out adapter.
    - "std::priority_queue": priority-based retrieval.
    - "std::set" and "std::map": ordered associative containers.
    - "std::unordered_set" and "std::unordered_map": hash-based associative containers.
Algorithms
    - "std::sort()": sorts a suitable range.
    - "std::find()": searches for a value.
    - "std::count()": counts matching elements.
    - "std::reverse()": reverses a range.
    - "std::accumulate()": combines values.
    - "std::transform()": transforms elements.
    - "std::binary_search()": searches a sorted range.
Iterators
Iterators provide a common way to traverse container elements and work with standard algorithms.
Prefer standard containers and algorithms over implementing everything manually unless the learning objective or application requires a custom implementation.

LAMBDAS AND FUNCTIONAL PROGRAMMING
A lambda is an anonymous function object defined directly where it is needed.
Lambdas can capture variables from their surrounding scope:
    - "[ ]": capture nothing.
    - "[=]": capture used local variables by value.
    - "[&]": capture used local variables by reference.
    - Explicit captures: specify particular variables.
Reference captures can become dangerous if the lambda outlives the captured object.
Lambdas are useful for sorting, filtering, callbacks, event handling, and custom algorithms.
C++ also supports function objects, higher-order functions, and compile-time computations.

EXCEPTION HANDLING
Exceptions represent errors that interrupt normal execution.
    - "try": contains potentially failing code.
    - "throw": raises an exception.
    - "catch": handles an exception of a compatible type.
Standard exception types are provided through headers such as "<stdexcept>".
Examples:
    - "std::invalid_argument": inappropriate argument.
    - "std::out_of_range": value or index outside an allowed range.
    - "std::runtime_error": runtime failure.
    - "std::bad_alloc": allocation failure.
Catch exceptions by reference, commonly as "const std::exception&", to avoid unnecessary copying and preserve polymorphic behavior.
Do not use exceptions for ordinary control flow when simpler mechanisms are more appropriate. RAII ensures resources are cleaned up during stack unwinding.

FILE HANDLING AND STREAMS
C++ provides stream-based input and output.
Common classes:
    - "std::ifstream": reads files.
    - "std::ofstream": writes files.
    - "std::fstream": supports file input and output.
    - "std::stringstream": reads and writes string-backed streams.
Important operations include opening files, checking stream state, reading lines, writing formatted output, and closing files.
Use RAII-based streams so files close automatically when their objects leave scope.
For binary files, carefully define the data representation. Raw memory layouts may vary across platforms and compiler configurations.

MEMORY MANAGEMENT AND SMART POINTERS
C++ supports dynamic allocation, but modern C++ emphasizes automatic lifetime management.
Smart pointers
    - "std::unique_ptr": exclusive ownership of a dynamically managed object.
    - "std::shared_ptr": shared ownership using reference counting.
    - "std::weak_ptr": non-owning reference that does not increase shared ownership.
Important concepts
    - Stack storage: commonly used for local automatic objects.
    - Dynamic storage: used for objects created with allocation mechanisms.
    - Ownership: determines who is responsible for an object's lifetime.
    - Lifetime: determines when an object exists and may be accessed.
    - Move semantics: allows resources to be transferred efficiently.
Prefer automatic objects and standard containers. Use "std::make_unique()" or "std::make_shared()" when dynamic ownership is required.
Avoid manual "new" and "delete" in ordinary application code unless implementing a specialized low-level facility.

MOVE SEMANTICS AND COPY OPERATIONS
Copying typically creates another object with equivalent state. Moving allows resources to be transferred from one object to another when the type supports it.
Important concepts:
    - Copy constructor.
    - Copy assignment operator.
    - Move constructor.
    - Move assignment operator.
    - "std::move()".
    - Lvalue and rvalue expressions.
"std::move()" does not itself move resources; it casts an expression to an rvalue reference form that can enable move operations.
Move semantics help reduce unnecessary copying of large buffers, strings, containers, and other resource-owning objects.
Follow the Rule of Zero where possible: let standard resource-managing members handle resource lifetime automatically. If a class must manage a resource directly, understand the Rule of Three and Rule of Five.

ENUMERATIONS, TYPE ALIASES, AND OPTIONAL VALUES
Enumerations
"enum class" defines a scoped enumeration with stronger type separation than traditional unscoped enumerations.
Use named states rather than unexplained integer constants.
Type aliases
"using" defines an alias for a type, often more readable than complex "typedef" declarations.
Optional values
"std::optional<T>" represents either a value of type "T" or the absence of one.
Other useful types:
    - "std::variant": stores one of several alternative types.
    - "std::tuple": groups a fixed number of values that may have different types.
    - "std::pair": groups two values.
These types make data relationships explicit and can reduce unsafe conventions based on special values.

NAMESPACES AND MODULAR PROGRAMMING
Namespaces organize names and help prevent naming collisions.
The standard library uses the "std" namespace.
Use qualified names such as "std::string" and "std::vector". Avoid placing "using namespace std;" in widely included headers because it can introduce name conflicts.
Large projects commonly separate:
    - Header files: public declarations and interfaces.
    - Source files: implementation.
    - Tests: automated verification.
    - Build configuration: compiler options and dependencies.
Header guards or "#pragma once" help prevent repeated inclusion. "#pragma once" is widely supported but not part of the ISO C++ standard.

ITERATORS, ALGORITHMS, AND COMPLEXITY
Iterators connect containers to generic algorithms.
Common iterator operations include dereferencing, incrementing, comparison, and traversal.
Different containers support different iterator capabilities:
    - Input and output iterators.
    - Forward iterators.
    - Bidirectional iterators.
    - Random-access iterators.
    - Contiguous iterators, for suitable containers and standards.
Big O notation describes how computational requirements grow with input size:
    - O(1): constant.
    - O(log n): logarithmic.
    - O(n): linear.
    - O(n log n): common for efficient comparison sorting.
    - O(n²): quadratic.
For example, "std::sort()" is generally (O(n \log n)), while linear search is (O(n)).
Choose containers and algorithms according to access patterns, insertion costs, memory usage, and performance requirements.

CONCURRENCY AND MULTITHREADING
C++ provides concurrency facilities through headers such as "<thread>", "<mutex>", "<atomic>", and "<future>".
Important concepts:
    - Threads: independent execution paths.
    - Mutexes: protect shared resources.
    - Locks: manage mutex ownership.
    - Atomic operations: support certain synchronized operations.
    - Futures and promises: communicate results from asynchronous operations.
    - Condition variables: coordinate threads waiting for conditions.
    - Data races: conflicting unsynchronized memory accesses that cause undefined behavior.
Concurrency can improve responsiveness and throughput, but introduces synchronization and lifetime challenges.
Use RAII-based locks such as "std::lock_guard" or "std::scoped_lock". Avoid shared mutable state where practical.

MODERN C++ FEATURES
C++11
Introduced major modern features such as "auto", lambdas, move semantics, smart pointers, range-based loops, and standard threading facilities.
C++14
Improved generic lambdas, return type deduction, and other language and library facilities.
C++17
Added features including structured bindings, "std::optional", "std::variant", "std::string_view", and "if constexpr".
C++20
Introduced concepts, ranges, coroutines, modules, and additional library functionality.
C++23
Adds further language and library improvements, with support depending on the compiler and standard library.
Choose a standard that matches your compiler, libraries, and deployment target. C++17 is a useful learning baseline, while C++20 offers additional abstraction tools.

DEBUGGING, TESTING, AND CODE QUALITY
Useful techniques include:
    - Compiler warnings.
    - Debuggers such as GDB and LLDB.
    - Assertions through "<cassert>".
    - AddressSanitizer and UndefinedBehaviorSanitizer where supported.
    - Unit tests and integration tests.
    - Static analysis and formatting tools.
Compile with warnings enabled. Test boundary cases, invalid input, exceptional conditions, and ownership transitions.
Avoid undefined behavior, including out-of-bounds access, invalid pointer dereferences, data races, and incorrect object-lifetime assumptions.
A program that compiles successfully is not necessarily correct or safe.

C++ FOR ENGINEERING AND EMBEDDED SYSTEMS
C++ is widely used for robotics, industrial automation, embedded controllers, and high-performance engineering applications.
Applications include:
    - Sensor data processing.
    - Motor-control logic.
    - Robotics algorithms.
    - Signal processing.
    - Physics simulations.
    - Computer vision.
    - Real-time data acquisition.
    - Device communication and application frameworks.
The language can provide efficient abstraction while retaining low-level capabilities. However, hardware-specific support, execution timing, memory constraints, and real-time requirements must be considered.
Use vendor SDKs and device documentation for hardware access.

C++ FOR GAMES, AI, AND SCIENTIFIC COMPUTING
Game development
C++ is used in game engines, physics systems, rendering, asset management, and performance-critical gameplay systems.
Artificial intelligence
C++ is used in inference engines, computer vision, numerical libraries, and performance-sensitive AI infrastructure.
Scientific computing
C++ supports numerical simulation, computational geometry, optimization, and parallel computing.
Robotics
C++ supports real-time-oriented processing, sensor integration, control algorithms, and robotics frameworks.
Libraries and frameworks vary according to the field, so learn the core language before committing to a specialized ecosystem.

SECURITY AND SAFE C++ PROGRAMMING
Important practices:
    - Validate input and check bounds.
    - Prefer "std::string" and standard containers over unmanaged buffers.
    - Use smart pointers and RAII for ownership.
    - Avoid raw owning pointers.
    - Check file, network, and allocation failures.
    - Use safe synchronization in concurrent programs.
    - Avoid unsafe casts and incorrect object-lifetime assumptions.
    - Keep dependencies updated.
    - Avoid hardcoded secrets.
    - Use sanitizers and automated tests.
    - Keep interfaces small and responsibilities clear.
Memory safety and resource lifetime are central concerns in C++ because the language allows fine-grained control over objects and memory.

BUILD SYSTEMS, GIT, AND DEPLOYMENT
A typical project workflow:
    1. Organize source files and headers.
    2. Compile with a selected C++ standard.
    3. Run automated tests.
    4. Use Git for version control.
    5. Build with Make or CMake when appropriate.
    6. Run continuous integration checks.
    7. Package or deploy the application.
    8. Monitor errors and maintain dependencies.
CMake is widely used to describe cross-platform C++ builds and can generate build files for multiple toolchains.
A reproducible build should document compiler requirements, libraries, configuration, and testing instructions.

C++ BEST PRACTICES
1. Prefer modern C++ features supported by your target environment.
2. Use "std::string", "std::vector", and other standard containers.
3. Prefer RAII and smart pointers for resource management.
4. Initialize objects explicitly.
5. Use "const" where appropriate.
6. Pass large read-only objects by "const" reference.
7. Use "override" for overridden virtual functions.
8. Keep functions focused and classes cohesive.
9. Avoid unnecessary global variables and inheritance.
10. Catch exceptions by reference.
11. Compile with warnings enabled.
12. Use automated tests and sanitizers.
13. Document assumptions and units.
14. Use Git and reproducible builds.
15. Measure performance before optimizing.
16. Prefer clear code over clever code.

RECOMMENDED PROJECT STRUCTURE
A small or medium C++ project might contain:
- "src/": implementation files (".cpp").
- "include/": public header files (".hpp").
- "tests/": automated tests.
- "docs/": documentation.
- "CMakeLists.txt": build configuration.
- "README.md": project description and instructions.
- ".gitignore": generated files and local artifacts to exclude.

Small beginner programs may use a single ".cpp" file. Larger applications benefit from modular organization.
