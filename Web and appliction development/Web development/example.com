    WEB DEVELOPMENT — PRACTICAL COMMANDS AND CODE EXAMPLES

1. Development Environment Setup

Install the essential tools:

- Visual Studio Code — code editor.
- Google Chrome or Firefox — browser.
- Git — version control.
- Node.js — JavaScript runtime.
- Python — backend development and scripting.
- PostgreSQL or MySQL — database.
- Postman — API testing.

Check installed versions

# Check Node.js
node --version

# Check npm
npm --version

# Check Python
python --version

# Check Git
git --version

---

2. HTML — Basic Website Structure

Create "index.html":

<!DOCTYPE html>
<html lang="en">

<head>

    <!-- Character encoding -->
    <meta charset="UTF-8">

    <!-- Responsive viewport configuration -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Browser tab title -->
    <title>My First Website</title>

    <!-- Connect external stylesheet -->
    <link rel="stylesheet" href="style.css">

</head>

<body>

    <!-- Website header -->
    <header>
        <h1>Welcome to My Website</h1>
    </header>

    <!-- Navigation menu -->
    <nav>
        <a href="#home">Home</a>
        <a href="#about">About</a>
        <a href="#contact">Contact</a>
    </nav>

    <!-- Main content -->
    <main>

        <section id="home">
            <h2>Home</h2>
            <p>This is my first website.</p>
        </section>

        <section id="about">
            <h2>About</h2>
            <p>I am learning web development.</p>
        </section>

        <section id="contact">
            <h2>Contact</h2>
            <p>Contact information goes here.</p>
        </section>

    </main>

    <!-- Website footer -->
    <footer>
        <p>Copyright 2026 My Website</p>
    </footer>

    <!-- Load JavaScript -->
    <script src="script.js"></script>

</body>
</html>

---

3. HTML Forms

<form action="/register" method="POST">

    <!-- Full name -->
    <label for="fullname">Full Name:</label>
    <input
        type="text"
        id="fullname"
        name="fullname"
        required
    >

    <!-- Email -->
    <label for="email">Email:</label>
    <input
        type="email"
        id="email"
        name="email"
        required
    >

    <!-- Password -->
    <label for="password">Password:</label>
    <input
        type="password"
        id="password"
        name="password"
        minlength="8"
        required
    >

    <!-- Submit button -->
    <button type="submit">Register</button>

</form>

The browser performs basic validation, but the server must validate all submitted information again.

---

4. CSS — Website Styling

Create "style.css":

/* Apply basic settings to all elements */
* {
    box-sizing: border-box;
}

/* Overall page styling */
body {
    margin: 0;
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    color: #222;
}

/* Header styling */
header {
    background-color: #172554;
    color: white;
    text-align: center;
    padding: 30px;
}

/* Navigation */
nav {
    display: flex;
    justify-content: center;
    gap: 25px;
    padding: 15px;
    background-color: #1e293b;
}

/* Navigation links */
nav a {
    color: white;
    text-decoration: none;
}

/* Main content */
main {
    max-width: 1000px;
    margin: auto;
    padding: 25px;
}

/* Content sections */
section {
    background-color: white;
    padding: 25px;
    margin-bottom: 20px;
    border-radius: 8px;
}

/* Footer */
footer {
    text-align: center;
    background-color: #172554;
    color: white;
    padding: 20px;
}

/* Responsive layout for smaller screens */
@media (max-width: 600px) {

    nav {
        flex-direction: column;
        align-items: center;
    }

    main {
        padding: 12px;
    }

}

---

5. CSS Flexbox Layout

/* Arrange cards horizontally */
.container {
    display: flex;

    /* Arrange children in a row */
    flex-direction: row;

    /* Allow wrapping on smaller screens */
    flex-wrap: wrap;

    /* Space between cards */
    gap: 20px;

    /* Center cards horizontally */
    justify-content: center;

    /* Align cards vertically */
    align-items: center;
}

/* Individual cards */
.card {
    width: 250px;
    padding: 20px;
    background: white;
    border-radius: 10px;
}

6. CSS Grid Layout

.container {
    display: grid;

    /* Automatically create responsive columns */
    grid-template-columns:
        repeat(auto-fit, minmax(220px, 1fr));

    /* Space between grid items */
    gap: 20px;
}

