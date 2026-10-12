                PYTHON PROGRAMMING
Python is a high-level, general-purpose programming language known for readable syntax and a large ecosystem of libraries. It supports procedural, object-oriented, and functional programming.

Key characteristics:
- Interpreted execution: Python code is typically executed through the Python runtime, which compiles source code to bytecode and executes it using a virtual machine.
- Dynamically typed: Variable types are determined at runtime.
- Strongly typed: Python does not automatically combine incompatible types in every operation.
- Cross-platform: Python runs on Windows, Linux, and macOS.
- Extensive libraries: Modules provide functionality for mathematics, networking, files, databases, AI, and more.
- Automatic memory management: Python manages most object allocation and reclamation automatically.

Common applications:
- Automation: renaming files, processing documents, and repetitive tasks.
- Web development: building APIs and web applications.
- Data science: cleaning data, statistics, and visualization.
- AI and machine learning: training and deploying models.
- Engineering: numerical calculations, simulations, and signal processing.
- Cybersecurity: authorized security testing, log analysis, and network automation.

Python environment and execution:
A Python program is normally saved in a file ending in ".py".
Important tools:
    - Python interpreter: executes Python programs.
    - Terminal: runs commands and scripts.
    - Code editor or IDE: writes, edits, and debugs code.
    - Package manager ("pip"): installs third-party libraries.
    - Virtual environment ("venv"): isolates project dependencies.
    - Jupyter Notebook: supports interactive programming, calculations, and data analysis.

Variables and data types:
A variable is a name that refers to an object in memory. Python does not require explicit type declarations for ordinary variables.
Fundamental data types
    - "int": integers, such as "25" or "-8".
    - "float": floating-point numbers, such as "3.14".
    - "complex": complex numbers, such as "2 + 3j".
    - "str": text, such as ""Python"".
    - "bool": logical values, "True" or "False".
    - "NoneType": represented by "None", meaning no value or absence of a value.
Collection types
    - "list": ordered, mutable collection; allows duplicates.
    - "tuple": ordered, immutable collection; allows duplicates.
    - "set": collection of unique elements; does not support positional indexing.
    - "dict": mutable mapping of keys to values.
Important distinctions
- Mutable objects can be changed after creation: lists, dictionaries, and sets.
- Immutable objects cannot be changed in place: integers, strings, and tuples.
- "type(value)" identifies an object's type.
- "isinstance(value, type)" checks whether an object belongs to a type or its subclasses.
- "None" should generally be checked using "is None".
Use descriptive variable names, such as "student_score", rather than vague names such as "x", except in short mathematical expressions.

Operators and expressions
Operators perform calculations, comparisons, logical operations, and membership tests.
Arithmetic operators
    - "+": addition.
    - "-": subtraction.
    - "*": multiplication.
    - "/": division, which produces a floating-point result.
    - "//": floor division.
    - "%": remainder/Modulus.
    - "**": exponentiation.
Comparison operators
    - "==", "!=", "<", ">", "<=", ">=".
    - Comparisons evaluate to Boolean values.
Logical operators
    - "and": true when both conditions are true.
    - "or": true when at least one condition is true.
    - "not": reverses a Boolean condition.
Other operators
    - Assignment: "=", "+=", "-=", "*=".
    - Membership: "in", "not in".
    - Identity: "is", "is not".
    - Bitwise: "&", "|", "^", "~", "<<", ">>".
Use "==" to compare values and "is" to test object identity, particularly when checking against "None".
Operator precedence determines the order of evaluation. Use parentheses to make complicated expressions clear.

Input and Output
"input()" reads text entered by the user and returns a string. Convert the result when numeric input is required.
"print()" displays information in the terminal.
Formatted strings, called f-strings, insert values into text and support formatting specifications.
In real applications, input and output connect programs to users, files, APIs, databases, and other systems.
Always validate external input because users and external systems can provide missing, malformed, or unexpected values.

Type coversion
Type conversion changes a value from one type to another.
Common conversion functions:
    - "int()": converts compatible values to integers.
    - "float()": converts compatible values to floating-point numbers.
    - "str()": produces a string representation.
    - "bool()": converts a value to its truth value.
    - "list()", "tuple()", "set()", "dict()": construct collections from compatible inputs.
