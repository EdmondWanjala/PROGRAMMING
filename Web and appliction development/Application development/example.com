    APPLICATION DEVELOPMENT — PRACTICAL CODE AND COMMANDS

1. Development Environment Setup

Install:

- Visual Studio Code.
- Git.
- Python.
- Node.js.
- Android Studio for Android development.
- Java JDK for Java development.
- Flutter SDK for Flutter development.
- Visual Studio for .NET development.

Check installations:

# Python
python --version

# Node.js
node --version

# npm
npm --version

# Git
git --version

# Java
java -version

# Flutter
flutter --version

---

2. Python Desktop Application Using Tkinter

Tkinter is a standard Python library for building simple graphical desktop applications.

Create "calculator.py":

import tkinter as tk

# Function to calculate the result
def calculate():

    try:

        # Retrieve values from input fields
        num1 = float(entry1.get())

        num2 = float(entry2.get())

        # Perform addition
        result = num1 + num2

        # Display the result
        result_label.config(text=f"Result: {result}")

    except ValueError:

        # Handle invalid numeric input
        result_label.config(text="Enter valid numbers")


# Create the application window
window = tk.Tk()

window.title("Simple Calculator")

window.geometry("350x250")

# First input
tk.Label(window, text="First Number").pack()

entry1 = tk.Entry(window)

entry1.pack()

# Second input
tk.Label(window, text="Second Number").pack()

entry2 = tk.Entry(window)

entry2.pack()

# Calculation button
tk.Button(
    window,
    text="Add Numbers",
    command=calculate
).pack(pady=10)

# Result display
result_label = tk.Label(window, text="Result:")

result_label.pack()

# Run application event loop
window.mainloop()

Run:

python calculator.py

---

3. Python Application With SQLite Database

SQLite is a lightweight relational database suitable for local applications.

Create "student_app.py":

import sqlite3

# Connect to a database file.
# If the file does not exist, SQLite creates it.
connection = sqlite3.connect("students.db")

cursor = connection.cursor()

# Create table
cursor.execute("""
CREATE TABLE IF NOT EXISTS students (

    id INTEGER PRIMARY KEY AUTOINCREMENT,

    name TEXT NOT NULL,

    course TEXT NOT NULL

)
""")

# Insert a student using parameterized values
cursor.execute(
    "INSERT INTO students (name, course) VALUES (?, ?)",
    ("John", "Computer Engineering")
)

# Save changes
connection.commit()

# Retrieve student records
cursor.execute("SELECT * FROM students")

students = cursor.fetchall()

# Display records
for student in students:

    print(student)

# Close database connection
connection.close()

---

4. C++ Desktop Application — Basic Calculator

#include <iostream>

using namespace std;

int main() {

    double num1, num2;

    char operation;

    // Request first number
    cout << "Enter first number: ";

    cin >> num1;

    // Request operator
    cout << "Enter operator (+, -, *, /): ";

    cin >> operation;

    // Request second number
    cout << "Enter second number: ";

    cin >> num2;

    // Perform selected operation
    switch (operation) {

        case '+':

            cout << "Result: " << num1 + num2;

            break;

        case '-':

            cout << "Result: " << num1 - num2;

            break;

        case '*':

            cout << "Result: " << num1 * num2;

            break;

        case '/':

            if (num2 != 0) {

                cout << "Result: " << num1 / num2;

            } else {

                cout << "Cannot divide by zero";

            }

            break;

        default:

            cout << "Invalid operator";

    }

    return 0;

}

Compile and execute using GCC:

g++ calculator.cpp -o calculator

./calculator

---

5. Java Desktop Application — Swing

Swing is a Java GUI toolkit.

Create "MyApplication.java":

import javax.swing.*;

public class MyApplication {

    public static void main(String[] args) {

        // Create application window
        JFrame frame = new JFrame("My Application");

        // Set window dimensions
        frame.setSize(400, 250);

        // Close program when window closes
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

        // Create heading
        JLabel label = new JLabel("Welcome to Java Application");

        // Create button
        JButton button = new JButton("Click Me");

        // Respond to button clicks
        button.addActionListener(event -> {

            label.setText("Button Clicked!");

        });

        // Create a panel
        JPanel panel = new JPanel();

        // Add components to panel
        panel.add(label);

        panel.add(button);

        // Add panel to window
        frame.add(panel);

        // Display window
        frame.setVisible(true);

    }

}

