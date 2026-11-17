            DATA STRUCTURES AND ALGORITHMS (DSA)
  Data Structures
A data structure is a way of organizing, storing and managing data in computer memory to enable efficient access, modification and processing.
 Purpose:
- Organize data systematically.
- Enable efficient data retrieval and modification.
- Reduce memory consumption.
- Improve program performance.
- Represent relationships between data elements.
 Common operations:
- Insertion: Adding new data.
- Deletion: Removing existing data.
- Traversal: Visiting each element.
- Searching: Finding a particular element.
- Sorting: Arranging elements in a particular order.
- Updating: Modifying existing data.
- Accessing: Retrieving stored data.
  Algorithms
An algorithm is a finite sequence of well-defined instructions designed to solve a problem or perform a computation.
 Characteristics of a good algorithm:
1. Input: Accepts zero or more inputs.
2. Output: Produces at least one result.
3. Definiteness: Instructions must be clear and unambiguous.
4. Finiteness: Must terminate after a finite number of steps.
5. Effectiveness: Each operation must be executable.
6. Correctness: Produces the expected result.
7. Efficiency: Uses reasonable execution time and memory.
 Algorithm development process:
1. Define the problem.
2. Identify inputs and expected outputs.
3. Design the algorithm.
4. Represent it using pseudocode or flowcharts.
5. Implement it in a programming language.
6. Test and debug.
7. Analyze and optimize its performance.

 CLASSIFICATION OF DATA STRUCTURES
  Primitive Data Structures;
Basic data types directly supported by programming languages.
Examples:
- Integer: Stores whole numbers.
- Float/Double: Stores decimal numbers.
- Character: Stores individual characters.
- Boolean: Stores true or false values.
  Non-Primitive Data Structures;
More complex structures built using primitive data types.
They include:
 Linear Data Structures
Elements are arranged sequentially, with each element (except at the ends) having a predecessor and successor.
Examples:
- Arrays
- Linked lists
- Stacks
- Queues
 Non-Linear Data Structures
Elements are arranged hierarchically or as interconnected networks rather than in a single sequence.
Examples:
- Trees
- Graphs
- Heaps
- Tries
  Static and Dynamic Data Structures
 Static data structures:
- Have a fixed size, usually determined before or during allocation.
- Their capacity cannot easily be changed.
- Example: Fixed-size arrays in C.
 Dynamic data structures:
- Can grow or shrink during program execution.
- Memory is allocated and released as required.
- Examples: Linked lists, dynamically allocated arrays and trees.

 ARRAYS
An array is a linear data structure that stores multiple elements of the same data type in indexed positions.
 Characteristics:
- Elements are accessed using indices.
- Typically stored in contiguous memory locations.
- Usually have a fixed capacity in languages such as C.
- Support fast random access.
Example:
A = [10, 20, 30, 40, 50]
Indices: 0, 1, 2, 3, 4.
  Types of arrays:
1. One-dimensional arrays: Store elements in a single sequence.
2. Two-dimensional arrays: Store data in rows and columns, useful for matrices and tables.
3. Multidimensional arrays: Store data across three or more dimensions.
  Common operations and complexity:
- Access by index: O(1).
- Search (unsorted): O(n).
- Insertion at the end: O(1), if capacity is available.
- Insertion at the beginning or middle: O(n).
- Deletion at the beginning or middle: O(n).
  Applications:
- Storing student marks.
- Matrix calculations.
- Image pixel representation.
- Lookup tables.
- Scientific and engineering computations.
  Advantages:
- Fast element access.
- Simple implementation.
- Good memory locality.
  Limitations:
- Fixed capacity in ordinary static arrays.
- Inserting and deleting elements can require shifting.
- May waste allocated memory if underutilized.

 STRINGS
A string is a sequence of characters used to represent textual data.
In C, strings are character arrays terminated by the null character '\0'.
Example: "HELLO"
  Common operations:
- Concatenation: Joining strings.
- Comparison: Checking whether strings are equal or determining their order.
- Searching: Finding a character or substring.
- Extraction: Retrieving part of a string.
- Reversal: Reversing character order.
Applications:
- Text processing.
- User authentication.
- File handling.
- Search engines.
- Natural language processing.

 LINKED LISTS
A linked list is a dynamic linear data structure consisting of nodes connected through pointers or references.
  Each node contains:
- Data: The stored value.
- Link: A pointer/reference to another node.
Unlike arrays, linked-list nodes do not need to occupy contiguous memory.
  Types of linked lists
 Singly Linked List
Each node points to the next node. The final node points to NULL.
Applications: Implementing simple dynamic collections and adjacency lists.
 Doubly Linked List
Each node contains:
- Data.
- Pointer to the next node.
- Pointer to the previous node.
Allows forward and backward traversal.
Applications: Browser navigation, undo/redo functionality and playlists.
 Circular Linked List
The final node points back to the first node instead of NULL.
Applications: Round-robin scheduling, cyclic processes and multiplayer turn management.
Common operations and complexity:
- Access by position: O(n).
- Search: O(n).
- Insert at head: O(1).
- Delete at head: O(1).
- Insert after a known node: O(1).
- Delete a known node with the required reference: O(1).
Advantages:
- Dynamic size.
- Efficient insertion and deletion at known positions.
- Does not require contiguous memory.
Limitations:
- No direct random access.
- Extra memory required for pointers.
- Pointer manipulation can introduce errors.

 STACKS
A stack is a linear data structure that follows the LIFO (Last In, First Out) principle.
The last element inserted is the first one removed.
Example: A stack of plates.
  Main operations:
1. Push: Adds an element to the top.
2. Pop: Removes the top element.
3. Peek/Top: Retrieves the top element without removing it.
4. isEmpty: Checks whether the stack is empty.
5. isFull: Checks whether an array-based stack is full.
  Time complexity:
- Push: O(1).
- Pop: O(1).
- Peek: O(1).
  Stack conditions:
- Stack overflow: Attempting to insert into a full fixed-capacity stack.
- Stack underflow: Attempting to remove an element from an empty stack.
  Implementation:
- Using arrays.
- Using linked lists.
Applications:
- Function calls and recursion (call stack).
- Undo/redo operations.
- Expression evaluation.
- Parentheses matching.
- Backtracking.
- Depth-first search.

 QUEUES
A queue is a linear data structure that follows FIFO (First In, First Out).
The first element inserted is the first one removed.
  Main operations:
1. Enqueue: Inserts an element at the rear.
2. Dequeue: Removes an element from the front.
3. Front/Peek: Retrieves the front element.
4. Rear: Retrieves the last element.
5. isEmpty: Checks whether the queue is empty.
  Types of queues
 Simple Queue
Insertion takes place at the rear and removal at the front.
Applications: Print queues and task scheduling.
 Circular Queue
The last position connects logically to the first position, allowing efficient reuse of available array positions.
Applications: Buffers, embedded systems and streaming data.
 Priority Queue
Elements are removed according to priority rather than simply their arrival order.
Applications: CPU scheduling, network packet processing and shortest-path algorithms.
 Deque (Double-Ended Queue)
Insertion and deletion are permitted at both ends.
Applications: Sliding-window algorithms and task scheduling.
Time complexity (typical implementations):
- Enqueue: O(1).
- Dequeue: O(1).
- Front: O(1).

 HASH TABLES AND HASHING
A hash table is a data structure that stores key-value pairs and uses a hash function to determine where data should be stored.
  Hash function:
Converts a key into an array index.
Example:
h(key) = key MOD table_size
 Collision:
Occurs when two different keys generate the same hash index.
 Collision resolution techniques
1. Separate Chaining
Each table position stores a collection (often a linked list) of entries that share the same index.
2. Open Addressing
All entries are stored directly in the table. When a collision occurs, another available position is searched.
 Common techniques:
- Linear probing.
- Quadratic probing.
- Double hashing.
 Complexity:
- Search: Average O(1), worst O(n).
- Insertion: Average O(1), worst O(n).
- Deletion: Average O(1), worst O(n).
Performance depends on the hash function, collision strategy and load factor.
Load factor:
    α = Number of stored entries / Table capacity
Applications:
- Database indexing.
- Dictionaries and maps.
- Caching.
- Symbol tables in compilers.
- Fast lookup systems.

 TREES
A tree is a non-linear hierarchical data structure consisting of nodes connected by edges.
  Basic terminology
