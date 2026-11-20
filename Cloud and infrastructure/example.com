    CLOUD AND INFRASTRUCTURE — PRACTICAL COMMANDS AND CODE EXAMPLES

1. Linux Server Setup and Administration

Update Ubuntu

# Refresh the package repository information
sudo apt update

# Upgrade installed packages
sudo apt upgrade -y

# Remove unnecessary packages
sudo apt autoremove -y

Install essential infrastructure tools

# Install networking, monitoring and administration utilities
sudo apt install -y \
    curl \
    wget \
    git \
    vim \
    htop \
    net-tools \
    dnsutils \
    traceroute \
    ufw \
    openssh-server \
    unzip \
    jq

Check system information

# Display Linux distribution information
cat /etc/os-release

# Display kernel information
uname -a

# Display CPU information
lscpu

# Display RAM usage
free -h

# Display disk usage
df -h

# Display mounted filesystems
lsblk

Monitor processes

# Display running processes
ps aux

# Interactive process monitoring
htop

# Display system uptime and load averages
uptime

# Display memory usage
free -h

---

2. SSH Remote Server Administration

SSH allows secure remote access to Linux servers.

Generate an SSH key

# Generate an Ed25519 SSH key pair
ssh-keygen -t ed25519 -C "admin@example.com"

# The private key stays on your computer.
# The public key can be installed on the server.

Copy the public key to a server

# Replace USER and SERVER_IP with actual values
ssh-copy-id USER@SERVER_IP

Connect remotely

ssh USER@SERVER_IP

Copy files to a server

# Copy a local file to the remote server
scp application.py USER@SERVER_IP:/home/USER/

# Copy a directory recursively
scp -r project/ USER@SERVER_IP:/home/USER/

Never share your private SSH key.

---

3. Linux Networking Commands

# Display IP addresses
ip addr

# Display network interfaces
ip link

# Display routing information
ip route

# Test connectivity to a host
ping -c 4 8.8.8.8

# Check DNS resolution
nslookup google.com

# Display DNS details
dig google.com

# Display listening TCP and UDP ports
sudo ss -tulnp

# Display network connections
ss -tun

# Trace the route to a destination
traceroute google.com

# Display the public IP address when internet access is available
curl https://api.ipify.org

Test a service port

# Test whether a server accepts connections on port 443
nc -vz example.com 443

---

4. Firewall Configuration Using UFW

# Check firewall status
sudo ufw status

# Allow SSH before enabling the firewall
sudo ufw allow OpenSSH

# Allow HTTP traffic
sudo ufw allow 80/tcp

# Allow HTTPS traffic
sudo ufw allow 443/tcp

# Enable firewall
sudo ufw enable

# Display numbered firewall rules
sudo ufw status numbered

# Remove a rule using its number
sudo ufw delete 2

Do not enable a firewall on a remote server until you have confirmed that your SSH access will remain permitted.

---

5. Bash Infrastructure Automation

Create a system information script

#!/bin/bash

# Display system information for basic server monitoring

echo "===== SERVER INFORMATION ====="

echo "Hostname:"
hostname

echo "Operating System:"
cat /etc/os-release | grep PRETTY_NAME

echo "CPU:"
lscpu | grep "Model name"

echo "Memory:"
free -h

echo "Disk:"
df -h

echo "Uptime:"
uptime

Save as "system_info.sh".

Execute:

chmod +x system_info.sh
./system_info.sh

Automated server backup script

#!/bin/bash

# Create a timestamped backup of a directory.
# Change SOURCE and BACKUP_DIR to suitable paths.

SOURCE="/home/user/project"
BACKUP_DIR="/home/user/backups"

DATE=$(date +"%Y-%m-%d_%H-%M-%S")

mkdir -p "$BACKUP_DIR"

# Create a compressed archive
tar -czf "$BACKUP_DIR/backup_$DATE.tar.gz" "$SOURCE"

if [ $? -eq 0 ]; then
    echo "Backup completed successfully."
else
    echo "Backup failed."
    exit 1
fi

Schedule a backup using cron

# Open the current user's cron configuration
crontab -e

Add:

# Run the backup script every day at 2:00 AM
0 2 * * * /home/user/backup.sh

---

6. Python Infrastructure Monitoring

Python can automate system administration and monitor infrastructure resources.

Install the required library:

pip install psutil

Example:

import psutil

# CPU utilization
cpu = psutil.cpu_percent(interval=1)