---

7. JavaScript Fundamentals

Create "script.js":

// Variables
const name = "Edmond";
let age = 22;

// Display output
console.log("Name:", name);
console.log("Age:", age);

// Function
function greet(user) {

    return "Welcome, " + user;

}

// Call function
console.log(greet(name));

// Conditional statement
if (age >= 18) {

    console.log("Adult");

} else {

    console.log("Minor");

}

// Array
const languages = ["HTML", "CSS", "JavaScript"];

// Loop through the array
for (const language of languages) {

    console.log(language);

}

---

8. JavaScript DOM Manipulation

HTML:

<h2 id="heading">Original Heading</h2>

<button id="changeButton">
    Change Heading
</button>

JavaScript:

// Select the heading element
const heading = document.getElementById("heading");

// Select the button
const button = document.getElementById("changeButton");

// Listen for a click event
button.addEventListener("click", function () {

    // Change the heading text
    heading.textContent = "Heading Updated!";

});

DOM manipulation allows JavaScript to change webpage content without reloading the entire page.

---

9. JavaScript Form Validation

HTML:

<form id="loginForm">

    <input
        type="email"
        id="email"
        placeholder="Enter email"
        required
    >

    <input
        type="password"
        id="password"
        placeholder="Enter password"
        required
    >

    <button type="submit">Login</button>

</form>

<p id="message"></p>

JavaScript:

const form = document.getElementById("loginForm");

const message = document.getElementById("message");

form.addEventListener("submit", function (event) {

    // Prevent the default form submission
    event.preventDefault();

    const email = document.getElementById("email").value;

    const password = document.getElementById("password").value;

    // Basic client-side validation
    if (email === "" || password === "") {

        message.textContent = "All fields are required.";

    } else {

        message.textContent = "Input received.";

    }

});

This is only a frontend demonstration, not a secure login system.

---

10. JavaScript Fetch API

The Fetch API allows a browser to communicate with external APIs.

// Request data from a sample API
async function getUsers() {

    try {

        const response = await fetch(
            "https://jsonplaceholder.typicode.com/users"
        );

        // Check whether the request was successful
        if (!response.ok) {
            throw new Error("Request failed");
        }

        // Convert response into JSON
        const users = await response.json();

        // Display returned data
        console.log(users);

    } catch (error) {

        console.error("Error:", error);

    }

}

// Execute the function
getUsers();

---

11. JavaScript Modules

Create "math.js":

// Export a reusable addition function
export function add(a, b) {

    return a + b;

}

Create "main.js":

// Import the addition function
import { add } from "./math.js";

console.log(add(10, 20));

Use modules in HTML:

<script type="module" src="main.js"></script>

---

12. Node.js — Backend Development

Node.js allows JavaScript to execute outside the browser.

Create a project

# Create a project directory
mkdir web-backend

cd web-backend

# Initialize npm
npm init -y

# Install Express
npm install express

Create a basic Express server

Create "server.js":

// Import Express
const express = require("express");

// Create application
const app = express();

// Define server port
const PORT = 3000;

// Middleware for reading JSON request bodies
app.use(express.json());

// Homepage route
app.get("/", (req, res) => {

    res.send("Welcome to my backend server");

});

// API route
app.get("/api/users", (req, res) => {

    const users = [
        { id: 1, name: "John" },
        { id: 2, name: "Mary" }
    ];

    res.json(users);

});

// Start server
app.listen(PORT, () => {

    console.log(`Server running on port ${PORT}`);

});

Run:

node server.js

Access:

http://localhost:3000

API:

http://localhost:3000/api/users

---

13. REST API — CRUD Operations

Create "crud.js":

const express = require("express");

const app = express();

app.use(express.json());

// Temporary in-memory data
let products = [
    { id: 1, name: "Laptop", price: 50000 },
    { id: 2, name: "Phone", price: 20000 }
];

// READ all products
app.get("/products", (req, res) => {

    res.json(products);

});

// READ one product
app.get("/products/:id", (req, res) => {

    const product = products.find(
        p => p.id === Number(req.params.id)
    );

    if (!product) {
        return res.status(404).json({
            error: "Product not found"
        });
    }

    res.json(product);

});