- Root: The topmost node.
- Parent: A node with one or more children.
- Child: A node directly connected below a parent.
- Leaf: A node with no children.
- Edge: Connection between two nodes.
- Sibling: Nodes sharing the same parent.
- Subtree: A tree formed from a node and its descendants.
- Depth: Number of edges from the root to a node.
- Height: Number of edges on the longest downward path from a node to a leaf.
- Level: Position of a node relative to the root.
  Types of trees
 Binary Tree
A tree in which each node has at most two children: left and right.
 Binary Search Tree (BST)
A binary tree where:
- Values in the left subtree are smaller than the node.
- Values in the right subtree are larger than the node.
(Assume distinct keys for this basic definition; duplicate handling depends on implementation.)
Operations:
- Search.
- Insertion.
- Deletion.
- Traversal.
Average complexity in a reasonably balanced BST:
- Search: O(log n).
- Insertion: O(log n).
- Deletion: O(log n).
Worst case for an unbalanced BST: O(n).
 AVL Tree
A self-balancing binary search tree.
The balance factor is:
    Balance Factor = Height(left subtree) - Height(right subtree)
For every node, the balance factor must be -1, 0 or +1.
Rotations restore balance after insertion or deletion.
 Red-Black Tree
A self-balancing BST that uses node colors and balancing rules to maintain logarithmic height.
Used in ordered maps, sets and system libraries.
 Heap
A complete binary tree satisfying the heap property.
Types:
- Max heap: Parent is greater than or equal to its children.
- Min heap: Parent is less than or equal to its children.
Operations:
- Peek: O(1).
- Insert: O(log n).
- Extract maximum/minimum: O(log n).
- Build heap: O(n).
Applications:
- Priority queues.
- CPU scheduling.
- Heap sort.
- Graph algorithms.
 Trie (Prefix Tree)
A tree-like structure used to store strings by their prefixes.
Applications:
- Autocomplete.
- Spell checking.
- Dictionary lookup.
- IP routing.

 GRAPHS
A graph is a non-linear data structure consisting of vertices (nodes) and edges (connections).
Represented as:
    G = (V, E)
Where:
- V = Set of vertices.
- E = Set of edges.
  Types of graphs
1. Directed graph: Edges have a direction.
2. Undirected graph: Edges have no direction.
3. Weighted graph: Edges have associated weights or costs.
4. Unweighted graph: Edges have no assigned weights.
5. Connected graph: Every vertex is reachable from every other vertex in an undirected graph.
6. Cyclic graph: Contains at least one cycle.
7. Acyclic graph: Contains no cycles.
8. Directed Acyclic Graph (DAG): A directed graph without directed cycles.
  Graph representation
1. Adjacency Matrix
A two-dimensional matrix representing connections between vertices.
Advantages:
- Checking whether an edge exists: O(1).
- Suitable for dense graphs.
Disadvantages:
- Requires O(V²) memory.
2. Adjacency List
Each vertex stores a list of its neighboring vertices.
Advantages:
- Memory efficient for sparse graphs.
- Space complexity: O(V + E).
- Efficiently iterates through neighbors.
  Graph traversal algorithms
 Breadth-First Search (BFS)
Explores neighboring vertices level by level using a queue.
Applications:
- Shortest path in unweighted graphs.
- Network broadcasting.
- Social network connections.
- Web crawling.
Complexity: O(V + E) using an adjacency list.
 Depth-First Search (DFS)
Explores as far as possible along a branch before backtracking.
Uses:
- Stack.
- Recursion.
Applications:
- Cycle detection.
- Maze solving.
- Connected components.
- Topological sorting.
Complexity: O(V + E) using an adjacency list.

 ALGORITHM ANALYSIS AND COMPLEXITY
Algorithm analysis evaluates the computational resources required by an algorithm.
  Two major measures are:
1. Time Complexity
Measures how execution time grows as input size increases.
2. Space Complexity
Measures how memory requirements grow as input size increases.
  Big O Notation
Big O describes an asymptotic upper bound on algorithm growth, commonly used to express worst-case complexity.
 Common complexity classes:
Complexity| Name| Example
O(1)| Constant| Array access
O(log n)| Logarithmic| Binary search
O(n)| Linear| Linear search
O(n log n)| Linearithmic| Merge sort
O(n²)| Quadratic| Bubble sort
O(n³)| Cubic| Basic triple nested loops
O(2ⁿ)| Exponential| Some recursive subset algorithms
O(n!)| Factorial| Brute-force permutations
Growth rate generally increases from O(1) to O(n!).
 Other asymptotic notations
