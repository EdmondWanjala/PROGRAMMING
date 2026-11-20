    DEVOPS – PRACTICAL COMMANDS, SCRIPTS AND CONFIGURATION EXAMPLES

1. UBUNTU SYSTEM SETUP

# Update Ubuntu package indexes
sudo apt update

# Upgrade installed packages
sudo apt upgrade -y

# Install essential development tools
sudo apt install -y \
    git \
    curl \
    wget \
    unzip \
    build-essential \
    make \
    cmake \
    vim \
    nano \
    tree \
    htop \
    jq \
    python3 \
    python3-pip \
    python3-venv \
    openssh-client

# Display Ubuntu version
lsb_release -a

# Display kernel information
uname -a

# Display current user
whoami

# Display current directory
pwd

# Display system resources
free -h
df -h

2. LINUX FILE AND DIRECTORY MANAGEMENT

# Create a project directory
mkdir DevOpsProject

# Enter the directory
cd DevOpsProject

# Create subdirectories
mkdir src tests scripts config logs

# Create files
touch README.md
touch src/main.py
touch tests/test_main.py

# Display directory structure
tree

# Copy a file
cp README.md README_backup.md

# Rename a file
mv README_backup.md README_old.md

# Search for Python files
find . -name "*.py"

# Search for a particular word in files
grep -rn "TODO" .

# Display the last 20 lines of a log
tail -n 20 logs/application.log

# Follow a log continuously
tail -f logs/application.log

3. LINUX USER AND PERMISSION MANAGEMENT

# Create a new user
sudo adduser developer

# Create a new group
sudo groupadd devops

# Add user to group
sudo usermod -aG devops developer

# Change file ownership
sudo chown developer:devops application.sh

# Give owner full permissions
# Give group and others read/execute permissions
chmod 755 application.sh

# Make a private configuration file
chmod 600 config.env

# Display file permissions
ls -l

# Display current user groups
groups

Important: Use "sudo" only when administrative privileges are required. Avoid giving application files or secrets unnecessarily broad permissions.

4. PROCESS AND SERVICE MANAGEMENT

# List running processes
ps aux

# Monitor processes
top

# Find a process by name
pgrep -a nginx

# Stop a process using its PID
kill PID

# Display service status
sudo systemctl status ssh

# Start a service
sudo systemctl start ssh

# Stop a service
sudo systemctl stop ssh

# Restart a service
sudo systemctl restart ssh

# Enable service at boot
sudo systemctl enable ssh

# Display service logs
sudo journalctl -u ssh

# Follow service logs
sudo journalctl -u ssh -f

Replace "PID" with the actual process ID.

5. NETWORKING COMMANDS

# Display network interfaces and IP addresses
ip addr

# Display routing table
ip route

# Test connectivity
ping -c 4 google.com

# Check DNS resolution
nslookup google.com

# Alternative DNS lookup
dig google.com

# Check HTTP response headers
curl -I https://example.com

# Display listening TCP and UDP ports
sudo ss -tulpn

# Test whether a specific port is reachable
nc -zv example.com 443

# Display hostname
hostname

# Display DNS configuration
resolvectl status

6. BASH SCRIPTING

6.1 Basic Bash Script

File: "hello.sh"

#!/bin/bash

# Display a message
echo "Welcome to DevOps!"

# Display current user
echo "User: $USER"

# Display current directory
echo "Directory: $(pwd)"

# Display current date
echo "Date: $(date)"

Run:

# Make script executable
chmod +x hello.sh

# Execute script
./hello.sh

6.2 Variables

File: "variables.sh"

#!/bin/bash

# Declare variables
NAME="Developer"
LANGUAGE="Python"
YEAR=2026

# Access variables
echo "Name: $NAME"
echo "Language: $LANGUAGE"
echo "Year: $YEAR"

6.3 Conditional Statements

File: "check.sh"

#!/bin/bash

FILE="README.md"

# Check whether file exists
if [ -f "$FILE" ]; then
    echo "File exists"