// CREATE a product
app.post("/products", (req, res) => {

    const { name, price } = req.body;

    // Basic input validation
    if (
        typeof name !== "string" ||
        !name.trim() ||
        typeof price !== "number" ||
        !Number.isFinite(price) ||
        price < 0
    ) {
        return res.status(400).json({
            error: "Valid name and price are required"
        });
    }

    const newProduct = {
        id: Math.max(0, ...products.map(p => p.id)) + 1,
        name: name.trim(),
        price
    };

    products.push(newProduct);

    res.status(201).json(newProduct);

});

// UPDATE a product
app.patch("/products/:id", (req, res) => {

    const product = products.find(
        p => p.id === Number(req.params.id)
    );

    if (!product) {
        return res.status(404).json({
            error: "Product not found"
        });
    }

    const { name, price } = req.body;

    if (
        name !== undefined &&
        (typeof name !== "string" || !name.trim())
    ) {
        return res.status(400).json({
            error: "Invalid name"
        });
    }

    if (
        price !== undefined &&
        (
            typeof price !== "number" ||
            !Number.isFinite(price) ||
            price < 0
        )
    ) {
        return res.status(400).json({
            error: "Invalid price"
        });
    }

    if (name !== undefined) product.name = name.trim();

    if (price !== undefined) product.price = price;

    res.json(product);

});

// DELETE a product
app.delete("/products/:id", (req, res) => {

    const initialLength = products.length;

    products = products.filter(
        p => p.id !== Number(req.params.id)
    );

    if (products.length === initialLength) {
        return res.status(404).json({
            error: "Product not found"
        });
    }

    res.status(204).send();

});

// Start server
app.listen(3000, () => {

    console.log("CRUD API running on port 3000");

});

The data is stored in memory, so it disappears when the server restarts. A database should be used for persistent storage.

---

14. Python Flask Backend

Install Flask:

pip install flask

Create "app.py":

from flask import Flask, jsonify, request

# Create Flask application
app = Flask(__name__)

# Homepage
@app.route("/")
def home():

    return "Welcome to my Flask application"


# API endpoint
@app.route("/api/data", methods=["GET"])
def get_data():

    data = {
        "temperature": 25,
        "humidity": 60,
        "status": "Normal"
    }

    return jsonify(data)


# Receive JSON information
@app.route("/api/receive", methods=["POST"])
def receive_data():

    data = request.get_json(silent=True)

    if not isinstance(data, dict):
        return jsonify({"error": "JSON object required"}), 400

    return jsonify({
        "message": "Data received",
        "received": data
    })


if __name__ == "__main__":

    # Development server only
    app.run(debug=True)

Run:

python app.py

The Flask development server and debug mode should not be exposed in production. Use a production WSGI server such as Gunicorn and disable debug mode.

---

15. SQL Database Fundamentals

Example using PostgreSQL.

Create a database and table

-- Create a database
CREATE DATABASE web_application;

-- Connect to the database before running the following statements.

-- Create a users table
CREATE TABLE users (

    id SERIAL PRIMARY KEY,

    name VARCHAR(100) NOT NULL,

    email VARCHAR(150) UNIQUE NOT NULL,

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP

);

Insert data

INSERT INTO users (name, email)

VALUES ('John', 'john@example.com');

Read data

SELECT * FROM users;

Update data

UPDATE users

SET name = 'John Smith'

WHERE id = 1;

Delete data

DELETE FROM users

WHERE id = 1;

Filter data

SELECT *

FROM users

WHERE name = 'John';

Sort data

SELECT *

FROM users

ORDER BY created_at DESC;

---

16. Connecting Node.js to PostgreSQL

Install the PostgreSQL client library:

npm install pg dotenv

Create ".env":

# Example development database configuration
DB_HOST=localhost
DB_PORT=5432
DB_NAME=web_application
DB_USER=appuser
DB_PASSWORD=replace_with_a_secure_password

Add ".env" to ".gitignore".

Create "database.js":

require("dotenv").config();

const { Pool } = require("pg");

