# PYTHON PROGRAMMING — CODE
# Save as python_examples.py
# Standard library only, except where an optional dependency is noted.

# VARIABLES, DATA TYPES, OPERATORS, INPUT AND OUTPUT
name = "Alex"
age = 21
height = 1.75
is_student = True
nothing = None

print(f"Name: {name}, age: {age}, height: {height} m")
print(type(age), isinstance(height, float))

# Arithmetic operators
a, b = 17, 5
print(a + b)
print(a - b)
print(a * b)
print(a / b)
print(a // b)
print(a % b)
print(a ** 2)

# Comparison and logical operators
print(a > b)
print(a == b)
print(a > 10 and b < 10)

# Identity versus equality
x = [1, 2]
y = [1, 2]
print(x == y)
print(x is y)
print(nothing is None)

# Safe input conversion
user_age_text = input("Enter your age: ")
try:
    user_age = int(user_age_text)
    if user_age >= 0:
        print(f"Your age is {user_age}.")
    else:
        print("Age cannot be negative.")
except ValueError:
#     print("Enter a valid whole number.")

# CONDITIONS AND LOOPS
    score = 76
if score >= 70:
    grade = "A"
elif score >= 60:
    grade = "B"
elif score >= 50:
    grade = "C"
else:
    grade = "D"
print("Grade:", grade)

status = "Adult" if age >= 18 else "Minor"
print(status)

for number in range(1, 6):
    print(number)

subjects = ["Math", "Physics", "Python"]
for index, subject in enumerate(subjects, start=1):
    print(index, subject)

names = ["Amina", "Brian", "Carol"]
marks = [85, 72, 91]
for student, mark in zip(names, marks):
    print(student, mark)

count = 3
while count > 0:
    print("Countdown:", count)
    count -= 1

for number in range(1, 8):
    if number == 3:
        continue
    if number == 6:
        break
    print(number)

# STRINGS AND TEXT PROCESSING
text = "  Python Programming  "
print(text.strip())
print(text.lower())
print(text.upper())
print(text.replace("Python", "Scientific"))
print(text.split())

words = ["Python", "is", "useful"]
sentence = " ".join(words)
print(sentence)

message = "Engineering"
print(message[0])
print(message[-1])
print(message[0:4])
print(message[::-1])

temperature = 27.456
print(f"Temperature: {temperature:.2f} degrees")

# REGULAR EXPRESSIONS
import re

email_text = "Contact: student@example.com"
emails = re.findall(r"[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}", email_text)
print(emails)

# DATA STRUCTURES
numbers = [4, 2, 7, 2]
numbers.append(9)
numbers.extend([10, 11])
numbers.remove(2)
last_item = numbers.pop()
print(numbers, last_item)

numbers.sort()
print(numbers)

coordinates = (10.5, 20.3)
x_coordinate, y_coordinate = coordinates
single_item_tuple = (5,)
print(x_coordinate, y_coordinate, single_item_tuple)

unique_numbers = set([1, 2, 2, 3, 3, 4])
print(unique_numbers)
print({1, 2, 3} | {3, 4, 5})
print({1, 2, 3} & {2, 3, 4})
print({1, 2, 3} - {2})

student = {
    "name": "Amina",
    "age": 20,
    "score": 88,
}
print(student["name"])
print(student.get("department", "Not specified"))
student["department"] = "Engineering"
student.update({"score": 91})
for key, value in student.items():
    print(key, value)

squares = {n: n ** 2 for n in range(1, 6)}
print(squares)

even_squares = [n ** 2 for n in range(10) if n % 2 == 0]
print(even_squares)

# FUNCTIONS

def calculate_area(length: float, width: float = 1.0) -> float:
    """Return rectangle area from its length and width."""
    if length < 0 or width < 0:
        raise ValueError("Dimensions cannot be negative.")
    return length * width

print(calculate_area(5, 3))
print(calculate_area(5))
print(calculate_area(length=4, width=2))


def summarize(*values, **options):
    print("Values:", values)
    print("Options:", options)


summarize(10, 20, 30, unit="metres", precision=2)


def divide_and_remainder(a: int, b: int) -> tuple[int, int]:
    if b == 0:
        raise ZeroDivisionError("Divisor cannot be zero.")
    return a // b, a % b


quotient, remainder = divide_and_remainder(17, 5)
print(quotient, remainder)


def add_item(item, items=None):
    if items is None:
        items = []
    items.append(item)
    return items

print(add_item("Python"))
print(add_item("Java"))

values = [5, 1, 8, 3]
print(sorted(values, key=lambda value: -value))
print(list(map(lambda value: value * 2, values)))
print(list(filter(lambda value: value > 3, values)))
print(any(value > 7 for value in values))
print(all(value > 0 for value in values))

# RECURSION

def factorial(n: int) -> int:
    if n < 0:
        raise ValueError("n must be non-negative")
    if n <= 1:
        return 1
    return n * factorial(n - 1)

print(factorial(5))


def linear_search(items, target):
    for index, item in enumerate(items):
        if item == target:
            return index
    return -1

print(linear_search([8, 4, 7, 2], 7))


def binary_search(sorted_items, target):
    left, right = 0, len(sorted_items) - 1
    while left <= right:
        middle = (left + right) // 2
        if sorted_items[middle] == target:
            return middle
        elif sorted_items[middle] < target:
            left = middle + 1
        else:
            right = middle - 1
    return -1

print(binary_search([2, 4, 7, 8, 10], 8))

# EXCEPTION HANDLING

def safe_divide(a, b):
    try:
        result = a / b
    except ZeroDivisionError:
        print("Cannot divide by zero.")
        return None
    else:
        print("Division completed.")
        return result
    finally:
        print("Division operation finished.")

print(safe_divide(10, 2))
print(safe_divide(10, 0))


def validate_age(age):
    if not isinstance(age, int) or isinstance(age, bool):
        raise TypeError("Age must be an integer.")
    if age < 0:
        raise ValueError("Age cannot be negative.")
    return age

print(validate_age(21))

# FILES, JSON, CSV
from pathlib import Path
import json
import csv


data_dir = Path("python_demo_data")
data_dir.mkdir(parents=True, exist_ok=True)

text_file = data_dir / "notes.txt"
with text_file.open("w", encoding="utf-8") as file:
    file.write("Python file handling\n")
    file.write("Files preserve information between runs.\n")

with text_file.open("r", encoding="utf-8") as file:
    print(file.read())

with text_file.open("a", encoding="utf-8") as file:
    file.write("This line was appended.\n")

record = {
    "name": "Brian",
    "scores": [75, 82, 91],
    "active": True,
}

json_file = data_dir / "record.json"
with json_file.open("w", encoding="utf-8") as file:
    json.dump(record, file, indent=4)

with json_file.open("r", encoding="utf-8") as file:
    loaded_record = json.load(file)
print(loaded_record["scores"])

csv_file = data_dir / "students.csv"
with csv_file.open("w", newline="", encoding="utf-8") as file:
    writer = csv.DictWriter(file, fieldnames=["name", "score"])
    writer.writeheader()
    writer.writerow({"name": "Amina", "score": 85})
    writer.writerow({"name": "Brian", "score": 72})

with csv_file.open("r", newline="", encoding="utf-8") as file:
    reader = csv.DictReader(file)
    for row in reader:
        print(row["name"], row["score"])

# MODULES AND CLI
import math
import statistics
import datetime
import argparse

print(math.sqrt(81))
print(statistics.mean([70, 80, 90]))
print(datetime.date.today())


def app_main():
    print("Program started.")


if __name__ == "__main__":
    app_main()

parser = argparse.ArgumentParser(description="Score calculator")
parser.add_argument("score", type=float, help="Student's score")
args = parser.parse_args()
print(f"Score: {args.score:.2f}")

# OBJECT ORIENTED PROGRAMMING
class BankAccount:
    def __init__(self, owner: str, balance: float = 0.0):
        if balance < 0:
            raise ValueError("Opening balance cannot be negative.")
        self.owner = owner
        self.balance = balance

    def deposit(self, amount: float) -> None:
        if amount <= 0:
            raise ValueError("Deposit must be positive.")
        self.balance += amount

    def withdraw(self, amount: float) -> None:
        if amount <= 0:
            raise ValueError("Withdrawal must be positive.")
        if amount > self.balance:
            raise ValueError("Insufficient funds.")
        self.balance -= amount

    def __str__(self) -> str:
        return f"{self.owner}: balance={self.balance:.2f}"


account = BankAccount("Alex", 1000)
account.deposit(250)
account.withdraw(100)
print(account)


class Animal:
    def speak(self):
        return "Some sound"


class Dog(Animal):
    def speak(self):
        return "Bark"


class Cat(Animal):
    def speak(self):
        return "Meow"


animals = [Dog(), Cat(), Animal()]
for animal in animals:
    print(animal.speak())


class Engine:
    def start(self):
        return "Engine started"


class Car:
    def __init__(self, engine):
        self.engine = engine

    def start(self):
        return self.engine.start()


car = Car(Engine())
print(car.start())

# ITERATORS, GENERATORS, DECORATORS, CONTEXT MANAGERS

def count_up_to(limit):
    current = 1
    while current <= limit:
        yield current
        current += 1


for number in count_up_to(3):
    print(number)

import time
from functools import wraps


def measure_time(function):
    @wraps(function)
    def wrapper(*args, **kwargs):
        start = time.perf_counter()
        try:
            return function(*args, **kwargs)
        finally:
            elapsed = time.perf_counter() - start
            print(f"{function.__name__}: {elapsed:.6f} seconds")
    return wrapper


@measure_time
def example_calculation():
    return sum(range(100_000))


print(example_calculation())

from contextlib import contextmanager


@contextmanager
def managed_resource():
    print("Acquire resource")
    try:
        yield "resource"
    finally:
        print("Release resource")


with managed_resource() as resource:
    print("Using", resource)

# DATABASES
import sqlite3

with sqlite3.connect(data_dir / "example.db") as connection:
    cursor = connection.cursor()
    cursor.execute(
        """
        CREATE TABLE IF NOT EXISTS products (
            id INTEGER PRIMARY KEY,
            name TEXT NOT NULL,
            price REAL NOT NULL
        )
        """
    )
    cursor.execute(
        "INSERT INTO products (name, price) VALUES (?, ?)",
        ("Sensor", 1250.0),
    )
    cursor.execute(
        "SELECT id, name, price FROM products WHERE price > ?",
        (1000.0,),
    )
    for product in cursor.fetchall():
        print(product)

from contextlib import closing

with closing(sqlite3.connect(data_dir / "example.db")) as connection:
    with connection:
        cursor = connection.cursor()
        cursor.execute("SELECT COUNT(*) FROM products")
        print("Product count:", cursor.fetchone()[0])

# HTTP REQUESTS
try:
    import requests
except ImportError:
    requests = None

if requests is not None:
    try:
        response = requests.get("https://api.github.com", timeout=10)
        response.raise_for_status()
        print(response.json())
    except requests.Timeout:
        print("The request timed out.")
    except requests.RequestException as error:
        print("HTTP request failed:", error)
else:
    print("requests is not installed; skipping API example.")

# TESTING

def add(a, b):
    return a + b

assert add(2, 3) == 5
assert add(-1, 1) == 0

import unittest


class TestAdd(unittest.TestCase):
    def test_positive_numbers(self):
        self.assertEqual(add(2, 3), 5)

    def test_negative_and_positive(self):
        self.assertEqual(add(-1, 1), 0)

# LOGGING AND SUBPROCESS
import logging
import subprocess
import sys

logging.basicConfig(level=logging.INFO, format="%(levelname)s: %(message)s")
logging.info("Application started")
logging.warning("Example warning")
logging.error("Example error")

result = subprocess.run(
    [sys.executable, "--version"],
    capture_output=True,
    text=True,
    check=True,
)
print(result.stdout or result.stderr)

# ASYNC
import asyncio


async def fetch_simulated_data(identifier):
    await asyncio.sleep(0.1)
    return {"id": identifier, "value": identifier * 10}


async def async_main():
    results = await asyncio.gather(
        fetch_simulated_data(1),
        fetch_simulated_data(2),
        fetch_simulated_data(3),
    )
    print(results)

# Uncomment to run in a normal Python script:
# asyncio.run(async_main())

# OPTIONAL ENGINEERING / DATA SCIENCE EXAMPLES
try:
    import numpy as np
    import matplotlib.pyplot as plt
except ImportError:
    np = None
    plt = None

if np is not None and plt is not None:
    time_values = np.linspace(0, 2 * np.pi, 200)
    signal = np.sin(time_values)
    plt.plot(time_values, signal, label="Sine signal")
    plt.xlabel("Time (rad)")
    plt.ylabel("Amplitude")
    plt.title("Example Engineering Signal")
    plt.grid(True)
    plt.legend()
    plt.show()
else:
    print("NumPy/Matplotlib not installed; skipping plotting example.")

# OPTIONAL WEB APPLICATION EXAMPLE:
# python -m pip install fastapi uvicorn
# Save in a separate file named api_app.py:
# from fastapi import FastAPI
# app = FastAPI()
# @app.get("/")
# def home():
#     return {"message": "Python API is running"}
# @app.get("/square/{number}")
# def square(number: int):
#     return {"number": number, "square": number ** 2}

# OPTIONAL FILE AUTOMATION EXAMPLE:
# from pathlib import Path
# project = Path(".")
# for file_path in project.rglob("*.py"):
#     print(file_path)