else
    echo "File does not exist"
fi

6.4 Loops

File: "loops.sh"

#!/bin/bash

# FOR LOOP
for i in {1..5}; do
    echo "Iteration: $i"
done

# WHILE LOOP
counter=1

while [ "$counter" -le 5 ]; do
    echo "Counter: $counter"

    ((counter++))
done

6.5 Functions

File: "functions.sh"

#!/bin/bash

# Define a reusable function
greet() {
    echo "Hello, $1!"
}

# Call the function
greet "Developer"
greet "DevOps Engineer"

6.6 Error Handling

File: "error_handling.sh"

#!/bin/bash

set -Eeuo pipefail

# Attempt to execute a command
if mkdir test_directory; then
    echo "Directory created successfully"
else
    echo "Directory creation failed" >&2
    exit 1
fi

# Check whether a required file exists
if [[ ! -f "README.md" ]]; then
    echo "Required file is missing" >&2
    exit 1
fi

echo "Script completed successfully"

6.7 Automated Backup Script

File: "backup.sh"

#!/bin/bash

set -Eeuo pipefail

SOURCE="$HOME/Documents"
BACKUP="$HOME/backups"

# Create backup directory
mkdir -p "$BACKUP"

# Generate timestamp
DATE=$(date +%Y%m%d_%H%M%S)

# Create compressed archive
tar -czf "$BACKUP/backup_$DATE.tar.gz" \
    -C "$HOME" Documents

echo "Backup completed successfully"

6.8 System Monitoring Script

File: "system_monitor.sh"

#!/bin/bash

# Display system information
echo "===== SYSTEM MONITOR ====="

echo "Hostname:"
hostname

echo "CPU and process information:"
uptime

echo "Memory usage:"
free -h

echo "Disk usage:"
df -h

echo "Network interfaces:"
ip addr

echo "===== MONITORING COMPLETE ====="

7. AUTOMATING TASKS WITH CRON

Cron is a Linux scheduler used to execute commands and scripts automatically at specified times.

# Open the current user's crontab
crontab -e

Example cron entries:

# Run a backup every day at 2:00 AM
0 2 * * * /home/user/backup.sh

# Run a monitoring script every 5 minutes
*/5 * * * * /home/user/system_monitor.sh

# Run a script every Monday at 8:00 AM
0 8 * * 1 /home/user/weekly_report.sh

Cron format:

* * * * * command
| | | | |
| | | | +--- Day of week
| | | +----- Month
| | +------- Day of month
| +--------- Hour
+----------- Minute

Use absolute paths in scheduled scripts and redirect output to log files when necessary.

8. GIT VERSION CONTROL

8.1 Configure Git

# Set username
git config --global user.name "Your Name"

# Set email
git config --global user.email "your@email.com"

# Set default branch name
git config --global init.defaultBranch main

# View configuration
git config --list

8.2 Initialize a Repository

# Create project directory
mkdir my-project

cd my-project

# Initialize Git
git init

# Create a file
echo "# My Project" > README.md

# Check repository status
git status

8.3 Stage and Commit Changes

# Stage one file
git add README.md

# Stage all changes in the current directory
git add .

# Commit changes
git commit -m "Initial project setup"

# Display commit history
git log --oneline

8.4 Branching

# Create a feature branch
git branch feature-login

# Switch to branch
git switch feature-login

# Create and switch in one command
git switch -c feature-dashboard

# List branches
git branch

# Switch to main
git switch main

8.5 Merging

# Switch to the target branch
git switch main

# Merge feature branch
git merge feature-login

# Delete merged branch
git branch -d feature-login

8.6 Working with GitHub

# Clone a remote repository
git clone https://github.com/USERNAME/REPOSITORY.git

# Enter repository
cd REPOSITORY

# Display remote repositories
git remote -v

# Add a remote repository
git remote add origin https://github.com/USERNAME/REPOSITORY.git

# Push main branch
git push -u origin main

# Download remote changes
git fetch origin

