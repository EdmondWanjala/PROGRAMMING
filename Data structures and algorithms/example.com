        DATA STRUCTURES AND ALGORITHMS – C++ CODE 

1. ARRAYS

#include <iostream>
using namespace std;

int main() {
    int numbers[5] = {10, 20, 30, 40, 50};

    // Accessing an element using its index
    cout << "Third element: " << numbers[2] << endl;

    // Traversing the array
    for (int i = 0; i < 5; i++) {
        cout << numbers[i] << " ";
    }
    
    // Updating an element
    numbers[0] = 100;

    // Insertion at the end is possible only if capacity exists.
    cout << "\nUpdated first element: " << numbers[0];

    return 0;
}

2. TWO-DIMENSIONAL ARRAYS

#include <iostream>
using namespace std;

int main() {
    int matrix[2][3] = {
        {1, 2, 3},
        {4, 5, 6}
    };

    // Traversing rows and columns
    for (int i = 0; i < 2; i++) {
        for (int j = 0; j < 3; j++) {
            cout << matrix[i][j] << " ";
        }
        cout << endl;
    }

    return 0;
}

3. STRINGS

#include <iostream>
#include <string>
#include <algorithm>
using namespace std;

int main() {
    string first = "Data";
    string second = "Structures";

    // Concatenation
    string combined = first + " " + second;

    cout << combined << endl;

    // Length
    cout << "Length: " << combined.length() << endl;

    // Searching for a substring
    cout << "Position: " << combined.find("Structures") << endl;

    // Reversing
    reverse(combined.begin(), combined.end());

    cout << "Reversed: " << combined << endl;

    return 0;
}

4. SINGLY LINKED LIST

#include <iostream>
using namespace std;

struct Node {
    int data;
    Node* next;
};

int main() {
    // Creating nodes dynamically
    Node* first = new Node{10, nullptr};
    Node* second = new Node{20, nullptr};
    Node* third = new Node{30, nullptr};

    // Linking the nodes
    first->next = second;
    second->next = third;

    // Traversing the linked list
    Node* current = first;

    while (current != nullptr) {
        cout << current->data << " ";
        current = current->next;
    }

    // Releasing allocated memory
    delete first;
    delete second;
    delete third;

    return 0;
}

5. DOUBLY LINKED LIST

#include <iostream>
using namespace std;

struct Node {
    int data;
    Node* prev;
    Node* next;
};

int main() {
    Node* first = new Node{10, nullptr, nullptr};
    Node* second = new Node{20, nullptr, nullptr};

    // Connecting both directions
    first->next = second;
    second->prev = first;

    // Forward traversal
    Node* current = first;

    while (current != nullptr) {
        cout << current->data << " ";
        current = current->next;
    }

    // Backward traversal
    current = second;

    cout << "\nBackward: ";

    while (current != nullptr) {
        cout << current->data << " ";
        current = current->prev;
    }

    delete first;
    delete second;

    return 0;
}

6. CIRCULAR LINKED LIST

#include <iostream>
using namespace std;

struct Node {
    int data;
    Node* next;
};

int main() {
    Node* first = new Node{10, nullptr};
    Node* second = new Node{20, nullptr};
    Node* third = new Node{30, nullptr};

    first->next = second;
    second->next = third;

    // Last node points back to first
    third->next = first;

    // Traverse exactly three nodes
    Node* current = first;

    for (int i = 0; i < 3; i++) {
        cout << current->data << " ";
        current = current->next;
    }

    // Break the cycle before deleting nodes
    third->next = nullptr;

    delete first;
    delete second;
    delete third;

    return 0;
}

7. STACK USING ARRAY

#include <iostream>
using namespace std;

#define SIZE 5

class Stack {
    int arr[SIZE];
    int top;

public:
    Stack() {
        top = -1;
    }

    // Insert an element
    void push(int value) {
        if (top == SIZE - 1) {
            cout << "Stack Overflow\n";
            return;
        }

        arr[++top] = value;
    }

    // Remove the top element
    void pop() {
        if (top == -1) {
            cout << "Stack Underflow\n";
            return;
        }

        top--;
    }

    // Display the top element
    void peek() {
        if (top == -1)
            cout << "Stack is empty\n";
        else
            cout << "Top: " << arr[top] << endl;
    }
};