# Memory utilization
memory = psutil.virtual_memory()

# Disk utilization
disk = psutil.disk_usage("/")

print("===== SYSTEM MONITOR =====")

print(f"CPU Usage: {cpu}%")

print(f"Memory Usage: {memory.percent}%")

print(f"Disk Usage: {disk.percent}%")

# Simple warning conditions
if cpu > 80:
    print("WARNING: High CPU usage")

if memory.percent > 80:
    print("WARNING: High memory usage")

if disk.percent > 90:
    print("WARNING: Disk space is running low")

This can be extended into a monitoring service that sends alerts or exports metrics.

---

7. Virtualization Using VirtualBox

VirtualBox allows you to create virtual machines on a host computer.

Main steps

1. Install Oracle VirtualBox.
2. Download an Ubuntu Server ISO.
3. Create a new virtual machine.
4. Allocate RAM and CPU cores.
5. Create a virtual hard disk.
6. Attach the Ubuntu ISO.
7. Install Ubuntu.
8. Configure networking.
9. Install applications and services.

VirtualBox CLI examples

# List registered virtual machines
VBoxManage list vms

# Display running virtual machines
VBoxManage list runningvms

# Display host information
VBoxManage list hostinfo

A virtual machine can be used to simulate cloud servers and practise Linux infrastructure administration.

---

8. AWS CLI

AWS CLI allows management of Amazon Web Services from a terminal.

Install and configure

Follow the official AWS CLI installation instructions for your operating system.

# Check the installed AWS CLI version
aws --version

# Configure credentials and default settings
aws configure

Use an IAM identity with limited permissions rather than an unrestricted administrator identity.

Check the configured identity

aws sts get-caller-identity

List S3 buckets

aws s3 ls

Create an S3 bucket

# Bucket names must be globally unique.
# This example is for the us-east-1 region.

aws s3 mb s3://my-example-unique-bucket-2026 \
    --region us-east-1

Upload a file

aws s3 cp report.pdf s3://my-example-unique-bucket-2026/

Download a file

aws s3 cp s3://my-example-unique-bucket-2026/report.pdf .

List EC2 instances

aws ec2 describe-instances

List VPCs

aws ec2 describe-vpcs

---

9. Azure CLI

Azure CLI allows management of Microsoft Azure resources.

Login

az login

Display account information

az account show

List available subscriptions

az account list --output table

Create a resource group

az group create \
    --name InfrastructureLab \
    --location eastus

List virtual machines

az vm list --output table

List storage accounts

az storage account list --output table

---

10. Google Cloud CLI

Google Cloud CLI provides terminal-based access to Google Cloud.

Authenticate

gcloud auth login

Set the project

gcloud config set project PROJECT_ID

Display configuration

gcloud config list

List virtual machine instances

gcloud compute instances list

List storage buckets

gcloud storage buckets list

List networks

gcloud compute networks list

---

11. Terraform — Infrastructure as Code

Terraform provisions infrastructure using configuration files.

Installation and initialization

Install Terraform using the official HashiCorp installation instructions.

# Check Terraform version
terraform version

# Initialize the working directory
terraform init

# Validate the configuration
terraform validate

# Format Terraform files
terraform fmt

Example: Create an AWS S3 bucket

Create a file named "main.tf":

# Configure the AWS provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

# Select the AWS region
provider "aws" {
  region = "us-east-1"
}

# Define an S3 bucket resource
resource "aws_s3_bucket" "storage" {
  bucket = "my-unique-infrastructure-lab-2026"

  tags = {
    Name        = "InfrastructureLab"
    Environment = "Development"
  }
}

Use a globally unique bucket name and confirm the provider version available in your environment.

Execute Terraform

# Initialize provider plugins
terraform init

# Check configuration
terraform validate

# Preview infrastructure changes
terraform plan

# Create the infrastructure
terraform apply

Display outputs

terraform output

Destroy infrastructure

# Preview and confirm destruction carefully
terraform plan -destroy

# Destroy resources managed by this configuration
terraform destroy

Terraform state can contain sensitive information. Protect it, restrict access and use an appropriate remote state backend when working collaboratively.

---

12. Terraform Variables and Outputs

Create "variables.tf":

# Define a reusable AWS region variable
variable "aws_region" {
  description = "AWS deployment region"
  type        = string
  default     = "us-east-1"
}

Create "outputs.tf":

# Display the created bucket name
output "bucket_name" {
  value = aws_s3_bucket.storage.bucket
}