# Fetch and integrate remote changes
git pull

# Upload local commits
git push

For authentication, use an appropriately configured Git credential manager, SSH key or GitHub CLI authentication. Do not put personal access tokens directly into repository URLs or scripts.

8.7 Git Undo and Recovery Commands

# Display unstaged changes
git diff

# Display staged changes
git diff --staged

# Unstage a file without discarding changes
git restore --staged filename

# Discard unstaged changes to a file
git restore filename

# Create a new commit that reverses an earlier commit
git revert COMMIT_ID

# Display commit history
git log --oneline --graph --all

Be careful with destructive commands such as "git reset --hard" and "git clean -fd". They can permanently discard uncommitted work.

9. GIT IGNORE CONFIGURATION

File: ".gitignore"

# Python cache
__pycache__/
*.pyc

# Virtual environments
venv/
.venv/

# Environment variables and secrets
.env
.env.*
!.env.example

# Logs
*.log

# Build output
build/
dist/

# IDE settings
.vscode/
.idea/

# Operating system files
.DS_Store
Thumbs.db

# Terraform state and local files
*.tfstate
*.tfstate.*
.terraform/

A ".gitignore" file prevents matching untracked files from being added accidentally. It does not automatically remove files that are already tracked.

10. PYTHON APPLICATION FOR DEVOPS

File: "app.py"

# Simple application that can be tested and deployed

from flask import Flask, jsonify

app = Flask(__name__)

@app.route("/")
def home():
    return jsonify({
        "message": "DevOps application running",
        "status": "success"
    })

@app.route("/health")
def health():
    return jsonify({"status": "healthy"}), 200

if __name__ == "__main__":
    # Development server only.
    # Use a production WSGI server for deployment.
    app.run(host="0.0.0.0", port=5000)

File: "requirements.txt"

Flask
gunicorn
pytest

Install dependencies:

# Create virtual environment
python3 -m venv .venv

# Activate environment
source .venv/bin/activate

# Install dependencies
pip install -r requirements.txt

# Run application
python app.py

Production-style local execution:

gunicorn --bind 0.0.0.0:5000 app:app

11. AUTOMATED APPLICATION TESTING

File: "test_app.py"

from app import app

def test_home():
    # Create a test client
    client = app.test_client()

    response = client.get("/")

    # Check successful response
    assert response.status_code == 200

    # Check returned JSON
    assert response.json["status"] == "success"


def test_health():
    client = app.test_client()

    response = client.get("/health")

    assert response.status_code == 200
    assert response.json["status"] == "healthy"

Run tests:

# Execute automated tests
pytest -v

12. CONTINUOUS INTEGRATION WITH GITHUB ACTIONS

Create this directory:

.github/
└── workflows/
    └── ci.yml

File: ".github/workflows/ci.yml"

name: Python CI Pipeline

# Run when code is pushed or a pull request is opened
on:
  push:
    branches: [main]

  pull_request:
    branches: [main]

jobs:
  test:
    runs-on: ubuntu-latest

    steps:
      # Download repository source code
      - name: Checkout repository
        uses: actions/checkout@v4

      # Install Python
      - name: Set up Python
        uses: actions/setup-python@v5
        with:
          python-version: "3.12"

      # Install dependencies
      - name: Install dependencies
        run: |
          python -m pip install --upgrade pip
          pip install -r requirements.txt

      # Run automated tests
      - name: Run tests
        run: pytest -v

The workflow automatically tests the application whenever relevant code changes are pushed or a pull request is opened.

For production use, review and pin third-party actions to verified full commit SHAs, and use minimum necessary workflow permissions.

13. GITHUB ACTIONS – BUILD AND DEPLOYMENT WORKFLOW

Example workflow for deploying an application to a Linux server over SSH.

File: ".github/workflows/deploy.yml"

name: Deploy Application

on:
  workflow_dispatch:

permissions:
  contents: read