int main() {
    Stack s;

    s.push(10);
    s.push(20);
    s.push(30);

    s.peek();

    s.pop();

    s.peek();

    return 0;
}

8. QUEUE USING ARRAY

#include <iostream>
using namespace std;

#define SIZE 5

class Queue {
    int arr[SIZE];
    int front, rear;

public:
    Queue() {
        front = 0;
        rear = -1;
    }

    void enqueue(int value) {
        if (rear == SIZE - 1) {
            cout << "Queue is full\n";
            return;
        }

        arr[++rear] = value;
    }

    void dequeue() {
        if (front > rear) {
            cout << "Queue is empty\n";
            return;
        }

        front++;
    }

    void display() {
        for (int i = front; i <= rear; i++)
            cout << arr[i] << " ";
    }
};

int main() {
    Queue q;

    q.enqueue(10);
    q.enqueue(20);
    q.enqueue(30);

    q.display();

    q.dequeue();

    cout << "\nAfter deletion: ";
    q.display();

    return 0;
}

9. CIRCULAR QUEUE

#include <iostream>
using namespace std;

#define SIZE 5

class CircularQueue {
    int arr[SIZE];
    int front, rear, count;

public:
    CircularQueue() {
        front = 0;
        rear = -1;
        count = 0;
    }

    void enqueue(int value) {
        if (count == SIZE) {
            cout << "Queue full\n";
            return;
        }

        rear = (rear + 1) % SIZE;
        arr[rear] = value;
        count++;
    }

    void dequeue() {
        if (count == 0) {
            cout << "Queue empty\n";
            return;
        }

        front = (front + 1) % SIZE;
        count--;
    }

    void display() {
        for (int i = 0; i < count; i++)
            cout << arr[(front + i) % SIZE] << " ";
    }
};

int main() {
    CircularQueue q;

    q.enqueue(10);
    q.enqueue(20);
    q.enqueue(30);

    q.dequeue();

    q.enqueue(40);

    q.display();

    return 0;
}

10. HASH TABLE USING CHAINING

#include <iostream>
#include <vector>
#include <list>
using namespace std;

class HashTable {
    static const int SIZE = 10;

    vector<list<int>> table;

    int hashFunction(int key) {
        return key % SIZE;
    }

public:
    HashTable() : table(SIZE) {}

    void insert(int key) {
        int index = hashFunction(key);

        // Store colliding values in the same bucket
        table[index].push_back(key);
    }

    bool search(int key) {
        int index = hashFunction(key);

        for (int value : table[index]) {
            if (value == key)
                return true;
        }

        return false;
    }

    void display() {
        for (int i = 0; i < SIZE; i++) {
            cout << i << ": ";

            for (int value : table[i])
                cout << value << " -> ";

            cout << "NULL\n";
        }
    }
};

int main() {
    HashTable h;

    h.insert(10);
    h.insert(20);
    h.insert(15);

    h.display();

    cout << h.search(20);

    return 0;
}

11. BINARY SEARCH TREE (BST)

#include <iostream>
using namespace std;

struct Node {
    int data;
    Node* left;
    Node* right;
};

Node* insert(Node* root, int value) {
    if (root == nullptr)
        return new Node{value, nullptr, nullptr};

    if (value < root->data)
        root->left = insert(root->left, value);

    else if (value > root->data)
        root->right = insert(root->right, value);

    return root;
}

// Inorder traversal produces sorted order
void inorder(Node* root) {
    if (root == nullptr)
        return;

    inorder(root->left);
    cout << root->data << " ";
    inorder(root->right);
}

bool search(Node* root, int key) {
    if (root == nullptr)
        return false;

    if (root->data == key)
        return true;

    if (key < root->data)
        return search(root->left, key);

    return search(root->right, key);
}

int main() {
    Node* root = nullptr;

    root = insert(root, 50);
    root = insert(root, 30);
    root = insert(root, 70);
    root = insert(root, 20);
    root = insert(root, 40);

    inorder(root);

    cout << "\nFound: " << search(root, 40);

    return 0;
}

12. TREE TRAVERSALS

#include <iostream>
using namespace std;

struct Node {
    int data;
    Node* left;
    Node* right;
};

// Visit left, root, right
void inorder(Node* root) {
    if (root == nullptr) return;

    inorder(root->left);
    cout << root->data << " ";
    inorder(root->right);
}