Reference the variable in "main.tf":

provider "aws" {
  region = var.aws_region
}

This makes configurations easier to reuse across different environments.

---

13. Ansible — Server Configuration Automation

Ansible automates configuration and administration of remote servers.

Installation

sudo apt update
sudo apt install ansible -y

Check version

ansible --version

Create an inventory file

Create "inventory.ini":

[webservers]

# Replace the example IP with your server's address
192.168.1.100 ansible_user=ubuntu

Test connectivity

ansible webservers -i inventory.ini -m ping

Create an Ansible playbook

Create "webserver.yml":

---
- name: Configure web servers

  hosts: webservers

  become: true

  tasks:

    - name: Update package repository
      apt:
        update_cache: yes

    - name: Install Nginx
      apt:
        name: nginx
        state: present

    - name: Start and enable Nginx
      service:
        name: nginx
        state: started
        enabled: yes

Execute the playbook

ansible-playbook -i inventory.ini webserver.yml

The playbook installs Nginx and ensures that the service is running and enabled at startup.

---

14. Docker — Cloud Application Infrastructure

Docker packages applications into containers.

Install and verify Docker

Install Docker Engine using the official Docker installation instructions.

docker --version

docker info

Download an image

docker pull nginx

Run a container

# Run Nginx in the background
# Map host port 8080 to container port 80

docker run -d \
    --name webserver \
    -p 8080:80 \
    nginx

Access:

http://localhost:8080

List running containers

docker ps

Stop and remove a container

docker stop webserver

docker rm webserver

List images

docker images

---

15. Dockerfile Example

Create a file named "Dockerfile":

# Use an official lightweight Nginx image
FROM nginx:alpine

# Copy a custom website into the Nginx web directory
COPY ./website/ /usr/share/nginx/html/

# Document the port used by the web server
EXPOSE 80

Build:

docker build -t my-website:1.0 .

Run:

docker run -d \
    --name my-website \
    -p 8080:80 \
    my-website:1.0

The image contains Nginx and the website files.

---

16. Docker Compose

Docker Compose manages applications made up of multiple containers.

Example "compose.yaml":

services:

  # Web server
  web:
    image: nginx:alpine
    ports:
      - "8080:80"
    depends_on:
      - database

  # Database service
  database:
    image: postgres:17
    environment:
      POSTGRES_DB: application
      POSTGRES_USER: appuser
      POSTGRES_PASSWORD: ${DB_PASSWORD}
    volumes:
      - database_data:/var/lib/postgresql/data

# Persistent database storage
volumes:
  database_data:

Create a ".env" file containing a suitable "DB_PASSWORD" and keep it out of version control. For production, use a managed secrets solution and a controlled database image version.

Commands:

# Start the application
docker compose up -d

# Display running services
docker compose ps

# View logs
docker compose logs

# Stop services
docker compose down

---

17. Kubernetes — Container Orchestration

Kubernetes manages containerized workloads across a cluster.

Install kubectl

Install "kubectl" using the official Kubernetes instructions.

kubectl version --client

View cluster information

kubectl cluster-info

List nodes

kubectl get nodes

Create a deployment

kubectl create deployment nginx --image=nginx:1.27

Display deployments

kubectl get deployments

Display Pods

kubectl get pods

Expose the application

kubectl expose deployment nginx \
    --type=NodePort \
    --port=80

Scale the deployment

kubectl scale deployment nginx --replicas=3

Inspect services

kubectl get services

View detailed Pod information

kubectl describe pods

Delete the deployment

kubectl delete deployment nginx

These commands require access to a configured Kubernetes cluster.

---

18. Kubernetes YAML Configuration

Create "deployment.yaml":

apiVersion: apps/v1
kind: Deployment

metadata:
  name: web-application

spec:
  replicas: 3

  selector:
    matchLabels:
      app: web

  template:
    metadata:
      labels:
        app: web

    spec:
      containers:
        - name: nginx
          image: nginx:1.27

          ports:
            - containerPort: 80

Apply:

kubectl apply -f deployment.yaml

Create "service.yaml":

apiVersion: v1
kind: Service

metadata:
  name: web-service

spec:
  selector:
    app: web

  ports:
    - port: 80
      targetPort: 80

  type: ClusterIP

Apply:

kubectl apply -f service.yaml

The Service provides a stable internal network endpoint for the application Pods.

---

19. Prometheus Monitoring Configuration

Prometheus collects metrics from configured targets.

Create "prometheus.yml":

