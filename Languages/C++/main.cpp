/*
 * C++17 Programming: Practical Examples
 *
 * Build one example at a time:
 *   g++ -std=c++17 -Wall -Wextra -Wpedantic -DCPP_EXAMPLE=1 cpp_examples.cpp -o cpp_examples
 *
 * Change CPP_EXAMPLE to a number from 1 to 20 to select another example.
 * If CPP_EXAMPLE is not supplied, example 1 is selected.
 * For example 18 (threads), also use -pthread on GCC/Clang:
 *   g++ -std=c++17 -Wall -Wextra -Wpedantic -pthread -DCPP_EXAMPLE=18 cpp_examples.cpp -o cpp_examples
 */

#ifndef CPP_EXAMPLE
#define CPP_EXAMPLE 1
#endif

#if CPP_EXAMPLE < 1 || CPP_EXAMPLE > 20
#error "CPP_EXAMPLE must be between 1 and 20."
#endif

/* ------------------------------------------------------------------------- */
/* 1. BASIC PROGRAM, VARIABLES, TYPES, AND OPERATORS                         */
/* ------------------------------------------------------------------------- */
#if CPP_EXAMPLE == 1
#include <iostream>
#include <string>

int main()
{
    int age = 21;
    double height = 1.75;
    char initial = 'A';
    bool isStudent = true;
    std::string name = "Alex";

    std::cout << "Name: " << name << '\n';
    std::cout << "Age: " << age << '\n';
    std::cout << "Height: " << height << " m\n";
    std::cout << "Initial: " << initial << '\n';
    std::cout << "Student: " << std::boolalpha << isStudent << '\n';

    int a = 17;
    int b = 5;

    std::cout << "Addition: " << a + b << '\n';
    std::cout << "Subtraction: " << a - b << '\n';
    std::cout << "Multiplication: " << a * b << '\n';
    std::cout << "Integer division: " << a / b << '\n';
    std::cout << "Remainder: " << a % b << '\n';
    std::cout << "Decimal division: "
              << static_cast<double>(a) / b << '\n';
    std::cout << "Size of int: " << sizeof(int) << " bytes\n";

    return 0;
}
#endif

/* ------------------------------------------------------------------------- */
/* 2. INPUT AND VALIDATION                                                    */
/* ------------------------------------------------------------------------- */
#if CPP_EXAMPLE == 2
#include <iostream>
#include <limits>
#include <string>

int main()
{
    int age{};

    std::cout << "Enter your age: ";
    if (!(std::cin >> age)) {
        std::cerr << "Invalid integer input.\n";
        return 1;
    }

    if (age < 0) {
        std::cout << "Age cannot be negative.\n";
    } else if (age < 18) {
        std::cout << "You are a minor.\n";
    } else {
        std::cout << "You are an adult.\n";
    }

    std::cin.ignore(
        std::numeric_limits<std::streamsize>::max(), '\n'
    );

    std::string fullName;
    std::cout << "Enter your full name: ";
    if (std::getline(std::cin, fullName)) {
        std::cout << "Hello, " << fullName << '\n';
    }

    return 0;
}
#endif

/* ------------------------------------------------------------------------- */
/* 3. CONDITIONALS AND SWITCH                                                 */
/* ------------------------------------------------------------------------- */
#if CPP_EXAMPLE == 3
#include <iostream>
#include <string>

int main()
{
    int score = 76;

    if (score >= 70) {
        std::cout << "Grade A\n";
    } else if (score >= 60) {
        std::cout << "Grade B\n";
    } else if (score >= 50) {
        std::cout << "Grade C\n";
    } else {
        std::cout << "Grade D\n";
    }

    int choice = 2;

    switch (choice) {
        case 1:
            std::cout << "Add record\n";
            break;
        case 2:
            std::cout << "View records\n";
            break;
        case 3:
            std::cout << "Delete record\n";
            break;
        default:
            std::cout << "Invalid choice\n";
            break;
    }

    std::string status = (score >= 50) ? "Pass" : "Fail";
    std::cout << status << '\n';

    return 0;
}
#endif

/* ------------------------------------------------------------------------- */
/* 4. LOOPS                                                                   */
/* ------------------------------------------------------------------------- */
#if CPP_EXAMPLE == 4
#include <iostream>
#include <vector>