Compile and run:

javac MyApplication.java

java MyApplication

---

6. C# Desktop Application — Console Example

Create a console project:

dotnet new console -n MyApplication

cd MyApplication

dotnet run

Example "Program.cs":

using System;

// Main application
class Program
{
    static void Main()
    {
        // Request user input
        Console.Write("Enter your name: ");

        string? name = Console.ReadLine();

        // Validate input
        if (string.IsNullOrWhiteSpace(name))
        {
            Console.WriteLine("Name is required.");
            return;
        }

        // Display output
        Console.WriteLine($"Welcome, {name}!");
    }
}

---

7. Android Application Development Using Kotlin

Install Android Studio and create a new Android project using Kotlin.

Example Jetpack Compose interface:

package com.example.myapplication

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.foundation.layout.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp

class MainActivity : ComponentActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {

        super.onCreate(savedInstanceState)

        setContent {

            CounterScreen()

        }

    }

}

@Composable
fun CounterScreen() {

    // State variable that updates the interface
    var count by remember { mutableIntStateOf(0) }

    Column(

        modifier = Modifier
            .fillMaxSize()
            .padding(24.dp),

        verticalArrangement = Arrangement.Center

    ) {

        Text(text = "Counter: $count")

        Spacer(modifier = Modifier.height(16.dp))

        Button(

            onClick = {

                // Increase counter
                count++

            }

        ) {

            Text("Increase")

        }

    }

}

This is a simple Android interface demonstrating state and user interaction.

---

8. Flutter Cross-Platform Application

Create a Flutter project:

flutter create my_app

cd my_app

flutter run

Example "lib/main.dart":

import 'package:flutter/material.dart';

void main() {

  // Start the Flutter application
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      title: 'My Application',

      // Application home screen
      home: const HomeScreen(),

    );

  }

}

class HomeScreen extends StatefulWidget {

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();

}

class _HomeScreenState extends State<HomeScreen> {

  // Application state
  int count = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text("My Application"),
      ),

      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            // Display current count
            Text(
              "Count: $count",
              style: const TextStyle(fontSize: 25),
            ),

            // Increase count
            ElevatedButton(

              onPressed: () {

                setState(() {

                  count++;

                });

              },

              child: const Text("Increase"),

            )

          ],

        ),

      ),

    );

  }

}

---

9. React Native Mobile Application

Create a React Native project using Expo:

npx create-expo-app@latest MyMobileApp

cd MyMobileApp

npx expo start

Example component:

import React, { useState } from "react";

import {
    View,
    Text,
    Button,
    StyleSheet
} from "react-native";

export default function App() {

    // State variable
    const [count, setCount] = useState(0);

    return (

        <View style={styles.container}>

            <Text style={styles.title}>
                Counter: {count}
            </Text>

            <Button

                title="Increase"

                onPress={() => setCount(count + 1)}

            />

        </View>

    );

}

// Styling
const styles = StyleSheet.create({

    container: {

        flex: 1,

        justifyContent: "center",

        alignItems: "center"

    },

    title: {

        fontSize: 25,

        marginBottom: 20

    }

});

---

10. Building a REST API for an Application

Install Express:

mkdir application-api

cd application-api

npm init -y

npm install express

Create "server.js":

const express = require("express");

const app = express();

// Parse JSON requests
app.use(express.json());

// Sample application data
const devices = [

    {
        id: 1,
        name: "Temperature Sensor",
        status: "Active"
    }

];

// Retrieve all devices
app.get("/api/devices", (req, res) => {

    res.json(devices);

});

// Retrieve one device
app.get("/api/devices/:id", (req, res) => {

    const device = devices.find(
        item => item.id === Number(req.params.id)
    );

    if (!device) {

        return res.status(404).json({
            error: "Device not found"
        });

    }

    res.json(device);

});

// Start backend
app.listen(3000, () => {

    console.log("Application API running on port 3000");

});

Run:

node server.js

---

11. Application Communication With an API

Example Python client:

import requests

# API endpoint
url = "http://localhost:3000/api/devices"

try:

    # Send GET request
    response = requests.get(url, timeout=5)

    # Raise an error for unsuccessful responses
    response.raise_for_status()

    # Convert JSON response to Python data
    devices = response.json()

    # Display devices
    for device in devices:

        print(device["name"])

        print(device["status"])