jobs:
  deploy:
    runs-on: ubuntu-latest

    steps:
      - name: Checkout code
        uses: actions/checkout@v4

      - name: Configure SSH
        env:
          SSH_KEY: ${{ secrets.SSH_PRIVATE_KEY }}
          SERVER_HOST: ${{ secrets.SERVER_HOST }}
        run: |
          mkdir -p ~/.ssh
          chmod 700 ~/.ssh

          printf '%s\n' "$SSH_KEY" > ~/.ssh/deploy_key
          chmod 600 ~/.ssh/deploy_key

          # Verify the server host key against a trusted,
          # pre-verified known_hosts value stored as a secret.
          printf '%s\n' \
            "${{ secrets.SSH_KNOWN_HOSTS }}" \
            > ~/.ssh/known_hosts

          chmod 600 ~/.ssh/known_hosts

      - name: Deploy application
        env:
          SERVER_HOST: ${{ secrets.SERVER_HOST }}
          SERVER_USER: ${{ secrets.SERVER_USER }}
        run: |
          ssh -i ~/.ssh/deploy_key \
            "$SERVER_USER@$SERVER_HOST" \
            'cd /opt/myapp &&
             git pull --ff-only origin main &&
             docker compose up -d --build'

Required GitHub repository secrets:

- "SSH_PRIVATE_KEY"
- "SSH_KNOWN_HOSTS"
- "SERVER_HOST"
- "SERVER_USER"

The remote server must already have Git, Docker and the Docker Compose plugin installed, and the deployment user must have the appropriate repository and Docker permissions.

This is a simplified example. A production deployment should use a controlled artifact or image release, proper deployment authorization, health checks and rollback procedures rather than blindly updating a production server from a Git branch.

14. DOCKER CONTAINERIZATION

14.1 Check Docker Installation

# Display Docker version
docker --version

# Display Docker information
docker info

# Display running containers
docker ps

# Display all containers
docker ps -a

# Display downloaded images
docker images

14.2 Basic Docker Commands

# Download an image
docker pull nginx

# Run an Nginx container
docker run -d -p 8080:80 --name webserver nginx

# Display running containers
docker ps

# Stop container
docker stop webserver

# Start container
docker start webserver

# Display container logs
docker logs webserver

# Follow logs
docker logs -f webserver

# Remove container
docker rm webserver

# Remove image
docker rmi nginx

14.3 Create a Dockerfile

File: "Dockerfile"

# Use an official Python base image
FROM python:3.12-slim

# Set working directory
WORKDIR /app

# Copy dependency file
COPY requirements.txt .

# Install application dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy application source
COPY . .

# Document the application port
EXPOSE 5000

# Start the production WSGI server
CMD ["gunicorn", "--bind", "0.0.0.0:5000", "app:app"]

14.4 Build and Run Docker Image

# Build image
docker build -t myapp:1.0 .

# Run container
docker run -d \
    --name myapp-container \
    -p 5000:5000 \
    myapp:1.0

# Test application
curl http://localhost:5000/health

# Inspect container
docker inspect myapp-container

# Display resource usage
docker stats

# Stop container
docker stop myapp-container

14.5 Docker Volumes

# Create a named volume
docker volume create app-data

# Run a container using the volume
docker run -d \
    --name database \
    -v app-data:/var/lib/mysql \
    mysql:8

# List volumes
docker volume ls

# Inspect volume
docker volume inspect app-data

Use the required database credentials and persistent database configuration when running a real database. Do not deploy a database with default or empty credentials.

14.6 Docker Networking

# Create a custom network
docker network create app-network

# Run container on network
docker run -d \
    --name web \
    --network app-network \
    nginx

# Display networks
docker network ls

# Inspect network
docker network inspect app-network

14.7 Docker Compose

File: "compose.yaml"

services:

  # Web application
  app:
    build: .
    container_name: devops-app
    ports:
      - "5000:5000"
    restart: unless-stopped

  # Redis service
  redis:
    image: redis:7-alpine
    container_name: devops-redis
    restart: unless-stopped

Commands:

# Start all services
docker compose up -d --build

# Display running services
docker compose ps

# View logs
docker compose logs

# Follow logs
docker compose logs -f

# Stop services
docker compose down

# Rebuild images
docker compose build

For a production application, pin image versions, configure health checks, persistent storage where needed, and secure network and secret configuration.

15. DOCKER HUB – IMAGE MANAGEMENT

# Authenticate to Docker Hub interactively
docker login

# Tag local image
docker tag myapp:1.0 USERNAME/myapp:1.0

# Push image to Docker Hub
docker push USERNAME/myapp:1.0

# Download image
docker pull USERNAME/myapp:1.0

# Run downloaded image
docker run -d -p 5000:5000 USERNAME/myapp:1.0

Replace "USERNAME" with your Docker Hub username.

16. TERRAFORM – INFRASTRUCTURE AS CODE

Terraform files generally use the ".tf" extension.

16.1 Basic Terraform Configuration

File: "main.tf"

# Define Terraform and provider requirements
terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}

# Configure local provider
provider "local" {}

# Create a local file as a simple demonstration resource
resource "local_file" "example" {
  filename = "${path.module}/hello.txt"
  content  = "Infrastructure as Code with Terraform"
}

# Display the created file path
output "file_path" {
  value = local_file.example.filename
}

16.2 Terraform Commands

# Initialize providers
terraform init

# Format configuration
terraform fmt

# Validate configuration
terraform validate

# Preview infrastructure changes
terraform plan

# Apply approved changes
terraform apply

# Display current state
terraform show

# Display outputs
terraform output

# Destroy resources managed by this configuration
terraform destroy

Always inspect the plan before applying changes. For real infrastructure, protect the state file and use appropriate remote state and locking.

17. ANSIBLE – CONFIGURATION MANAGEMENT

17.1 Install Ansible

# Install through Ubuntu package manager
sudo apt update

sudo apt install ansible -y

# Check version
ansible --version

17.2 Create an Inventory

File: "inventory.ini"

[webservers]
192.168.1.10
192.168.1.11

[databases]
192.168.1.20

[all:vars]
ansible_user=ubuntu

Use actual server addresses and configure SSH authentication appropriately.

17.3 Test Server Connectivity

ansible all -i inventory.ini -m ping

17.4 Ansible Playbook

File: "setup.yml"

---
- name: Configure web servers

  hosts: webservers
  become: true

  tasks:

    - name: Update package cache
      ansible.builtin.apt:
        update_cache: true

    - name: Install Nginx
      ansible.builtin.apt:
        name: nginx
        state: present

    - name: Start Nginx
      ansible.builtin.service:
        name: nginx
        state: started
        enabled: true

Execute:

ansible-playbook -i inventory.ini setup.yml

17.5 Ansible Ad Hoc Commands

# Check connectivity
ansible all -i inventory.ini -m ping

# Check uptime
ansible all -i inventory.ini -a "uptime"

# Check disk space
ansible all -i inventory.ini -a "df -h"

# Display memory
ansible all -i inventory.ini -a "free -h"

18. KUBERNETES – CONTAINER ORCHESTRATION

18.1 Basic kubectl Commands

# Display Kubernetes client version
kubectl version --client

# Display cluster information
kubectl cluster-info

# Display nodes
kubectl get nodes

# Display Pods
kubectl get pods

# Display services
kubectl get services

# Display deployments
kubectl get deployments

# Display resources across namespaces
kubectl get all -A

These commands require access to a configured Kubernetes cluster.

18.2 Create a Deployment

File: "deployment.yaml"

apiVersion: apps/v1
kind: Deployment

metadata:
  name: nginx-deployment

spec:
  replicas: 3

  selector:
    matchLabels:
      app: nginx

  template:
    metadata:
      labels:
        app: nginx

    spec:
      containers:
        - name: nginx
          image: nginx:1.27
          ports:
            - containerPort: 80

Deploy:

# Create deployment
kubectl apply -f deployment.yaml