int main()
{
    for (int i = 1; i <= 5; ++i) {
        std::cout << i << ' ';
    }
    std::cout << '\n';

    int count = 3;
    while (count > 0) {
        std::cout << "Countdown: " << count << '\n';
        --count;
    }

    int number = 1;
    do {
        std::cout << "Number: " << number << '\n';
        ++number;
    } while (number <= 3);

    std::vector<int> values{10, 20, 30};
    for (int value : values) {
        std::cout << value << ' ';
    }
    std::cout << '\n';

    for (int i = 1; i <= 8; ++i) {
        if (i == 3) {
            continue;
        }
        if (i == 6) {
            break;
        }
        std::cout << i << ' ';
    }
    std::cout << '\n';

    return 0;
}
#endif

/* ------------------------------------------------------------------------- */
/* 5. ARRAYS, VECTORS, AND STRINGS                                            */
/* ------------------------------------------------------------------------- */
#if CPP_EXAMPLE == 5
#include <array>
#include <iostream>
#include <string>
#include <vector>

int main()
{
    int numbers[] = {10, 20, 30};
    std::cout << "First number: " << numbers[0] << '\n';

    std::array<int, 4> marks{75, 82, 91, 68};
    int total = 0;
    for (int mark : marks) {
        total += mark;
    }

    double average = static_cast<double>(total) /
                     static_cast<double>(marks.size());
    std::cout << "Average: " << average << '\n';

    std::vector<int> values{5, 10, 15};
    values.push_back(20);
    values.push_back(25);

    std::cout << "Vector size: " << values.size() << '\n';
    std::cout << "Second vector item: " << values.at(1) << '\n';

    std::string message = "Hello";
    message += " C++";
    std::cout << message << '\n';
    std::cout << "String length: " << message.size() << '\n';

    return 0;
}
#endif

/* ------------------------------------------------------------------------- */
/* 6. FUNCTIONS, REFERENCES, AND OVERLOADING                                  */
/* ------------------------------------------------------------------------- */
#if CPP_EXAMPLE == 6
#include <iostream>
#include <string>

int add(int a, int b);
double add(double a, double b);
void swapValues(int& a, int& b);
void display(const std::string& text);

int main()
{
    std::cout << add(4, 5) << '\n';
    std::cout << add(2.5, 3.2) << '\n';

    int x = 10;
    int y = 20;
    swapValues(x, y);

    std::cout << "x = " << x << ", y = " << y << '\n';
    display("Functions support code reuse.");

    return 0;
}

int add(int a, int b)
{
    return a + b;
}

double add(double a, double b)
{
    return a + b;
}

void swapValues(int& a, int& b)
{
    int temporary = a;
    a = b;
    b = temporary;
}

void display(const std::string& text)
{
    std::cout << text << '\n';
}
#endif

/* ------------------------------------------------------------------------- */
/* 7. POINTERS AND REFERENCES                                                 */
/* ------------------------------------------------------------------------- */
#if CPP_EXAMPLE == 7
#include <iostream>

int main()
{
    int value = 42;
    int* pointer = &value;
    int& reference = value;

    std::cout << "Value: " << value << '\n';
    std::cout << "Pointer address: "
              << static_cast<const void*>(pointer) << '\n';
    std::cout << "Dereferenced pointer: " << *pointer << '\n';

    *pointer = 50;
    std::cout << "After pointer update: " << value << '\n';

    reference = 75;
    std::cout << "After reference update: " << value << '\n';

    int* emptyPointer = nullptr;
    if (emptyPointer == nullptr) {
        std::cout << "Pointer is null.\n";
    }

    int numbers[] = {10, 20, 30};
    int* p = numbers;
    std::cout << *p << '\n';
    std::cout << *(p + 1) << '\n';

    return 0;
}
#endif

/* ------------------------------------------------------------------------- */
/* 8. CLASSES, OBJECTS, AND ENCAPSULATION                                     */
/* ------------------------------------------------------------------------- */
#if CPP_EXAMPLE == 8
#include <iostream>
#include <stdexcept>
#include <string>

class BankAccount {
private:
    std::string owner;
    double balance;

public:
    BankAccount(const std::string& accountOwner, double openingBalance)
        : owner(accountOwner), balance(openingBalance)
    {
        if (openingBalance < 0) {
            throw std::invalid_argument(
                "Opening balance cannot be negative."
            );
        }
    }

    void deposit(double amount)
    {
        if (amount <= 0) {
            throw std::invalid_argument("Deposit must be positive.");
        }
        balance += amount;
    }