- Big Omega Ω: Asymptotic lower bound.
- Big Theta Θ: Asymptotically tight bound.
 Best, Average and Worst Cases
- Best case: Minimum work required for an input of size n.
- Average case: Expected work over a specified input distribution.
- Worst case: Maximum work required for an input of size n.
 Complexity analysis tips
- Ignore constant factors when determining asymptotic complexity.
- Ignore lower-order terms.
- Sequential loops generally add their complexities.
- Nested loops generally multiply their complexities.
- Halving the input repeatedly often produces O(log n).
- Recursion requires consideration of both execution time and call-stack memory.

 SEARCHING ALGORITHMS
Searching algorithms locate a target element in a collection.
  Linear Search
Checks elements one after another until the target is found or the collection ends.
Complexity:
- Best: O(1).
- Average: O(n).
- Worst: O(n).
Works with sorted and unsorted data.
  Binary Search
Repeatedly divides the search interval into two halves.
Requirement: The data must be sorted and the search structure must support efficient middle-element access.
Complexity:
- Best: O(1).
- Average: O(log n).
- Worst: O(log n).
Space:
- Iterative implementation: O(1).
- Recursive implementation: O(log n) call-stack space.
Applications:
- Searching sorted databases and arrays.
- Finding values in ordered collections.
- Efficient lookup systems.
  Hash-Based Search
Uses a hash function to locate a key.
Average search complexity: O(1).
Worst case: O(n).
Useful when fast key-based lookup is required.

 SORTING ALGORITHMS
Sorting arranges data in ascending or descending order.
  Bubble Sort
Repeatedly compares adjacent elements and swaps them if they are in the wrong order.
Complexity:
- Best: O(n), with an optimized early-exit implementation.
- Average: O(n²).
- Worst: O(n²).
Space: O(1).
Stable: Yes.
  Selection Sort
Repeatedly selects the smallest element from the unsorted section and places it in its correct position.
Complexity:
- Best, average and worst: O(n²).
Space: O(1).
Stable: Usually no.
Useful when minimizing swaps is important.
  Insertion Sort
Builds a sorted section by inserting each new element into its correct position.
Complexity:
- Best: O(n).
- Average: O(n²).
- Worst: O(n²).
Space: O(1).
Stable: Yes.
Useful for small or nearly sorted datasets.
  Merge Sort
Uses divide and conquer:
1. Divide the array into smaller sections.
2. Recursively sort each section.
3. Merge the sorted sections.
Complexity:
- Best, average and worst: O(n log n).
Space: O(n) for a typical array implementation.
Stable: Yes, when implemented appropriately.
Applications: Large datasets and external sorting.
  Quick Sort
Uses a pivot to partition data into smaller and larger sections, then recursively sorts the partitions.
Complexity:
- Best: O(n log n).
- Average: O(n log n).
- Worst: O(n²).
Typical auxiliary space: O(log n) average recursion stack; O(n) worst case.
Stable: Usually no.
Applications: General-purpose in-memory sorting.
  Heap Sort
Builds a heap and repeatedly extracts the maximum or minimum element.
Complexity:
- Best, average and worst: O(n log n).
Auxiliary space: O(1) for an in-place implementation.
Stable: No.
  Sorting comparison
Algorithm| Average Time| Worst Time| Stable
Bubble| O(n²)| O(n²)| Yes
Selection| O(n²)| O(n²)| No
Insertion| O(n²)| O(n²)| Yes
Merge| O(n log n)| O(n log n)| Yes
Quick| O(n log n)| O(n²)| No
Heap| O(n log n)| O(n log n)| No
Stability means equal-valued elements preserve their original relative order.

 RECURSION
Recursion is a programming technique in which a function calls itself to solve smaller instances of the same problem.
 Every properly designed recursive function needs:
1. Base case: Stops further recursive calls.
2. Recursive case: Reduces the problem toward the base case.
Example: Factorial
    n! = n × (n - 1)!
    0! = 1