// Visit root, left, right
void preorder(Node* root) {
    if (root == nullptr) return;

    cout << root->data << " ";
    preorder(root->left);
    preorder(root->right);
}

// Visit left, right, root
void postorder(Node* root) {
    if (root == nullptr) return;

    postorder(root->left);
    postorder(root->right);
    cout << root->data << " ";
}

int main() {
    Node* root = new Node{1, nullptr, nullptr};

    root->left = new Node{2, nullptr, nullptr};
    root->right = new Node{3, nullptr, nullptr};

    cout << "Inorder: ";
    inorder(root);

    cout << "\nPreorder: ";
    preorder(root);

    cout << "\nPostorder: ";
    postorder(root);

    return 0;
}

13. MIN HEAP / PRIORITY QUEUE

#include <iostream>
#include <queue>
using namespace std;

int main() {
    // Smallest element has the highest priority
    priority_queue<int, vector<int>, greater<int>> pq;

    pq.push(30);
    pq.push(10);
    pq.push(20);

    cout << "Minimum: " << pq.top() << endl;

    while (!pq.empty()) {
        cout << pq.top() << " ";
        pq.pop();
    }

    return 0;
}

14. LINEAR SEARCH

#include <iostream>
using namespace std;

int linearSearch(int arr[], int n, int key) {
    for (int i = 0; i < n; i++) {
        if (arr[i] == key)
            return i; // Return index if found
    }

    return -1; // Not found
}

int main() {
    int arr[] = {10, 20, 30, 40, 50};

    cout << linearSearch(arr, 5, 30);

    return 0;
}

15. BINARY SEARCH

#include <iostream>
using namespace std;

int binarySearch(int arr[], int n, int key) {
    int low = 0;
    int high = n - 1;

    while (low <= high) {
        int mid = low + (high - low) / 2;

        if (arr[mid] == key)
            return mid;

        else if (arr[mid] < key)
            low = mid + 1;

        else
            high = mid - 1;
    }

    return -1;
}

int main() {
    // Binary search requires sorted data
    int arr[] = {10, 20, 30, 40, 50};

    cout << binarySearch(arr, 5, 40);

    return 0;
}

16. BUBBLE SORT

#include <iostream>
using namespace std;

int main() {
    int arr[] = {5, 2, 8, 1, 3};
    int n = 5;

    for (int i = 0; i < n - 1; i++) {
        bool swapped = false;

        for (int j = 0; j < n - i - 1; j++) {

            // Swap adjacent elements if out of order
            if (arr[j] > arr[j + 1]) {
                swap(arr[j], arr[j + 1]);
                swapped = true;
            }
        }

        // Stop if no swaps occurred
        if (!swapped)
            break;
    }

    for (int x : arr)
        cout << x << " ";

    return 0;
}

17. SELECTION SORT

#include <iostream>
using namespace std;

int main() {
    int arr[] = {64, 25, 12, 22, 11};
    int n = 5;

    for (int i = 0; i < n - 1; i++) {
        int minIndex = i;

        // Find the smallest remaining element
        for (int j = i + 1; j < n; j++) {
            if (arr[j] < arr[minIndex])
                minIndex = j;
        }

        swap(arr[i], arr[minIndex]);
    }

    for (int x : arr)
        cout << x << " ";

    return 0;
}

18. INSERTION SORT

#include <iostream>
using namespace std;

int main() {
    int arr[] = {5, 3, 4, 1, 2};
    int n = 5;

    for (int i = 1; i < n; i++) {
        int key = arr[i];
        int j = i - 1;

        // Shift larger elements one position right
        while (j >= 0 && arr[j] > key) {
            arr[j + 1] = arr[j];
            j--;
        }

        // Insert key into its correct position
        arr[j + 1] = key;
    }

    for (int x : arr)
        cout << x << " ";

    return 0;
}

19. MERGE SORT

#include <iostream>
using namespace std;

void merge(int arr[], int left, int mid, int right) {
    int n1 = mid - left + 1;
    int n2 = right - mid;

    int L[n1], R[n2];

    for (int i = 0; i < n1; i++)
        L[i] = arr[left + i];

    for (int j = 0; j < n2; j++)
        R[j] = arr[mid + 1 + j];

    int i = 0, j = 0, k = left;

    // Merge the two sorted sections
    while (i < n1 && j < n2) {
        if (L[i] <= R[j])
            arr[k++] = L[i++];
        else
            arr[k++] = R[j++];
    }

    while (i < n1)
        arr[k++] = L[i++];

    while (j < n2)
        arr[k++] = R[j++];
}