Conversion may fail. For example, converting ""hello"" to an integer raises "ValueError".
Use exception handling to manage invalid conversions instead of assuming all input is valid.

Conditional statements:
Conditional statements allow a program to make decisions.
    - "if": executes a block when a condition is true.
    - "elif": checks another condition if preceding conditions fail.
    - "else": handles the remaining case.
    - Conditional expression: selects between two values in a single expression.
Python uses indentation to define blocks. Consistent four-space indentation is the standard convention.
Conditions rely on truthiness. Values such as "0", """", "[]", "{}", "set()", and "None" are false in Boolean contexts; most other objects are true.
Applications include access control, grading systems, pricing rules, validation, and decision-making algorithms.

Loops and iteration:
Loops repeat operations.
For loop: Iterates over items in an iterable, such as a list, string, or range.
While loop: Repeats while a condition remains true.
Important statements:
    - "break": exits the nearest enclosing loop.
    - "continue": skips to the next iteration.
    - "pass": placeholder statement that performs no operation.
    - "range()": generates a sequence of integers, commonly used for counting.
    - "enumerate()": iterates over items with their indices.
    - "zip()": iterates over multiple iterables in parallel.
An infinite loop occurs when a loop condition never becomes false and no exit occurs. Ensure that "while" loops have an appropriate termination mechanism.
Applications include processing records, searching collections, simulation, automation, and repeated user interaction.

String and text processing:
A string is an immutable sequence of Unicode characters.
Common operations:
    - Indexing: retrieve a character by position.
    - Slicing: extract a portion of a sequence.
    - Concatenation: join strings using "+".
    - Repetition: repeat a string using "*".
    - Membership: test whether a substring occurs in a string.
Useful methods include "lower()", "upper()", "strip()", "split()", "join()", "replace()", "find()", and "startswith()".
Strings support slicing with "sequence[start:stop:step]". The stop position is excluded.
Formatted strings are useful for readable messages, reports, and output formatting.
For structured text, consider regular expressions through the "re" module. For JSON data, use the "json" module rather than manually splitting strings.
Applications include text cleaning, log processing, data extraction, report generation, and validation.

Lists, tuples, sets and dictionaries:
  Lists
Lists are ordered and mutable. They are suitable for collections that change over time.
Common methods: "append()", "extend()", "insert()", "remove()", "pop()", "sort()", and "reverse()".
  Tuples
Tuples are ordered and immutable. They are useful for fixed records and returning multiple values from a function.
A tuple containing one item requires a trailing comma.
  Sets
Sets store unique, hashable elements. They are useful for removing duplicates and performing mathematical set operations.
Operations include union, intersection, difference, and symmetric difference.
  Dictionaries
Dictionaries map unique, hashable keys to values. They are suitable for structured records, configurations, counters, and lookup tables.
Important methods include "get()", "keys()", "values()", "items()", "update()", and "pop()".
Choose the appropriate collection based on ordering, mutability, uniqueness, and lookup requirements.

Functions:
A function is a reusable block of code that performs a defined task.
Functions are declared using "def". They may accept parameters and return results using "return".
Important concepts:
    - Parameters: names defined in a function declaration.
    - Arguments: values supplied when calling a function.
    - Default parameters: provide values when arguments are omitted.
    - Keyword arguments: associate supplied values with parameter names.
    - Positional arguments: supply values according to parameter position.
    - "*args": collects additional positional arguments into a tuple.
    - "**kwargs": collects additional keyword arguments into a dictionary.
    - Docstrings: document a function's purpose, inputs, outputs, and behavior.
    - Type hints: communicate expected types and improve tooling; Python does not generally enforce them automatically.
A function without an explicit return value returns "None".
Prefer functions that have one clear responsibility. Avoid unnecessary global variables and side effects.
Mutable default arguments should generally be avoided because the default object is created once and reused across calls. Use "None" when a fresh mutable object is required.
Functions support modularity, reuse, testing, and maintainability.

Scope and namespaces:
Scope determines where a name can be accessed.
Python's name resolution generally follows LEGB:
    - Local: names inside the current function.
    - Enclosing: names in enclosing function scopes.
    - Global: names defined at module level.
    - Built-in: names provided by Python.
"global" declares that a function intends to assign to a module-level name. "nonlocal" refers to a name in an enclosing function scope.
Use these declarations sparingly. Passing values through function arguments and return values is often clearer.
Avoid shadowing built-in names such as "list", "str", and "sum", because doing so can make built-in functionality inaccessible through those names.

Comprehensions and generators:
Comprehensions provide concise ways to create collections from iterables.
    - List comprehension: creates a list.
    - Set comprehension: creates a set.
    - Dictionary comprehension: creates a dictionary.
    - Generator expression: produces values lazily rather than building the entire result immediately.
A generator function uses "yield" to produce values incrementally. Its execution can resume from where it previously yielded.
Generators are useful for processing large files, data streams, and sequences that do not need to be stored entirely in memory.
Prefer readable comprehensions over deeply nested expressions.

Error and exception handling
Errors can arise from invalid input, missing files, failed network requests, incorrect types, and programming mistakes.
Important exceptions include:
    - "ValueError": a value has an inappropriate form or range for an operation.
    - "TypeError": an operation receives an inappropriate type.
    - "IndexError": a sequence index is out of range.
    - "KeyError": a dictionary key is missing.
    - "FileNotFoundError": a requested file does not exist.
    - "ZeroDivisionError": division by zero occurs.
    - "ImportError" and "ModuleNotFoundError": imports fail.
Exception-handling structure:
    - "try": contains code that may raise an exception.
    - "except": handles specified exceptions.
    - "else": executes when the "try" block completes without an exception.
    - "finally": executes during normal or exceptional control flow, usually for cleanup.
Catch specific exceptions whenever possible. Avoid silently ignoring failures or catching every exception without a clear reason.
Use "raise" to signal an error when a function cannot complete its intended task.

File handling:
File handling allows a program to persist data beyond its execution.
The "open()" function accesses files. Use a "with" statement to ensure that the file is closed automatically.
Common modes:
    - "r": read.
    - "w": write, replacing existing contents.
    - "a": append.
    - "x": create a new file and fail if it already exists.
    - "b": binary mode.
    - "t": text mode, the default.
    - "+": combined reading and writing.
Common methods include "read()", "readline()", "readlines()", "write()", and iteration over file lines.
Specify an encoding such as UTF-8 for text files when appropriate. Use "pathlib" for portable path handling.
Use the "csv" module for CSV files and "json" for JSON. For large files, process records incrementally rather than loading everything into memory.
Never assume that a file exists, has the expected format, or is safe to overwrite.

Modules, packages and imports:
A module is a Python file containing reusable code. A package groups related modules.
Imports allow programs to reuse functionality without rewriting it.
The Python Standard Library provides modules for:
    - Mathematics: "math", "statistics", "decimal".
    - Dates and times: "datetime", "time".
    - Files and paths: "pathlib", "os", "shutil".
    - Data formats: "json", "csv".
    - Algorithms and collections: "itertools", "collections", "heapq".
    - Testing and debugging: "unittest", "pdb".
    - Networking and structured data: "urllib", "socket", "sqlite3".
Third-party packages extend Python's capabilities. Install them using "pip", preferably inside a virtual environment.
A project's dependencies should be documented so the environment can be reproduced.
The "if __name__ == "__main__":" pattern allows a module to be imported without automatically executing its main program.
Avoid circular imports and naming your files after standard-library modules, such as "json.py" or "random.py".

Object oriented programming (OOP):
Object-oriented programming organizes software around objects that combine data and behavior.
Key concepts:
    - Class: a definition describing objects and their behavior.
    - Object: an instance of a class.
    - Attribute: data associated with an object or class.
    - Method: a function defined within a class.
    - "__init__()": initializes a newly created instance.
    - "self": conventionally refers to the current instance.
    - Encapsulation: groups data and behavior and defines how they should be accessed.
    - Inheritance: creates a class based on another class.
    - Polymorphism: allows different object types to provide compatible behavior.
    - Composition: builds complex objects using other objects.
Python uses conventions for access control rather than strict private-member enforcement. 
A leading underscore signals an implementation detail; double-leading underscores in class attributes trigger name mangling.
Use classes when objects have meaningful state and related behavior. Use ordinary functions and simple data structures when they are sufficient.
Applications include inventory systems, simulations, game entities, banking systems, and larger software architectures.

Iterators and context mergers:
An iterable is an object that can supply items for iteration. An iterator maintains iteration state and produces the next item through "__next__()".
A "for" loop obtains an iterator automatically and stops when it receives "StopIteration".
A context manager controls setup and cleanup around a block of code. The "with" statement uses this protocol.
Examples include file objects, database connections, locks, and temporary resource management.
Context managers help ensure resources are released even when an exception occurs.

Lambda functions and functional tools:
A lambda expression creates a small anonymous function containing one expression.
Useful functional tools include:
    - "map()": applies a function to each item.
    - "filter()": selects items that satisfy a condition.
    - "sorted()": sorts values and supports a custom key function.
    - "any()": checks whether at least one item is truthy.
    - "all()": checks whether every item is truthy.
    - "functools.reduce()": combines iterable values into one result.
List comprehensions are often clearer than "map()" and "filter()" for simple transformations.
Functions are first-class objects in Python: they can be assigned to variables, passed as arguments, and returned from other functions.

Decorators:
A decorator is a callable that wraps or modifies another function or class.
Decorators are written using "@decorator_name" above a definition.
Common applications include logging, timing, access checks, caching, and registering functions with frameworks.
Use "functools.wraps" when writing function decorators so that metadata such as the original function's name and docstring is preserved.
Decorators should be used when they make behavior more reusable and understandable, not merely to make code shorter.

Type hints and data validation:
Type hints describe expected parameter, variable, and return types.
Examples include "int", "str", "list[str]", "dict[str, int]", and "str | None" in supported Python versions.
Type hints improve editor assistance, documentation, and static analysis. They do not normally validate runtime values by themselves.
For external input, validate data explicitly. Depending on the application, use manual checks, dataclasses, or validation libraries.
Validation is particularly important when processing API requests, user submissions, configuration files, and imported datasets.

Debugging, testing and code quality:
Debugging identifies and fixes defects.
Useful techniques:
    - Read tracebacks from the bottom to locate the exception and then inspect relevant call sites.
    - Use breakpoints and the "pdb" debugger.
    - Inspect variable values and assumptions.
    - Reproduce the smallest failing case.
    - Test boundary conditions and invalid inputs.
Testing concepts:
    - Unit tests: test individual functions or components.
    - Integration tests: test interactions between components.
    - Regression tests: ensure previous defects do not return.
    - Assertions: verify conditions during development or testing.
    - Mocking: replace external dependencies in tests when appropriate.
Python includes "unittest"; third-party tools such as "pytest" are also widely used.
Follow PEP 8 style conventions, use descriptive names, keep functions focused, and document complex behavior. Linters and formatters can help maintain consistency.

Algorithms and data structures:
An algorithm is a sequence of steps for solving a problem. A data structure organizes data for efficient operations.
Common structures:
    - Lists and arrays: indexed access and sequential storage.
    - Stacks: last in, first out.
    - Queues: first in, first out.
    - Hash tables: efficient average-case key lookup.
    - Linked lists: nodes connected through references.
    - Trees: hierarchical structures.
    - Graphs: nodes connected by edges.
    - Heaps: structures for efficiently accessing priority elements.
Common algorithmic techniques include searching, sorting, recursion, divide and conquer, greedy algorithms, dynamic programming, and graph traversal.
Big O notation describes how resource requirements grow with input size:
    - O(1): constant.
    - O(log n): logarithmic.
    - O(n): linear.
    - O(n log n): common in efficient comparison sorting.
    - O(n²): quadratic.
Choose algorithms and structures according to input size, memory limits, and required operations.

Recursion:
Recursion occurs when a function calls itself.
A recursive solution requires:
    - A base case that stops recursion.
    - A recursive case that reduces the problem toward the base case.
Recursion is useful for tree traversal, divide-and-conquer algorithms, and naturally recursive problems.
Excessive recursion can cause "RecursionError" and consume additional call-stack space. Iteration may be preferable for deep or large workloads.

Databases and SQL:
Databases store structured information for reliable retrieval and updates.
Python's standard-library "sqlite3" module supports SQLite databases without requiring a separate database server.
Core SQL operations:
    - "SELECT": retrieve records.
    - "INSERT": add records.
    - "UPDATE": modify records.
    - "DELETE": remove records.
    - "CREATE TABLE": define a table.
Use parameterized SQL queries rather than string concatenation to prevent SQL injection. Use transactions to group related changes and maintain consistency.
Larger applications may use PostgreSQL, MySQL, or database abstraction tools such as SQLAlchemy.
Applications include customer records, inventory, finance systems, analytics, and application backends.

APIs, HTTP and JSON:
An API defines how software systems communicate. A web API commonly exchanges requests and responses over HTTP.
Important concepts:
    - GET: retrieve a resource.
    - POST: submit data or request an operation.
    - PUT/PATCH: replace or partially update a resource.
    - DELETE: request resource deletion.
    - Status codes: communicate the outcome of a request.
    - Headers: carry metadata.
    - JSON: a common format for structured data exchange.
    - Authentication: verifies identity or access rights.
    - Rate limits: restrict request frequency.
Use an HTTP client library, such as "requests" or Python's asynchronous HTTP tools, for network requests.
Production applications should handle timeouts, failed responses, malformed data, retries where appropriate, and credential security.
Never hardcode secret API keys into public repositories.

Virtual environments and dependency management.
A virtual environment isolates packages for a particular project.
This prevents unrelated projects from interfering with each other's dependencies.
Use "python -m venv .venv" to create an environment and activate it using the appropriate operating-system command.
Install packages with "python -m pip install package_name".
Record project dependencies using a suitable dependency-management workflow.
A requirements file is one common option; larger projects may use tools that manage dependency versions and lock files.
Reproducible environments are important for collaboration, deployment, testing, and continuous integration.

Concurrency and asynchronous programming:
Concurrency allows a program to make progress on multiple tasks during overlapping periods.
    - Threading: useful for many I/O-bound tasks.
    - Multiprocessing: can use multiple processes for CPU-bound parallelism.
    - "asyncio": supports asynchronous I/O using "async" and "await".
    - Futures and executors: provide interfaces for managing work that completes later.
In conventional CPython builds, the Global Interpreter Lock (GIL) limits simultaneous execution of Python bytecode across threads. 
This often makes multiprocessing more suitable for CPU-bound parallel work, although the best choice depends on the workload and Python implementation.
Asynchronous code is useful for many network operations, not automatically for every task. Avoid blocking the event loop with long synchronous operations.

Data analysis and scientific computing:
Python is widely used for numerical and scientific work.
Common libraries:
    - NumPy: multidimensional arrays and numerical operations.
    - pandas: tabular data cleaning and analysis.
    - Matplotlib: plotting and visualization.
    - SciPy: scientific algorithms.
    - SymPy: symbolic mathematics.
    - Jupyter: interactive computation and explanatory notebooks.
Applications include engineering calculations, statistical analysis, sensor-data processing, experimental results, optimization, and simulations.
Prefer vectorized operations for large numerical datasets when appropriate. Validate units, data quality, assumptions, and numerical precision.

Artificial intelligence nd machine learning:
Machine learning uses data to train models that identify patterns or make predictions.
Common Python tools:
    - scikit-learn: classical machine learning.
    - PyTorch and TensorFlow: deep learning.
    - Transformers ecosystem: modern language and other pretrained models.
Typical workflow:
    1. Collect and clean data.
    2. Explore and analyze the dataset.
    3. Split data into training, validation, and test sets.
    4. Select and train a model.
    5. Evaluate it with suitable metrics.
    6. Improve and validate the approach.
    7. Deploy the model and monitor performance.
Avoid data leakage between training and evaluation. Consider fairness, privacy, reproducibility, computational cost, and limitations when building AI systems.

Web development:
Python can power web applications and backend APIs.
Common frameworks:
    - Django: a comprehensive web framework.
    - Flask: a lightweight web framework.
    - FastAPI: a framework designed for modern APIs with type-hint integration.
Web applications commonly involve routing, request handling, business logic, databases, authentication, validation, and response generation.
Security practices include input validation, secure authentication, access control, safe database queries, secret management, and HTTPS.
HTML, CSS, and JavaScript are commonly used alongside Python when developing full web applications.

Automation and system programming:
Python can automate routine tasks and interact with operating-system resources.
Useful modules include:
    - "pathlib": paths and filesystem operations.
    - "shutil": file and directory operations.
    - "subprocess": launching external commands.
    - "logging": structured application logs.
    - "argparse": command-line interfaces.
    - "os": operating-system functionality.
Applications include batch file processing, report generation, backups, log analysis, scheduled jobs, and development tooling.
Use safe path handling, validate command arguments, and avoid running untrusted shell commands.

Python for engineering and embedded systems:
Python supports engineering analysis, prototyping, measurement, and automation.
Applications include:
    - Circuit and signal analysis.
    - Numerical modelling and simulation.
    - Instrument communication and test automation.
    - Processing sensor data.
    - Robotics and computer vision.
    - Hardware interfaces on supported devices.
NumPy, SciPy, SymPy, and Matplotlib are useful for scientific work. MicroPython and CircuitPython can run on supported microcontrollers, although their hardware support and available resources differ from standard desktop Python.
For timing-critical embedded control, Python may need to work alongside lower-level languages or dedicated hardware.

Security and safety programming:
Security should be part of development rather than an afterthought.
Important practices:
    - Validate and constrain external input.
    - Keep credentials and API keys out of source code.
    - Use parameterized database queries.
    - Keep dependencies updated.
    - Restrict file and network permissions.
    - Avoid unsafe deserialization of untrusted data.
    - Use cryptographically secure randomness for security-sensitive tokens.
    - Do not use MD5 or SHA-1 as password-hashing algorithms.
    - Use a dedicated password-hashing scheme when storing passwords.
    - Log failures without exposing secrets.
    - Test access-control rules.
Python programs should be designed to fail safely and handle unexpected conditions.

Deployment, version control and CICD:
Version control records code changes and supports collaboration. Git is widely used with Python projects.
A typical workflow involves:
    1. Writing and testing code locally.
    2. Tracking changes with Git.
    3. Committing coherent changes.
    4. Pushing to a remote repository such as GitHub.
    5. Running automated tests and quality checks through a CI pipeline.
    6. Packaging or deploying the application.
CI/CD stands for continuous integration and continuous delivery or deployment. Pipelines can run tests, check formatting, build artifacts, and deploy approved releases.
Production applications also need configuration management, logging, monitoring, backups, and dependency updates.

Python best practices:
    1. Write readable code; clarity is more important than clever shortcuts.
    2. Use descriptive names and consistent indentation.
    3. Keep functions focused and avoid unnecessary duplication.
    4. Validate user input and external data.
    5. Catch specific exceptions and provide useful error messages.
    6. Use context managers for resources that require cleanup.
    7. Use virtual environments for project dependencies.
    8. Write automated tests for important behavior.
    9. Use Git for version control.
    10. Avoid hardcoded secrets and unsafe command execution.
    11. Prefer standard-library tools when they meet the requirement.
    12. Profile performance before optimizing.
    13. Document assumptions, units, and non-obvious decisions.
    14. Keep dependencies and deployment procedures reproducible.
    15. Follow the principle of least privilege when working with files, systems, and APIs.

Essentil python project structure:
A maintainable project might contain:
    - "main.py": program entry point.
    - "src/": application source code.
    - "tests/": automated tests.
    - "data/": sample or application data, excluding sensitive files.
    - "docs/": documentation.
    - "requirements.txt" or a project configuration file: dependency information.
    - ".gitignore": files and folders Git should ignore.
    - "README.md": project purpose, setup, usage, and testing instructions.
    - ".venv/": local virtual environment, normally excluded from Git.
The exact structure depends on the project's size and packaging needs.
The most effective way to learn Python is to implement small working programs, test them with different inputs, debug failures, and gradually combine the concepts into complete applications.