# Display Pods
kubectl get pods

# Display deployment
kubectl get deployment

# Display detailed information
kubectl describe deployment nginx-deployment

18.3 Create a Kubernetes Service

File: "service.yaml"

apiVersion: v1
kind: Service

metadata:
  name: nginx-service

spec:
  selector:
    app: nginx

  ports:
    - protocol: TCP
      port: 80
      targetPort: 80

  type: ClusterIP

Apply:

kubectl apply -f service.yaml

kubectl get services

18.4 Scaling

# Increase replicas to five
kubectl scale deployment nginx-deployment --replicas=5

# Display Pods
kubectl get pods

# Decrease replicas to two
kubectl scale deployment nginx-deployment --replicas=2

18.5 Rolling Updates and Rollbacks

# Update image
kubectl set image deployment/nginx-deployment \
    nginx=nginx:1.28

# Check rollout
kubectl rollout status deployment/nginx-deployment

# Display rollout history
kubectl rollout history deployment/nginx-deployment

# Undo previous rollout
kubectl rollout undo deployment/nginx-deployment

18.6 Kubernetes Troubleshooting

# Display Pod information
kubectl describe pod POD_NAME

# Display container logs
kubectl logs POD_NAME

# Follow logs
kubectl logs -f POD_NAME

# Execute command inside a container
kubectl exec -it POD_NAME -- sh

# Display recent cluster events
kubectl get events --sort-by=.metadata.creationTimestamp

18.7 Delete Resources

kubectl delete -f deployment.yaml

kubectl delete -f service.yaml

19. PROMETHEUS MONITORING

Prometheus collects and stores time-series metrics.

A simplified Prometheus configuration:

File: "prometheus.yml"

global:
  scrape_interval: 15s

scrape_configs:

  - job_name: "prometheus"

    static_configs:
      - targets:
          - "localhost:9090"

  - job_name: "application"

    static_configs:
      - targets:
          - "localhost:5000"

Note: The application must expose metrics in a Prometheus-compatible format for the application scrape job to work. The Flask example earlier does not expose "/metrics" by default.

Run Prometheus using a suitable official container image and mount this configuration into the container.

20. BASIC GRAFANA CONTAINER

# Create persistent storage
docker volume create grafana-storage

# Run Grafana
docker run -d \
    --name grafana \
    -p 3000:3000 \
    -v grafana-storage:/var/lib/grafana \
    grafana/grafana

# Display logs
docker logs grafana

Access locally:

http://localhost:3000

Configure a Prometheus data source in Grafana before creating dashboards. Change default credentials and secure the service before exposing it to a network.

21. BASIC FIREWALL CONFIGURATION

Using Ubuntu UFW:

# Check firewall status
sudo ufw status

# Allow SSH before enabling the firewall
sudo ufw allow OpenSSH

# Allow HTTP
sudo ufw allow 80/tcp

# Allow HTTPS
sudo ufw allow 443/tcp

# Enable firewall
sudo ufw enable

# Display firewall rules
sudo ufw status numbered

# Remove a rule by number
sudo ufw delete RULE_NUMBER

Be careful when configuring remote servers: allowing SSH before enabling UFW helps prevent accidentally locking yourself out. Verify cloud firewall and network security rules too.

22. SSH KEY AUTHENTICATION

# Generate an Ed25519 key pair
ssh-keygen -t ed25519 -C "devops-key"

# Display public key
cat ~/.ssh/id_ed25519.pub

# Copy public key to remote server
ssh-copy-id user@SERVER_IP

# Connect to remote server
ssh user@SERVER_IP

The private key must remain private. Only distribute the public key.

23. AUTOMATED DEPLOYMENT SCRIPT

File: "deploy.sh"

#!/bin/bash

set -Eeuo pipefail

APP_DIR="/opt/myapp"
BRANCH="main"

echo "Starting deployment..."

# Navigate to application directory
cd "$APP_DIR"

# Retrieve latest remote changes
git fetch origin