    void withdraw(double amount)
    {
        if (amount <= 0 || amount > balance) {
            throw std::invalid_argument("Invalid withdrawal amount.");
        }
        balance -= amount;
    }

    double getBalance() const
    {
        return balance;
    }

    void display() const
    {
        std::cout << owner << ": " << balance << '\n';
    }
};

int main()
{
    BankAccount account("Alex", 1000.0);
    account.deposit(250.0);
    account.withdraw(100.0);
    account.display();

    std::cout << "Balance: " << account.getBalance() << '\n';
    return 0;
}
#endif

/* ------------------------------------------------------------------------- */
/* 9. INHERITANCE AND POLYMORPHISM                                            */
/* ------------------------------------------------------------------------- */
#if CPP_EXAMPLE == 9
#include <iostream>
#include <memory>
#include <vector>

class Animal {
public:
    virtual ~Animal() = default;

    virtual void speak() const
    {
        std::cout << "Some sound\n";
    }
};

class Dog : public Animal {
public:
    void speak() const override
    {
        std::cout << "Bark\n";
    }
};

class Cat : public Animal {
public:
    void speak() const override
    {
        std::cout << "Meow\n";
    }
};

int main()
{
    std::vector<std::unique_ptr<Animal>> animals;
    animals.push_back(std::make_unique<Dog>());
    animals.push_back(std::make_unique<Cat>());

    for (const auto& animal : animals) {
        animal->speak();
    }

    return 0;
}
#endif

/* ------------------------------------------------------------------------- */
/* 10. TEMPLATES AND GENERIC PROGRAMMING                                      */
/* ------------------------------------------------------------------------- */
#if CPP_EXAMPLE == 10
#include <iostream>
#include <string>

template <typename T>
T maximum(T a, T b)
{
    return (a > b) ? a : b;
}

template <typename T>
class Box {
private:
    T value;

public:
    explicit Box(const T& initialValue) : value(initialValue) {}

    const T& getValue() const
    {
        return value;
    }
};

int main()
{
    std::cout << maximum(10, 20) << '\n';
    std::cout << maximum(2.5, 1.7) << '\n';

    Box<int> integerBox(100);
    Box<std::string> textBox("Hello");

    std::cout << integerBox.getValue() << '\n';
    std::cout << textBox.getValue() << '\n';
    return 0;
}
#endif

/* ------------------------------------------------------------------------- */
/* 11. STANDARD TEMPLATE LIBRARY CONTAINERS                                   */
/* ------------------------------------------------------------------------- */
#if CPP_EXAMPLE == 11
#include <algorithm>
#include <iostream>
#include <map>
#include <numeric>
#include <set>
#include <string>
#include <unordered_map>
#include <vector>

int main()
{
    std::vector<int> numbers{5, 2, 8, 2, 1};
    std::sort(numbers.begin(), numbers.end());

    std::cout << "Sorted: ";
    for (int number : numbers) {
        std::cout << number << ' ';
    }
    std::cout << '\n';

    int total = std::accumulate(numbers.begin(), numbers.end(), 0);
    std::cout << "Total: " << total << '\n';

    auto position = std::find(numbers.begin(), numbers.end(), 8);
    if (position != numbers.end()) {
        std::cout << "Found 8 at index "
                  << position - numbers.begin() << '\n';
    }

    std::set<int> uniqueNumbers{3, 1, 3, 2};
    for (int number : uniqueNumbers) {
        std::cout << number << ' ';
    }
    std::cout << '\n';

    std::map<std::string, int> scores{
        {"Amina", 85},
        {"Brian", 72}
    };
    std::cout << "Amina: " << scores.at("Amina") << '\n';

    std::unordered_map<std::string, int> inventory;
    inventory["Sensors"] = 10;
    inventory["Motors"] = 4;
    std::cout << "Sensors: " << inventory.at("Sensors") << '\n';

    return 0;
}
#endif

/* ------------------------------------------------------------------------- */
/* 12. LAMBDA FUNCTIONS                                                       */
/* ------------------------------------------------------------------------- */
#if CPP_EXAMPLE == 12
#include <algorithm>
#include <iostream>
#include <vector>

int main()
{
    std::vector<int> numbers{5, 1, 8, 3, 2};

    std::sort(numbers.begin(), numbers.end(), [](int a, int b) {
        return a > b;
    });

    for (int number : numbers) {
        std::cout << number << ' ';
    }
    std::cout << '\n';

    int multiplier = 3;
    auto multiply = [multiplier](int value) {
        return value * multiplier;
    };

    std::cout << multiply(10) << '\n';
    return 0;
}
#endif