void mergeSort(int arr[], int left, int right) {
    if (left >= right)
        return;

    int mid = left + (right - left) / 2;

    mergeSort(arr, left, mid);
    mergeSort(arr, mid + 1, right);

    merge(arr, left, mid, right);
}

int main() {
    int arr[] = {8, 3, 5, 1, 9, 2};
    int n = 6;

    mergeSort(arr, 0, n - 1);

    for (int x : arr)
        cout << x << " ";

    return 0;
}

Note: Variable-length arrays in the merge function are supported by some compilers as extensions, but are not standard C++. Use "vector<int>" for portable modern C++ implementations.

20. QUICK SORT

#include <iostream>
using namespace std;

int partition(int arr[], int low, int high) {
    int pivot = arr[high];

    int i = low - 1;

    for (int j = low; j < high; j++) {
        if (arr[j] < pivot) {
            i++;
            swap(arr[i], arr[j]);
        }
    }

    // Place pivot in its correct position
    swap(arr[i + 1], arr[high]);

    return i + 1;
}

void quickSort(int arr[], int low, int high) {
    if (low < high) {
        int pivotIndex = partition(arr, low, high);

        quickSort(arr, low, pivotIndex - 1);
        quickSort(arr, pivotIndex + 1, high);
    }
}

int main() {
    int arr[] = {10, 7, 8, 9, 1, 5};
    int n = 6;

    quickSort(arr, 0, n - 1);

    for (int x : arr)
        cout << x << " ";

    return 0;
}

21. RECURSION – FACTORIAL

#include <iostream>
using namespace std;

long long factorial(int n) {
    // Base case
    if (n <= 1)
        return 1;

    // Recursive case
    return n * factorial(n - 1);
}

int main() {
    cout << factorial(5);

    return 0;
}

22. FIBONACCI USING DYNAMIC PROGRAMMING

#include <iostream>
using namespace std;

int main() {
    int n = 10;

    int dp[11];

    dp[0] = 0;
    dp[1] = 1;

    // Build solutions from smaller subproblems
    for (int i = 2; i <= n; i++) {
        dp[i] = dp[i - 1] + dp[i - 2];
    }

    cout << dp[n];

    return 0;
}

23. MEMOIZATION

#include <iostream>
using namespace std;

int memo[100];

// Top-down dynamic programming
int fibonacci(int n) {
    if (n <= 1)
        return n;

    // Reuse an already calculated result
    if (memo[n] != -1)
        return memo[n];

    memo[n] = fibonacci(n - 1) + fibonacci(n - 2);

    return memo[n];
}

int main() {
    fill(memo, memo + 100, -1);

    cout << fibonacci(10);

    return 0;
}

24. BREADTH-FIRST SEARCH (BFS)

#include <iostream>
#include <vector>
#include <queue>
using namespace std;

void BFS(int start, vector<int> graph[], int V) {
    vector<bool> visited(V, false);

    queue<int> q;

    visited[start] = true;
    q.push(start);

    while (!q.empty()) {
        int current = q.front();
        q.pop();

        cout << current << " ";

        for (int neighbor : graph[current]) {
            if (!visited[neighbor]) {
                visited[neighbor] = true;
                q.push(neighbor);
            }
        }
    }
}

int main() {
    const int V = 5;

    vector<int> graph[V];

    graph[0] = {1, 2};
    graph[1] = {0, 3};
    graph[2] = {0, 4};
    graph[3] = {1};
    graph[4] = {2};

    BFS(0, graph, V);

    return 0;
}

25. DEPTH-FIRST SEARCH (DFS)

#include <iostream>
#include <vector>
using namespace std;

void DFS(int vertex, vector<int> graph[],
         vector<bool>& visited) {

    visited[vertex] = true;

    cout << vertex << " ";

    // Explore unvisited neighbors
    for (int neighbor : graph[vertex]) {
        if (!visited[neighbor]) {
            DFS(neighbor, graph, visited);
        }
    }
}