global:
  scrape_interval: 15s

scrape_configs:

  - job_name: "prometheus"

    static_configs:
      - targets:
          - "localhost:9090"

Run Prometheus with Docker:

docker run -d \
    --name prometheus \
    -p 9090:9090 \
    -v "$PWD/prometheus.yml:/etc/prometheus/prometheus.yml:ro" \
    prom/prometheus

Access:

http://localhost:9090

To monitor an application, it must expose a compatible metrics endpoint and Prometheus must be configured to scrape that endpoint.

---

20. Grafana Dashboard Infrastructure

Grafana visualizes monitoring metrics.

Run:

docker run -d \
    --name grafana \
    -p 3000:3000 \
    grafana/grafana

Access:

http://localhost:3000

For a production environment:

- Use persistent storage.
- Configure authentication securely.
- Connect a metrics or logging data source.
- Avoid exposing administrative access publicly without appropriate controls.

---

21. Nginx Reverse Proxy

Nginx can act as a reverse proxy between users and backend application servers.

Example configuration:

server {

    listen 80;

    server_name example.com;

    location / {

        # Forward requests to the backend application
        proxy_pass http://127.0.0.1:5000;

        # Preserve the original host information
        proxy_set_header Host $host;

        # Forward the client's IP address
        proxy_set_header X-Real-IP $remote_addr;

        # Preserve proxy forwarding information
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;

    }
}

Validate and reload:

sudo nginx -t

sudo systemctl reload nginx

In production, configure HTTPS and suitable TLS certificates.

---

22. Cloud Infrastructure Architecture Example

A simple cloud-hosted web application may use:

                    INTERNET
                       |
                       |
                 DNS SERVICE
                       |
                       |
                LOAD BALANCER
                       |
                       |
                 WEB SERVER
                       |
                       |
               APPLICATION SERVER
                       |
              -------------------
              |                 |
              |                 |
          DATABASE          OBJECT STORAGE
              |
              |
          BACKUPS

Additional infrastructure:
- Virtual Private Cloud
- Public and private subnets
- Firewall/security groups
- IAM permissions
- Monitoring and logging
- Disaster recovery

This architecture separates application processing, data storage and public access.

---

23. Practical Infrastructure Health Check Script

#!/bin/bash

# Basic Linux infrastructure health check

echo "===== INFRASTRUCTURE HEALTH CHECK ====="

# Check disk capacity
echo "Disk Usage:"
df -h /

# Check memory
echo "Memory Usage:"
free -h

# Check CPU load
echo "System Load:"
uptime

# Check SSH service
echo "SSH Service:"
systemctl is-active ssh

# Check Nginx service
echo "Nginx Service:"
systemctl is-active nginx

# Check internet connectivity
echo "Network Connectivity:"
if ping -c 1 -W 3 8.8.8.8 >/dev/null 2>&1; then
    echo "Network is reachable"
else
    echo "Network connection failed"
fi

echo "===== CHECK COMPLETE ====="

Save as "health_check.sh":

chmod +x health_check.sh

./health_check.sh

---

24. Recommended Infrastructure Project Directory

cloud-infrastructure/
│
├── terraform/
│   ├── main.tf
│   ├── variables.tf
│   ├── outputs.tf
│   └── terraform.tfvars.example
│
├── ansible/
│   ├── inventory.ini
│   └── webserver.yml
│
├── docker/
│   ├── Dockerfile
│   └── compose.yaml
│
├── kubernetes/
│   ├── deployment.yaml
│   └── service.yaml
│
├── monitoring/
│   └── prometheus.yml
│
├── scripts/
│   ├── backup.sh
│   ├── health_check.sh
│   └── system_info.sh
│
├── documentation/
│   └── architecture.md
│
└── README.md

---

25. Important Practical Rules

1. Never upload private keys, passwords or cloud credentials to GitHub.
2. Use IAM roles and temporary credentials where possible.
3. Never expose databases directly to the public internet unless there is a specific, secured requirement.
4. Always review Terraform plans before applying changes.
5. Back up important data and test restoration.
6. Use persistent volumes for data that must survive container replacement.
7. Monitor server resource utilization.
8. Keep cloud resources within budget.
9. Use version-controlled configuration files.
10. Document network architecture and IP allocation.
11. Use HTTPS for public-facing services.
12. Restrict SSH access.
13. Use separate development, testing and production environments.
14. Apply security updates regularly.
15. Test infrastructure changes before production deployment.