except requests.RequestException as error:

    print("API communication failed:", error)

Install dependency:

pip install requests

---

12. Application Configuration and Environment Variables

Configuration separates application settings from source code.

Example ".env":

APP_NAME=MyApplication

APP_PORT=3000

DATABASE_URL=postgresql://appuser:password@localhost:5432/myapp

For Node.js:

npm install dotenv

Example:

require("dotenv").config();

// Retrieve configuration
const appName = process.env.APP_NAME;

const port = process.env.APP_PORT || 3000;

console.log(appName);

console.log(port);

Never commit real credentials or secrets to GitHub. Use secure environment configuration and secret-management systems.

---

13. Git Version Control

# Initialize repository
git init

# Stage changes
git add .

# Commit
git commit -m "Initial application"

# Create a feature branch
git checkout -b feature/login

# Push changes
git push -u origin feature/login

# Pull latest changes
git pull

---

14. Application Testing

Python unit testing

Create "test_calculator.py":

# Function to test
def add(a, b):

    return a + b


# Unit tests
def test_add():

    assert add(2, 3) == 5

    assert add(-2, 2) == 0

    assert add(0, 0) == 0

Install and run:

pip install pytest

pytest

JavaScript testing

Install Vitest:

npm install -D vitest

Example:

import { describe, it, expect } from "vitest";

function add(a, b) {

    return a + b;

}

describe("Addition", () => {

    it("adds two numbers", () => {

        expect(add(2, 3)).toBe(5);

    });

});

---

15. Build and Package Applications

Python executable

Install PyInstaller:

pip install pyinstaller

Build an executable:

pyinstaller --onefile calculator.py

For a GUI application, you can hide the console where appropriate:

pyinstaller --onefile --windowed calculator.py

The generated application is placed in the "dist" directory.

Java executable JAR

javac MyApplication.java

jar --create --file MyApplication.jar --main-class MyApplication MyApplication.class

Run:

java -jar MyApplication.jar

Flutter Android build

flutter build apk --release

Build Android App Bundle:

flutter build appbundle --release

.NET application publishing

dotnet publish -c Release

---

16. Dockerizing an Application

Example Dockerfile for a Node.js application:

FROM node:22-alpine

WORKDIR /app

# Copy dependency manifests
COPY package*.json ./

# Install dependencies
RUN npm ci --omit=dev

# Copy application files
COPY . .

# Document application port
EXPOSE 3000

# Start application
CMD ["node", "server.js"]

Build:

docker build -t my-application:1.0 .

Run:

docker run -d -p 3000:3000 my-application:1.0

---

17. Application CI/CD With GitHub Actions

Create ".github/workflows/build.yml":

name: Application Build

on:
  push:
    branches: [main]

  pull_request:
    branches: [main]

jobs:

  build:

    runs-on: ubuntu-latest

    steps:

      # Retrieve source code
      - name: Checkout
        uses: actions/checkout@v4

      # Install Python
      - name: Setup Python
        uses: actions/setup-python@v5
        with:
          python-version: "3.12"

      # Install dependencies
      - name: Install requirements
        run: |
          python -m pip install --upgrade pip
          pip install -r requirements.txt

      # Execute automated tests
      - name: Run tests
        run: pytest

Pin third-party actions to reviewed full commit SHAs in production workflows.

---

18. Example Application Project Structure

my-application/
│
├── frontend/
│   ├── components/
│   ├── screens/
│   ├── assets/
│   └── styles/
│
├── backend/
│   ├── controllers/
│   ├── services/
│   ├── routes/
│   └── middleware/
│
├── database/
│   ├── migrations/
│   └── schema.sql
│
├── tests/
│
├── config/
│
├── docs/
│
├── .github/
│   └── workflows/
│
├── Dockerfile
├── .gitignore
└── README.md

---

19. Important Practical Rules

1. Define requirements before implementation.
2. Select the correct application platform.
3. Design the interface before coding complex screens.
4. Use modular architecture.
5. Separate user interface and business logic.
6. Use appropriate data structures.
7. Validate inputs.
8. Handle errors properly.
9. Use secure database operations.
10. Protect user data.
11. Test application functionality.
12. Optimize performance.
13. Use version control.
14. Document the software.
15. Package applications correctly.
16. Test on target devices.
17. Monitor applications after deployment.
18. Plan for maintenance and updates.