int main() {
    const int V = 5;

    vector<int> graph[V];

    graph[0] = {1, 2};
    graph[1] = {0, 3};
    graph[2] = {0, 4};
    graph[3] = {1};
    graph[4] = {2};

    vector<bool> visited(V, false);

    DFS(0, graph, visited);

    return 0;
}

26. DIJKSTRA'S SHORTEST PATH

#include <iostream>
#include <vector>
#include <queue>
#include <climits>
using namespace std;

void dijkstra(int V, vector<pair<int, int>> graph[],
              int source) {

    vector<int> dist(V, INT_MAX);

    // Min heap: {distance, vertex}
    priority_queue<
        pair<int, int>,
        vector<pair<int, int>>,
        greater<pair<int, int>>
    > pq;

    dist[source] = 0;
    pq.push({0, source});

    while (!pq.empty()) {
        int d = pq.top().first;
        int u = pq.top().second;
        pq.pop();

        if (d != dist[u])
            continue;

        for (auto edge : graph[u]) {
            int v = edge.first;
            int weight = edge.second;

            // Relax the edge
            if (dist[u] + weight < dist[v]) {
                dist[v] = dist[u] + weight;
                pq.push({dist[v], v});
            }
        }
    }

    for (int i = 0; i < V; i++) {
        cout << i << ": ";

        if (dist[i] == INT_MAX)
            cout << "Unreachable\n";
        else
            cout << dist[i] << endl;
    }
}

int main() {
    const int V = 4;

    vector<pair<int, int>> graph[V];

    graph[0].push_back({1, 4});
    graph[0].push_back({2, 1});
    graph[2].push_back({1, 2});
    graph[1].push_back({3, 1});
    graph[2].push_back({3, 5});

    dijkstra(V, graph, 0);

    return 0;
}

Important: Dijkstra's algorithm requires nonnegative edge weights.

27. UNION-FIND (DISJOINT SET UNION)

#include <iostream>
#include <vector>
using namespace std;

class DSU {
    vector<int> parent, rank;

public:
    DSU(int n) {
        parent.resize(n);
        rank.resize(n, 0);

        for (int i = 0; i < n; i++)
            parent[i] = i;
    }

    // Path compression
    int find(int x) {
        if (parent[x] != x)
            parent[x] = find(parent[x]);

        return parent[x];
    }

    // Union by rank
    void unite(int a, int b) {
        a = find(a);
        b = find(b);

        if (a == b)
            return;

        if (rank[a] < rank[b])
            swap(a, b);

        parent[b] = a;

        if (rank[a] == rank[b])
            rank[a]++;
    }
};

int main() {
    DSU dsu(5);

    dsu.unite(0, 1);
    dsu.unite(1, 2);

    cout << (dsu.find(0) == dsu.find(2));

    return 0;
}

28. BIT MANIPULATION

#include <iostream>
using namespace std;

int main() {
    int n = 10;
    int k = 1;

    // Check whether bit k is set
    cout << ((n >> k) & 1) << endl;

    // Set bit k
    n = n | (1 << k);

    // Clear bit k
    n = n & ~(1 << k);

    // Toggle bit k
    n = n ^ (1 << k);

    // Check whether n is a power of two
    bool isPowerOfTwo =
        n > 0 && (n & (n - 1)) == 0;

    cout << isPowerOfTwo;

    return 0;
}

29. GREEDY ALGORITHM – ACTIVITY SELECTION

#include <iostream>
#include <algorithm>
#include <vector>
using namespace std;

int main() {
    // Each activity: {start time, finish time}
    vector<pair<int, int>> activities = {
        {1, 3}, {2, 5}, {4, 7},
        {6, 9}, {8, 10}
    };

    // Sort by finishing time
    sort(activities.begin(), activities.end(),
         [](auto a, auto b) {
             return a.second < b.second;
         });

    int lastFinish = -1;

    for (auto activity : activities) {
        if (activity.first >= lastFinish) {
            cout << "(" << activity.first
                 << "," << activity.second << ") ";

            lastFinish = activity.second;
        }
    }

    return 0;
}

30. BACKTRACKING – N-QUEENS (CORE IMPLEMENTATION)

#include <iostream>
#include <vector>
using namespace std;

const int N = 4;