/* ------------------------------------------------------------------------- */
/* 13. EXCEPTION HANDLING                                                     */
/* ------------------------------------------------------------------------- */
#if CPP_EXAMPLE == 13
#include <iostream>
#include <stdexcept>

 double divide(double numerator, double denominator)
{
    if (denominator == 0.0) {
        throw std::invalid_argument("Denominator cannot be zero.");
    }
    return numerator / denominator;
}

int main()
{
    try {
        std::cout << divide(10.0, 2.0) << '\n';
        std::cout << divide(10.0, 0.0) << '\n';
    } catch (const std::invalid_argument& error) {
        std::cerr << "Error: " << error.what() << '\n';
    } catch (const std::exception& error) {
        std::cerr << "Unexpected error: " << error.what() << '\n';
    }

    return 0;
}
#endif

/* ------------------------------------------------------------------------- */
/* 14. FILE HANDLING                                                          */
/* ------------------------------------------------------------------------- */
#if CPP_EXAMPLE == 14
#include <fstream>
#include <iostream>
#include <string>

int main()
{
    {
        std::ofstream output("notes.txt");
        if (!output) {
            std::cerr << "Could not open file for writing.\n";
            return 1;
        }

        output << "C++ file handling\n";
        output << "Files preserve data between executions.\n";

        if (!output) {
            std::cerr << "Writing failed.\n";
            return 1;
        }
    } // The output file closes automatically here.

    std::ifstream input("notes.txt");
    if (!input) {
        std::cerr << "Could not open file for reading.\n";
        return 1;
    }

    std::string line;
    while (std::getline(input, line)) {
        std::cout << line << '\n';
    }

    if (input.bad()) {
        std::cerr << "A file I/O error occurred.\n";
        return 1;
    }

    return 0;
}
#endif

/* ------------------------------------------------------------------------- */
/* 15. SMART POINTERS AND RESOURCE MANAGEMENT                                 */
/* ------------------------------------------------------------------------- */
#if CPP_EXAMPLE == 15
#include <iostream>
#include <memory>
#include <string>

class Sensor {
public:
    explicit Sensor(const std::string& sensorName) : name(sensorName)
    {
        std::cout << name << " created\n";
    }

    ~Sensor()
    {
        std::cout << name << " destroyed\n";
    }

    void read() const
    {
        std::cout << "Reading " << name << '\n';
    }

private:
    std::string name;
};

int main()
{
    auto sensor = std::make_unique<Sensor>("Temperature sensor");
    sensor->read();

    auto sharedSensor = std::make_shared<Sensor>("Pressure sensor");
    auto anotherOwner = sharedSensor;

    std::cout << "Owners: " << sharedSensor.use_count() << '\n';
    anotherOwner->read();

    return 0;
}
#endif

/* ------------------------------------------------------------------------- */
/* 16. ENUMERATIONS, OPTIONAL, AND VARIANT                                    */
/* ------------------------------------------------------------------------- */
#if CPP_EXAMPLE == 16
#include <iostream>
#include <optional>
#include <string>
#include <variant>

enum class DeviceState {
    Off,
    On,
    Error
};

std::optional<int> findPositive(int value)
{
    if (value > 0) {
        return value;
    }
    return std::nullopt;
}

int main()
{
    DeviceState state = DeviceState::On;
    if (state == DeviceState::On) {
        std::cout << "Device is on.\n";
    }

    auto result = findPositive(10);
    if (result.has_value()) {
        std::cout << "Result: " << result.value() << '\n';
    }

    std::variant<int, double, std::string> data = 42;
    std::cout << std::get<int>(data) << '\n';

    data = std::string("C++");
    std::cout << std::get<std::string>(data) << '\n';

    return 0;
}
#endif

/* ------------------------------------------------------------------------- */
/* 17. ALGORITHMS: LINEAR SEARCH AND BINARY SEARCH                            */
/* ------------------------------------------------------------------------- */
#if CPP_EXAMPLE == 17
#include <algorithm>
#include <cstddef>
#include <iostream>
#include <vector>

std::ptrdiff_t linearSearch(const std::vector<int>& values, int target)
{
    for (std::size_t i = 0; i < values.size(); ++i) {
        if (values[i] == target) {
            return static_cast<std::ptrdiff_t>(i);
        }
    }
    return -1;
}