# Update only if local changes can be fast-forwarded
git merge --ff-only "origin/$BRANCH"

# Build and start containers
docker compose up -d --build

# Display application status
docker compose ps

echo "Deployment command completed."

Run:

chmod +x deploy.sh

./deploy.sh

This is a basic deployment example, not a complete zero-downtime release system. Add application health checks, release validation and rollback logic before production use.

24. APPLICATION HEALTH CHECK

#!/bin/bash

URL="http://localhost:5000/health"

# Request application health endpoint
HTTP_CODE=$(curl -s -o /dev/null \
    -w "%{http_code}" "$URL")

if [ "$HTTP_CODE" = "200" ]; then
    echo "Application is healthy"
else
    echo "Application health check failed: $HTTP_CODE"
    exit 1
fi

This can be integrated into deployment pipelines to verify that an application responds successfully after deployment.

25. COMPLETE PROJECT DIRECTORY STRUCTURE

A practical DevOps project can use the following structure:

devops-project/
│
├── .github/
│   └── workflows/
│       ├── ci.yml
│       └── deploy.yml
│
├── src/
│   └── app.py
│
├── tests/
│   └── test_app.py
│
├── scripts/
│   ├── backup.sh
│   ├── deploy.sh
│   └── system_monitor.sh
│
├── docker/
│   └── Dockerfile
│
├── terraform/
│   ├── main.tf
│   └── variables.tf
│
├── ansible/
│   ├── inventory.ini
│   └── setup.yml
│
├── kubernetes/
│   ├── deployment.yaml
│   └── service.yaml
│
├── monitoring/
│   └── prometheus.yml
│
├── requirements.txt
├── compose.yaml
├── .gitignore
└── README.md

26. GENERAL DEVOPS COMMAND REFERENCE

Git

git init
git clone REPOSITORY_URL
git status
git add .
git commit -m "Message"
git push
git pull
git branch
git switch -c feature
git merge feature
git log --oneline

Linux

pwd
ls -la
cd DIRECTORY
mkdir DIRECTORY
cp SOURCE DESTINATION
mv SOURCE DESTINATION
rm FILE
find . -name "*.py"
grep -rn "TEXT" .
chmod 755 FILE
sudo systemctl status SERVICE

Docker

docker pull IMAGE
docker build -t IMAGE .
docker run IMAGE
docker ps
docker images
docker logs CONTAINER
docker stop CONTAINER
docker compose up -d
docker compose down

Kubernetes

kubectl get nodes
kubectl get pods
kubectl get services
kubectl apply -f FILE.yaml
kubectl describe pod POD
kubectl logs POD
kubectl scale deployment NAME --replicas=3
kubectl rollout status deployment/NAME

Terraform

terraform init
terraform fmt
terraform validate
terraform plan
terraform apply
terraform output
terraform destroy

Ansible

ansible --version
ansible all -i inventory.ini -m ping
ansible-playbook -i inventory.ini setup.yml

Ubuntu package management

sudo apt update
sudo apt upgrade
sudo apt install PACKAGE
sudo apt remove PACKAGE
sudo apt autoremove

27. IMPORTANT DEVOPS PRACTICAL RULES

1. Never commit passwords, API keys or private keys to Git.
2. Always test scripts before running them on production systems.
3. Use version control for application code and infrastructure configuration.
4. Automate repetitive tasks.
5. Use CI pipelines to validate code changes.
6. Use containers to create reproducible application environments where appropriate.
7. Keep Docker images and dependencies updated.
8. Monitor applications after deployment.
9. Always inspect infrastructure changes before applying them.
10. Maintain backups and test restoration.
11. Use least-privilege permissions.
12. Avoid exposing internal services and management ports publicly.
13. Keep logs useful without exposing secrets.
14. Test deployment and rollback procedures.
15. Document infrastructure and deployment processes.
16. Use health checks to verify application availability.
17. Review CI/CD permissions and third-party actions.
18. Use separate development, testing, staging and production environments.