// Create a database connection pool
const pool = new Pool({

    host: process.env.DB_HOST,

    port: Number(process.env.DB_PORT),

    database: process.env.DB_NAME,

    user: process.env.DB_USER,

    password: process.env.DB_PASSWORD

});

// Export pool for use in other files
module.exports = pool;

Example query:

const pool = require("./database");

async function getUsers() {

    try {

        // Parameterized query
        const result = await pool.query(
            "SELECT * FROM users WHERE id = $1",
            [1]
        );

        console.log(result.rows);

    } catch (error) {

        console.error("Database error:", error);

    }

}

getUsers();

Parameterized queries help prevent SQL injection.

---

17. React — Frontend Development

React is used to create reusable user-interface components.

Create a React project using Vite

npm create vite@latest my-react-app -- --template react

cd my-react-app

npm install

npm run dev

Basic React component

Create "Welcome.jsx":

function Welcome() {

    return (

        <div>

            <h1>Welcome to React</h1>

            <p>Building modern user interfaces.</p>

        </div>

    );

}

export default Welcome;

React state

import { useState } from "react";

function Counter() {

    // Declare a state variable
    const [count, setCount] = useState(0);

    return (

        <div>

            <h2>Counter: {count}</h2>

            {/* Update state when button is clicked */}
            <button onClick={() => setCount(count + 1)}>
                Increase
            </button>

        </div>

    );

}

export default Counter;

React props

// Child component receives information through props
function UserCard({ name, age }) {

    return (

        <div>

            <h2>{name}</h2>

            <p>Age: {age}</p>

        </div>

    );

}

export default UserCard;

Use it:

<UserCard name="John" age={24} />

React API request

import { useEffect, useState } from "react";

function Users() {

    const [users, setUsers] = useState([]);

    const [error, setError] = useState("");

    useEffect(() => {

        async function loadUsers() {

            try {

                const response = await fetch(
                    "https://jsonplaceholder.typicode.com/users"
                );

                if (!response.ok) {
                    throw new Error("Failed to load users");
                }

                const data = await response.json();

                setUsers(data);

            } catch (err) {

                setError(err.message);

            }

        }

        loadUsers();

    }, []);

    if (error) return <p>{error}</p>;

    return (

        <div>

            <h2>Users</h2>

            {users.map(user => (

                <p key={user.id}>{user.name}</p>

            ))}

        </div>

    );

}

export default Users;

---

18. TypeScript Fundamentals

TypeScript adds static typing to JavaScript.

// Declare a string variable
let username: string = "Edmond";

// Declare a number variable
let age: number = 22;

// Define a function with typed parameters and return value
function add(a: number, b: number): number {

    return a + b;

}

// Define an interface
interface Product {

    id: number;

    name: string;

    price: number;

}

// Create an object following the interface
const product: Product = {

    id: 1,

    name: "Laptop",

    price: 50000

};

console.log(add(10, 20));

console.log(product);

---

19. Authentication — Password Hashing Example

Install packages:

npm install bcrypt

Example:

const bcrypt = require("bcrypt");

// Hash a password before storing it
async function hashPassword(password) {

    const hashedPassword = await bcrypt.hash(password, 12);

    return hashedPassword;

}

// Verify a supplied password
async function verifyPassword(password, storedHash) {

    const isValid = await bcrypt.compare(
        password,
        storedHash
    );

    return isValid;

}

In a complete application, also implement:

- Input validation.
- Login rate limiting.
- Secure session management.
- CSRF protection where applicable.
- Secure password reset.
- Multi-factor authentication where appropriate.

---

20. Git and GitHub Workflow

# Initialize repository
git init

# Stage files
git add .

# Commit changes
git commit -m "Initial website"

# Add remote repository
git remote add origin https://github.com/USERNAME/PROJECT.git

# Rename current branch
git branch -M main

# Push code to GitHub
git push -u origin main

# Download latest changes
git pull origin main

# Create a feature branch
git checkout -b feature/navbar

# Push feature branch
git push -u origin feature/navbar

---

21. Website Testing

Browser testing

Use browser developer tools to inspect:

- HTML structure.
- CSS styling.
- JavaScript errors.
- Network requests.
- Storage.
- Performance.

Test an API using curl