bool isSafe(vector<vector<int>>& board,
            int row, int col) {

    // Check the same column
    for (int i = 0; i < row; i++) {
        if (board[i][col])
            return false;
    }

    // Check upper-left diagonal
    for (int i = row - 1, j = col - 1;
         i >= 0 && j >= 0; i--, j--) {

        if (board[i][j])
            return false;
    }

    // Check upper-right diagonal
    for (int i = row - 1, j = col + 1;
         i >= 0 && j < N; i--, j++) {

        if (board[i][j])
            return false;
    }

    return true;
}

bool solve(vector<vector<int>>& board, int row) {
    if (row == N)
        return true;

    for (int col = 0; col < N; col++) {
        if (isSafe(board, row, col)) {

            board[row][col] = 1;

            if (solve(board, row + 1))
                return true;

            // Backtrack: undo the choice
            board[row][col] = 0;
        }
    }

    return false;
}

int main() {
    vector<vector<int>> board(
        N, vector<int>(N, 0)
    );

    if (solve(board, 0)) {
        for (auto row : board) {
            for (int x : row)
                cout << x << " ";

            cout << endl;
        }
    } else {
        cout << "No solution";
    }

    return 0;
}

31. TOPOLOGICAL SORTING – KAHN'S ALGORITHM

#include <iostream>
#include <vector>
#include <queue>
using namespace std;

int main() {
    int V = 4;

    vector<int> graph[V];
    vector<int> indegree(V, 0);

    // Directed edges
    graph[0].push_back(1);
    graph[0].push_back(2);
    graph[1].push_back(3);
    graph[2].push_back(3);

    for (int u = 0; u < V; u++) {
        for (int v : graph[u])
            indegree[v]++;
    }

    queue<int> q;

    for (int i = 0; i < V; i++) {
        if (indegree[i] == 0)
            q.push(i);
    }

    int processed = 0;

    while (!q.empty()) {
        int u = q.front();
        q.pop();

        cout << u << " ";
        processed++;

        for (int v : graph[u]) {
            indegree[v]--;

            if (indegree[v] == 0)
                q.push(v);
        }
    }

    if (processed != V)
        cout << "\nGraph contains a cycle";

    return 0;
}

32. USEFUL C++ STL DATA STRUCTURES

#include <iostream>
#include <vector>
#include <list>
#include <stack>
#include <queue>
#include <map>
#include <unordered_map>
#include <set>
using namespace std;

int main() {

    // Dynamic array
    vector<int> v = {10, 20, 30};
    v.push_back(40);

    // Linked list
    list<int> l = {1, 2, 3};
    l.push_front(0);

    // Stack (LIFO)
    stack<int> s;
    s.push(10);
    s.push(20);
    s.pop();

    // Queue (FIFO)
    queue<int> q;
    q.push(10);
    q.push(20);
    q.pop();

    // Priority queue (max heap by default)
    priority_queue<int> pq;
    pq.push(30);
    pq.push(10);

    // Ordered map: sorted keys
    map<int, string> m;
    m[1] = "One";

    // Unordered map: hash-based lookup
    unordered_map<string, int> um;
    um["Alice"] = 20;

    // Set: unique sorted elements
    set<int> st;
    st.insert(10);
    st.insert(20);
    st.insert(10); // Duplicate ignored

    return 0;
}

---

33. GENERAL C++ DSA PROGRAMMING PRACTICES

1. Include the correct header files.
2. Initialize variables before using them.
3. Check array boundaries.
4. Handle empty data structures.
5. Avoid dereferencing null pointers.
6. Release manually allocated memory.
7. Prefer "vector" over manually managed dynamic arrays when appropriate.
8. Use references when passing large objects to avoid unnecessary copying.
9. Use "const" when a function should not modify an argument.
10. Use STL containers when they provide the required functionality.
11. Test algorithms with empty input, one element, duplicates, sorted input and reverse-sorted input.
12. Analyze both time and auxiliary space complexity.
13. Avoid integer overflow in calculations involving large values.
14. Use iterative algorithms when recursion depth may become excessive.

34. COMPILATION AND EXECUTION

Using GCC/G++:

Compile:
g++ -std=c++17 main.cpp -o main

Run on Ubuntu/Linux:
./main

Run on Windows:
main.exe

Enable useful compiler warnings:
g++ -std=c++17 -Wall -Wextra -Wpedantic main.cpp -o main

For debugging:
g++ -std=c++17 -g main.cpp -o main