Applications:
- Tree traversal.
- Graph traversal.
- Merge sort.
- Quick sort.
- Mathematical computations.
- Backtracking.
Advantages:
- Produces concise solutions for naturally recursive problems.
- Simplifies hierarchical processing.
Limitations:
- Uses call-stack memory.
- May cause stack overflow if recursion is too deep.
- Can repeat calculations unnecessarily.
Memoization and dynamic programming can eliminate repeated computations.

 DIVIDE AND CONQUER
A problem-solving strategy that divides a problem into smaller independent subproblems, solves them and combines their results.
 Three stages:
1. Divide.
2. Conquer.
3. Combine.
Examples:
- Merge sort.
- Quick sort.
- Binary search.
Applications:
- Parallel processing.
- Large-scale data processing.
- Mathematical computation.

 GREEDY ALGORITHMS
A greedy algorithm makes the locally optimal choice at each step in the hope of obtaining a globally optimal solution.
Examples:
- Kruskal's minimum spanning tree algorithms
- Prim's minimum spanning tree algorithm.
- Dijkstra's shortest-path algorithm with nonnegative edge weights.
- Huffman coding.
- Activity selection.
Important: 
A greedy choice does not always produce an optimal solution. Correctness depends on the problem having the appropriate greedy-choice and optimal-substructure properties.

 DYNAMIC PROGRAMMING (DP)
Dynamic programming solves problems by breaking them into overlapping subproblems and storing their results to avoid repeated computation.
It is especially useful when a problem has:
- Overlapping subproblems.
- Optimal substructure.
  Approaches
1. Memoization (Top-Down)
Uses recursion and stores previously calculated results.
2. Tabulation (Bottom-Up)
Solves smaller subproblems first and stores results in a table.
Applications:
- Fibonacci sequence.
- Knapsack problem.
- Longest common subsequence.
- Shortest-path problems.
- Resource allocation.
- Optimization problems.
Advantages:
- Reduces repeated computations.
- Can improve exponential recursive algorithms to polynomial time.

 BACKTRACKING
Backtracking is a problem-solving technique that builds a solution incrementally and abandons a path when it cannot lead to a valid solution.
 General process:
1. Choose a candidate.
2. Check whether it is valid.
3. Continue exploring.
4. If the path fails, undo the choice.
5. Try another candidate.
Applications:
- Sudoku solving.
- N-Queens problem.
- Maze solving.
- Permutation generation.
- Constraint satisfaction problems.

 IMPORTANT GRAPH ALGORITHMS
  Dijkstra's Algorithm
Finds shortest paths from a source vertex to other vertices in a weighted graph with nonnegative edge weights.
Applications:
- GPS navigation.
- Network routing.
- Transportation systems.
With an adjacency list and binary heap: O((V + E) log V).
  Bellman-Ford Algorithm
Finds shortest paths from a source vertex, supports negative edge weights and detects reachable negative-weight cycles.
Complexity: O(VE).
  Floyd-Warshall Algorithm
Computes shortest paths between all pairs of vertices.
Complexity:
- Time: O(V³).
- Space: O(V²).
  Kruskal's Algorithm
Finds a minimum spanning tree by selecting edges in increasing order of weight while avoiding cycles.
Uses Disjoint Set Union (DSU).
  Prim's Algorithm
Builds a minimum spanning tree by repeatedly selecting the lowest-weight edge connecting the current tree to a new vertex.
Applications of minimum spanning trees:
- Network cable design.
- Electrical distribution planning.
- Road and communication network design.
  Topological Sorting
Produces a linear ordering of vertices in a directed acyclic graph (DAG), where every directed edge u → v places u before v.
Applications:
- Course prerequisite planning.
- Build systems.
- Task scheduling.
- Dependency management.

 DISJOINT SET UNION (UNION-FIND)
A data structure that maintains a collection of disjoint sets.
  Main operations:
- Find: Determines which set an element belongs to.
- Union: Combines two sets.
Optimizations:
- Path compression.
- Union by rank or size.
With both optimizations, operations have nearly constant amortized complexity, O(α(n)), where α is the inverse Ackermann function.
Applications:
- Cycle detection.
- Kruskal's algorithm.
- Network connectivity.
- Connected component management.

 BIT MANIPULATION
Bit manipulation involves directly operating on the binary representation of data.
  Common bitwise operators:
Operator| Meaning
&| AND
|| OR
^| XOR
~| NOT
<<| Left shift
>>| Right shift
  Important techniques:
- Check whether a bit is set.
- Set a particular bit.
- Clear a particular bit.
- Toggle a particular bit.
- Test whether a number is a power of two.
Examples:
Check bit k:
    (n >> k) & 1
Set bit k:
    n | (1 << k)
Clear bit k:
    n & ~(1 << k)
Toggle bit k:
    n ^ (1 << k)
Applications:
- Embedded systems.
- Hardware registers.
- Device drivers.
- Data compression.
- Cryptographic algorithms.
- Efficient flags and permissions.

 COMMON ABSTRACT DATA TYPES (ADTs)
An Abstract Data Type describes what operations a data structure supports without specifying exactly how those operations are implemented.
 Examples:
- List ADT: Ordered collection of elements.
- Stack ADT: Push, pop and peek.
- Queue ADT: Enqueue and dequeue.
- Set ADT: Collection of unique elements.
- Map ADT: Key-value associations.
- Priority Queue ADT: Access to highest- or lowest-priority elements.
An ADT can have multiple implementations. For example, a stack can be implemented using an array or linked list.

 MEMORY MANAGEMENT IN DATA STRUCTURES
Data structures rely on memory allocation and management.
  Stack Memory
Stores local variables, function parameters and function-call information.
Typically managed automatically.
  Heap Memory
Used for dynamically allocated objects and data.
In C:
- malloc(): Allocates memory.
- calloc(): Allocates and zero-initializes memory.
- realloc(): Changes the size of an allocation.
- free(): Releases allocated memory.
Common memory errors
- Memory leak: Allocated memory is not released when no longer needed.
- Dangling pointer: Pointer refers to memory that is no longer valid.
- Null pointer dereference: Attempting to access memory through a null pointer.
- Buffer overflow: Accessing memory beyond allocated bounds.
- Double free: Releasing the same allocation more than once.
Good memory management is especially important in C, C++, embedded programming and systems development.

 PRACTICAL APPLICATIONS OF DSA
Application| Data Structures / Algorithms
Operating systems| Queues, stacks, trees, scheduling
Databases| B-trees, B+ trees, hash tables
Search engines| Tries, graphs, ranking algorithms
GPS navigation| Graphs, Dijkstra, A*
Social networks| Graphs, BFS, DFS
Compilers| Trees, stacks, hash tables
Computer networks| Graphs, queues, routing algorithms
Artificial intelligence| Graph search, heaps, trees
Robotics| Graphs, pathfinding, priority queues
Embedded systems| Arrays, circular buffers, queues, bit manipulation
File systems| Trees, hashing, indexing
Operating system memory management| Trees, heaps, allocation algorithms

 IMPORTANT DSA DESIGN AND OPTIMIZATION PRINCIPLES
1. Select a data structure based on the operations that occur most frequently.
2. Consider both time and space complexity.
3. Use hashing when fast key-based lookup is required.
4. Use arrays when frequent indexed access is important.
5. Use linked lists when frequent insertions and deletions at known positions are required.
6. Use stacks for LIFO processing and queues for FIFO processing.
7. Use heaps when repeatedly accessing the highest- or lowest-priority element.
8. Use balanced search trees when ordered data and efficient search, insertion and deletion are needed.
9. Use graphs to model networks and relationships.
10. Avoid unnecessary recursion for very deep computations.
11. Validate array indices and pointer references.
12. Test edge cases such as empty collections, one element, duplicates and very large inputs.
13. Measure actual performance rather than relying exclusively on theoretical complexity.
14. Prefer clear, correct and maintainable implementations before attempting optimization.

 KEY TAKEAWAYS
- Data structures determine how data is stored and organized.
- Algorithms determine how computational problems are solved.
- Time complexity measures growth in execution time.
- Space complexity measures growth in memory requirements.
- Arrays provide fast indexed access.
- Linked lists support dynamic storage and efficient pointer-based insertion/deletion.
- Stacks follow LIFO; queues follow FIFO.
- Hash tables provide average constant-time key-based operations.
- Trees organize hierarchical data.
- Graphs represent relationships and networks.
- Searching and sorting are fundamental algorithmic operations.
- Recursion, divide and conquer, greedy algorithms, dynamic programming and backtracking are important problem-solving techniques.
- Efficient DSA design is fundamental to scalable, reliable and high-performance software.