# GET request
curl http://localhost:3000/api/users

# POST request with JSON data
curl -X POST http://localhost:3000/products \
    -H "Content-Type: application/json" \
    -d '{"name":"Laptop","price":50000}'

Install Playwright

npm init playwright@latest

Example browser test:

const { test, expect } = require("@playwright/test");

test("homepage displays its heading", async ({ page }) => {

    // Open the local website
    await page.goto("http://localhost:5173");

    // Check that the expected heading is visible
    await expect(
        page.getByRole("heading", { name: "Welcome" })
    ).toBeVisible();

});

---

22. Nginx Web Server Deployment

Install Nginx on Ubuntu:

sudo apt update

sudo apt install nginx -y

Start and enable the service:

sudo systemctl start nginx

sudo systemctl enable nginx

sudo systemctl status nginx

Place static website files in an appropriate web directory, for example:

sudo mkdir -p /var/www/mywebsite

sudo cp -r dist/* /var/www/mywebsite/

Example Nginx server configuration:

server {

    listen 80;

    server_name example.com www.example.com;

    root /var/www/mywebsite;

    index index.html;

    location / {

        try_files $uri $uri/ =404;

    }

}

Enable the configuration, test it and reload Nginx:

sudo nginx -t

sudo systemctl reload nginx

For production, configure HTTPS and appropriate DNS records.

---

23. Dockerizing a Web Application

Example Node.js Dockerfile:

# Use a supported Node.js runtime
FROM node:22-alpine

# Set application directory
WORKDIR /app

# Copy package files first for dependency-layer caching
COPY package*.json ./

# Install production dependencies
RUN npm ci --omit=dev

# Copy application source
COPY . .

# Document application port
EXPOSE 3000

# Start the application
CMD ["node", "server.js"]

Build:

docker build -t web-application:1.0 .

Run:

docker run -d \
    --name web-application \
    -p 3000:3000 \
    web-application:1.0

For production, use a non-root user, a suitable ".dockerignore", a lockfile, controlled image versions and proper secret management.

---

24. Web Application CI/CD Using GitHub Actions

Create:

".github/workflows/ci.yml"

name: Web Application CI

on:
  push:
    branches: [main]

  pull_request:
    branches: [main]

jobs:

  test:

    runs-on: ubuntu-latest

    steps:

      # Download repository files
      - name: Checkout repository
        uses: actions/checkout@v4

      # Install Node.js
      - name: Setup Node.js
        uses: actions/setup-node@v4
        with:
          node-version: 22
          cache: npm

      # Install dependencies
      - name: Install dependencies
        run: npm ci

      # Execute tests
      - name: Run tests
        run: npm test --if-present

      # Build application
      - name: Build application
        run: npm run build --if-present

For production, use reviewed, immutable full commit SHAs for third-party actions and a controlled deployment process.

---

25. Recommended Web Development Project Structure

web-project/
│
├── frontend/
│   ├── public/
│   ├── src/
│   │   ├── components/
│   │   ├── pages/
│   │   ├── assets/
│   │   ├── styles/
│   │   ├── services/
│   │   └── App.jsx
│   │
│   └── package.json
│
├── backend/
│   ├── controllers/
│   ├── routes/
│   ├── models/
│   ├── middleware/
│   ├── services/
│   ├── config/
│   └── server.js
│
├── database/
│   ├── migrations/
│   └── schema.sql
│
├── tests/
│
├── docker/
│
├── .github/
│   └── workflows/
│
├── .gitignore
├── README.md
└── compose.yaml

---

26. Important Practical Rules

1. Use semantic HTML.
2. Separate frontend and backend responsibilities.
3. Keep CSS reusable and organized.
4. Use responsive design.
5. Validate all input on the server.
6. Use parameterized SQL queries.
7. Never store plaintext passwords.
8. Protect API keys and secrets.
9. Use HTTPS in production.
10. Implement proper authentication and authorization.
11. Handle errors consistently.
12. Use Git and GitHub.
13. Test applications before deployment.
14. Optimize images and scripts.
15. Monitor production applications.
16. Keep dependencies updated.
17. Back up databases.
18. Document API endpoints.
19. Use reusable components.
20. Build for accessibility and maintainability.