std::ptrdiff_t binarySearch(const std::vector<int>& sortedValues, int target)
{
    // The vector must be sorted in ascending order.
    auto position = std::lower_bound(
        sortedValues.begin(), sortedValues.end(), target
    );

    if (position != sortedValues.end() && *position == target) {
        return position - sortedValues.begin();
    }
    return -1;
}

int main()
{
    std::vector<int> values{2, 4, 7, 8, 10};

    std::cout << linearSearch(values, 7) << '\n';
    std::cout << binarySearch(values, 8) << '\n';
    std::cout << binarySearch(values, 6) << '\n';

    return 0;
}
#endif

/* ------------------------------------------------------------------------- */
/* 18. MULTITHREADING                                                         */
/* ------------------------------------------------------------------------- */
#if CPP_EXAMPLE == 18
#include <iostream>
#include <mutex>
#include <thread>

int main()
{
    int counter = 0;
    std::mutex counterMutex;

    auto worker = [&counter, &counterMutex]() {
        for (int i = 0; i < 10000; ++i) {
            std::lock_guard<std::mutex> lock(counterMutex);
            ++counter;
        }
    };

    std::thread first(worker);
    std::thread second(worker);

    first.join();
    second.join();

    std::cout << "Counter: " << counter << '\n';
    return 0;
}
#endif

/* ------------------------------------------------------------------------- */
/* 19. ENGINEERING CALCULATIONS                                               */
/* ------------------------------------------------------------------------- */
#if CPP_EXAMPLE == 19
#include <cmath>
#include <iostream>
#include <stdexcept>

constexpr double PI = 3.14159265358979323846;

double electricalPower(double voltage, double current)
{
    return voltage * current;
}

double circleArea(double radius)
{
    if (radius < 0) {
        throw std::invalid_argument("Radius cannot be negative.");
    }
    return PI * radius * radius;
}

int main()
{
    double voltage = 12.0;
    double current = 2.5;
    double radius = 0.1;

    std::cout << "Electrical power: "
              << electricalPower(voltage, current) << " W\n";
    std::cout << "Circle area: " << circleArea(radius)
              << " square units\n";
    std::cout << "Square root of 81: " << std::sqrt(81.0) << '\n';

    return 0;
}
#endif

/* ------------------------------------------------------------------------- */
/* 20. TESTING WITH SIMPLE ASSERTIONS                                         */
/* ------------------------------------------------------------------------- */
#if CPP_EXAMPLE == 20
#include <cassert>
#include <iostream>

int square(int number)
{
    return number * number;
}

int main()
{
    assert(square(3) == 9);
    assert(square(0) == 0);
    assert(square(-4) == 16);

    std::cout << "All tests passed.\n";
    return 0;
}
#endif

/* ------------------------------------------------------------------------- */
/* 21. SEPARATE HEADER AND SOURCE FILES (REFERENCE EXAMPLE)                  */
/* ------------------------------------------------------------------------- */
/*
calculator.hpp:

#ifndef CALCULATOR_HPP
#define CALCULATOR_HPP

int addNumbers(int a, int b);

#endif

calculator.cpp:

#include "calculator.hpp"

int addNumbers(int a, int b)
{
    return a + b;
}

main.cpp:

#include <iostream>
#include "calculator.hpp"

int main()
{
    std::cout << addNumbers(5, 7) << '\n';
    return 0;
}

Compile the separate-file project with:
g++ -std=c++17 -Wall -Wextra -Wpedantic main.cpp calculator.cpp -o calculator
*/

/* ------------------------------------------------------------------------- */
/* 22. BUILD AND DEBUG COMMANDS (REFERENCE)                                  */
/* ------------------------------------------------------------------------- */
/*
Build one example (replace 1 with a number from 1 to 20):
g++ -std=c++17 -Wall -Wextra -Wpedantic -DCPP_EXAMPLE=1 cpp_examples.cpp -o cpp_examples

Build the threading example on GCC/Clang:
g++ -std=c++17 -Wall -Wextra -Wpedantic -pthread -DCPP_EXAMPLE=18 cpp_examples.cpp -o cpp_examples

Run on Linux/macOS:
./cpp_examples

Build with sanitizers when supported:
g++ -std=c++17 -Wall -Wextra -g -fsanitize=address,undefined cpp_examples.cpp -o cpp_examples

Debug with GDB:
g++ -std=c++17 -g cpp_examples.cpp -o cpp_examples
gdb ./cpp_examples
*/
