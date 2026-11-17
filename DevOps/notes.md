                    DEVOPS
DevOps is a combination of software development (Dev) and IT operations (Ops).
It is a collection of practices, tools and cultural principles designed to automate and integrate software development, deployment and infrastructure management.
Traditionally, developers wrote software while operations teams managed servers and deployment. 
This separation often caused delays, communication problems and deployment failures.
DevOps bridges this gap through collaboration, automation, continuous integration and continuous delivery.
  Main Objectives of DevOps
- Automate repetitive software development and deployment tasks.
- Reduce the time required to release software.
- Improve software quality and reliability.
- Enable continuous integration and delivery.
- Improve collaboration between development and operations teams.
- Detect and resolve errors quickly.
- Ensure consistent deployment environments.
- Improve infrastructure scalability.
- Strengthen system security.
- Monitor applications continuously.
  DevOps Lifecycle
The DevOps lifecycle is a continuous process consisting of:
1. Plan: Define requirements, features, tasks and development objectives.
2. Code: Write and manage application source code.
3. Build: Compile and package software.
4. Test: Verify functionality, quality and security.
5. Release: Prepare approved software for deployment.
6. Deploy: Deliver software to production environments.
7. Operate: Maintain applications and infrastructure.
8. Monitor: Track performance, availability, errors and user experience.
Feedback from monitoring and operations informs the next planning and development cycle.
  DevOps Principles
- Automation: Automate repetitive processes.
- Collaboration: Integrate development and operations teams.
- Continuous improvement: Improve workflows using feedback.
- Continuous delivery: Maintain software in a deployable state.
- Infrastructure as Code: Manage infrastructure through configuration files.
- Monitoring: Continuously observe systems.
- Security integration: Incorporate security throughout development and deployment.

 LINUX AND OPERATING SYSTEM FUNDAMENTALS
Linux is one of the most important operating systems in DevOps because it powers many servers, cloud environments, containers and development systems.
Ubuntu is a popular Linux distribution used for software development, server administration and automation.
  Linux Architecture
 Major components:
1. Hardware: CPU, RAM, storage and network devices.
2. Kernel: Manages hardware, memory, processes and system resources.
3. Shell: Provides an interface for executing commands.
4. System utilities: Tools for managing files, users, processes and services.
5. Applications: Software running on the operating system.
  Linux File System
Linux uses a hierarchical file system beginning at the root directory "/".
 Important directories:
- "/": Root of the file system.
- "/home": User home directories.
- "/root": Root user's home directory.
- "/etc": System configuration files.
- "/var": Variable data, including logs.
- "/tmp": Temporary files.
- "/usr": User applications and system resources.
- "/bin": Essential user commands on systems using this traditional layout.
- "/sbin": System administration commands.
- "/dev": Device files.
- "/proc": Virtual process and kernel information.
- "/opt": Optional application software.
- "/mnt": Temporary mount points.
- "/boot": Boot-related files.
  Essential Linux Commands
 File and directory management:
- "pwd": Displays current working directory.
- "ls": Lists directory contents.
- "cd": Changes directory.
- "mkdir": Creates directories.
- "rmdir": Removes empty directories.
- "touch": Creates an empty file or updates timestamps.
- "cp": Copies files and directories.
- "mv": Moves or renames files.
- "rm": Removes files or directories.
- "cat": Displays file contents.
- "less": Views files page by page.
- "head": Displays the beginning of a file.
- "tail": Displays the end of a file.
- "find": Searches for files and directories.
- "grep": Searches text using patterns.
 System information:
- "uname -a": Displays kernel and system information.
- "whoami": Displays the current user.
- "hostname": Displays the system hostname.
- "df -h": Displays disk space usage.
- "free -h": Displays memory usage.
- "top": Displays running processes and resource usage.
- "ps aux": Lists processes.
- "uptime": Displays system uptime and load averages.
  Linux Permissions
Linux controls file access using permissions.
 Three permission categories:
- User (u): File owner.
- Group (g): Members of the file's group.
- Others (o): Everyone else.
 Permission types:
- Read (r): 4.
- Write (w): 2.
- Execute (x): 1.
Example:
"chmod 755 script.sh"
Means:
- Owner: Read, write and execute.
- Group: Read and execute.
- Others: Read and execute.
 Other commands:
- "chmod": Changes permissions.
- "chown": Changes file ownership.
- "chgrp": Changes group ownership.
  Linux Process Management
A process is a running instance of a program.
 Important commands:
- "ps": Displays processes.
- "top": Monitors processes.
- "kill": Sends a signal to a process.
- "killall": Sends a signal to processes by name.
- "jobs": Lists shell jobs.
- "bg": Resumes a job in the background.
- "fg": Brings a job to the foreground.
- "nice": Starts a process with a scheduling priority adjustment.
- "systemctl": Manages system services.
  Linux Package Management
Ubuntu uses APT (Advanced Package Tool) to manage software packages.
 Important commands:
- "sudo apt update": Updates package indexes.
- "sudo apt upgrade": Upgrades installed packages.
- "sudo apt install package": Installs a package.
- "sudo apt remove package": Removes a package.
- "sudo apt autoremove": Removes unused dependencies.
- "apt search package": Searches for packages.
  System Services and systemd
A service is a background program that provides functionality to other applications or users.
Examples:
- SSH server.
- Web server.
- Database server.
- Background application workers.
"systemd" is a common Linux service and system manager.
 Commands:
- "systemctl start service": Starts a service.
- "systemctl stop service": Stops a service.
- "systemctl restart service": Restarts a service.
- "systemctl enable service": Enables automatic startup.
- "systemctl status service": Displays service status.
- "journalctl -u service": Displays service logs.
Applications: Server administration, hosting, automation and production system management.

 SHELL SCRIPTING AND AUTOMATION
  Shell Scripting
Shell scripting involves writing a series of Linux commands in a file to automate tasks.
A shell script is executed by a shell such as Bash.
 Common uses:
- Automated backups.
- Software installation.
- File management.
- Application deployment.
- System monitoring.
- Log processing.
- Scheduled maintenance.
- Server configuration.
  Bash Variables
Variables store values that can be reused.
Example:
"NAME="DevOps""
Access a variable using "$NAME".
  Conditional Statements
Allow scripts to make decisions based on conditions.
 Main structures:
- "if"
- "elif"
- "else"
- "case"
Applications: Checking whether a service is running, validating files and handling errors.
  Loops
Loops execute commands repeatedly.
 Types:
- "for": Iterates over a collection or sequence.
- "while": Repeats while a condition is true.
- "until": Repeats until a condition becomes true.
  Functions
Functions are reusable blocks of shell commands.
They improve organization, maintainability and code reuse.
  Exit Codes and Error Handling
A command returns an exit status.
- "0": Usually indicates success.
- Nonzero: Indicates an error or another unsuccessful condition.
Useful Bash features:
- "$?": Exit status of the previous command.
- "set -e": Exits when certain commands fail.
- "set -u": Treats unset variables as errors.
- "set -o pipefail": Makes a pipeline fail if a command within it fails.
Use error handling deliberately; "set -e" has context-dependent behavior and should not replace explicit checks.

 VERSION CONTROL SYSTEMS (VCS)
  Version Control
Version control is a system for recording and managing changes to files over time.
 It allows developers to:
- Track code changes.
- Restore previous versions.
- Collaborate with other developers.
- Create independent development branches.
- Resolve conflicts.
- Maintain project history.
  Types of Version Control Systems
1. Local VCS: Maintains versions on a local machine.
2. Centralized VCS: Uses a central server to store version history.
3. Distributed VCS: Every clone contains a repository history.
Git is a distributed version control system.
  Git Fundamentals
 Important Git concepts:
- Repository: A project tracked by Git.
- Commit: A recorded snapshot of changes.
- Branch: An independent line of development.
- Merge: Combines changes from branches.
- Clone: Creates a local copy of a remote repository.
- Fetch: Downloads remote changes without integrating them.
- Pull: Fetches and integrates remote changes.
- Push: Uploads local commits to a remote repository.
- HEAD: Refers to the currently checked-out commit or branch position.
- Staging area: Holds changes selected for the next commit.
- Remote: A reference to another repository, commonly hosted on GitHub.
  Git Workflow
 Typical workflow:
1. Create or clone a repository.
2. Modify source code.
3. Stage changes using "git add".
4. Commit changes using "git commit".
5. Push commits to a remote repository.
6. Collaborate through branches and pull requests.
7. Merge approved changes.
  Branching and Merging
Branches allow developers to work on different features without immediately changing the main development line.
 Common branch types:
- Main/master: Primary stable branch.
- Feature: New functionality.
- Bugfix: Bug corrections.
- Release: Software release preparation.
- Hotfix: Urgent production fixes.
Merge integrates changes from one branch into another.
 Merge Conflicts
A merge conflict occurs when Git cannot automatically reconcile competing changes.
Resolution:
1. Identify conflicted files.
2. Open and inspect conflict markers.
3. Decide which changes should remain.
4. Remove conflict markers.
5. Test the result.
6. Stage and commit the resolution.
  GitHub
GitHub is a cloud-based platform for hosting Git repositories and supporting software collaboration.
Features:
- Repository hosting.
- Pull requests.
- Issues and project tracking.
- Code reviews.
- GitHub Actions.
- Release management.
- Documentation using Markdown.
- Security and dependency tools.
 Git vs GitHub:
Git is the version control system. 
GitHub is an online platform that hosts Git repositories and provides collaboration and automation features.

 SOFTWARE DEVELOPMENT WORKFLOW
  Software Development Lifecycle (SDLC)
The SDLC is a structured process used to develop and maintain software.
 Main stages:
1. Requirements gathering.
2. Planning and design.
3. Implementation.
4. Testing.
5. Deployment.
6. Maintenance.
DevOps improves the SDLC by automating and integrating development, testing, deployment and operations.
  Development Environments
Common environments:
- Development (DEV): Used for writing and initially testing code.
- Testing (TEST): Used for formal testing.
- Staging (STAGING): Production-like environment used for final validation.
- Production (PROD): Environment serving actual users.
Separating environments helps reduce deployment risk.
  Application Configuration
Applications need configuration such as:
- Database connection details.
- Port numbers.
- API endpoints.
- Logging levels.
- Feature flags.
- Service credentials.
Configuration should be separated from application source code.
Sensitive information should be stored in secure secret-management systems rather than committed to Git.

 CONTINUOUS INTEGRATION (CI)
Continuous Integration is the practice of frequently integrating code changes into a shared repository and automatically validating them.
 CI Process
1. Developer writes code.
2. Developer pushes changes.
3. CI system detects the changes.
4. Application is built.
5. Automated tests execute.
6. Code quality and security checks run.
7. Results are reported.
 Benefits
- Detects errors early.
- Reduces integration problems.
- Improves code quality.
- Provides rapid feedback.
- Reduces manual testing effort.
 CI Tools
- GitHub Actions.
- Jenkins.
- GitLab CI/CD.
- CircleCI.
- Buildkite.
 Build Automation
A build process transforms source code into executable or deployable artifacts.
Examples:
- Compiling C/C++ programs.
- Building Java applications.
- Packaging Python applications.
- Creating container images.

 CONTINUOUS DELIVERY AND CONTINUOUS DEPLOYMENT
  Continuous Delivery (CD)
Continuous Delivery automatically builds, tests and prepares software for release.
The application remains in a deployable state, but production deployment generally requires approval or a deliberate release action.
  Continuous Deployment
Continuous Deployment automatically releases every change that passes the required pipeline checks into production.
 Difference
- Continuous Delivery: Production release is available and ready, usually with a human approval step.
- Continuous Deployment: Successful changes are automatically released to production.
  Deployment Pipeline
 A typical pipeline:
Code → Build → Test → Security Scan → Package → Deploy → Monitor.
Deployment automation reduces human error and makes releases more repeatable.

 GITHUB ACTIONS
GitHub Actions is a CI/CD and workflow automation platform integrated into GitHub.
It executes automated workflows when specified events occur.
  Important Components
- Workflow: An automated process defined in YAML.
- Event: Trigger that starts a workflow.
- Job: A collection of steps executed on a runner.
- Step: An individual command or action.
- Runner: Machine that executes jobs.
- Action: Reusable unit of workflow automation.
- Artifact: File or package produced by a workflow.
- Secret: Encrypted value made available to authorized workflows.
  Common Workflow Events
- "push": Code is pushed.
- "pull_request": A pull request is opened or updated.
- "workflow_dispatch": Workflow is manually triggered.
- "schedule": Workflow runs according to a schedule.
- "release": A release event occurs.
  Workflow Structure
GitHub Actions workflows are stored in:
".github/workflows/"
Workflow files use YAML syntax.
 Typical structure:
- "name"
- "on"
- "permissions"
- "jobs"
- "runs-on"
- "steps"
- "uses"
- "run"
  CI/CD Applications
- Automatically compile software.
- Run unit tests.
- Perform code quality checks.
- Build Docker images.
- Publish application packages.
- Deploy applications to cloud servers.
- Automate documentation and releases.

 BUILD SYSTEMS AND PACKAGE MANAGEMENT
  Build Systems
Build systems automate the transformation of source code into executable programs or packages.
Examples:
- Make.
- CMake.
- Maven.
- Gradle.
- npm scripts.
- Python build tools.
  Dependency Management
Software applications depend on external libraries and packages.
 Dependency management handles:
- Installing libraries.
- Tracking versions.
- Resolving dependencies.
- Updating packages.
- Avoiding incompatible versions.
Examples:
- npm for JavaScript.
- pip for Python.
- Maven and Gradle for Java.
- apt for Ubuntu packages.
- Conan and vcpkg for C++.
  Lockfiles
Lockfiles record exact dependency versions to improve reproducibility.
Examples:
- "package-lock.json"
- "poetry.lock"
- "Pipfile.lock"
- "Cargo.lock"
They help ensure different environments install consistent dependencies.

 CONTAINERIZATION AND DOCKER
  Containerization
Containerization packages an application and its required dependencies into an isolated environment called a container.
Containers share the host operating system kernel but isolate application processes, filesystems, networking and other resources.
  Docker
Docker is a platform and ecosystem for building, distributing and running containers.
 Important components:
Docker Engine: Runs and manages containers.
Docker Image: Read-only template used to create containers.
Docker Container: Running or stopped instance of an image.
Dockerfile: Instructions for building an image.
Docker Registry: Repository for storing and distributing images.
Docker Hub: A public container image registry with private repository options.
  Docker Advantages
- Consistent application environments.
- Portability across supported systems.
- Faster deployment.
- Isolation between applications.
- Efficient resource usage compared with many traditional virtual-machine deployments.
- Easier scaling and automation.
  Containers vs Virtual Machines
 Virtual Machines:
- Run a complete guest operating system.
- Use a hypervisor.
- Typically consume more resources.
- Provide a separate OS kernel.
 Containers:
- Share the host kernel.
- Package application dependencies.
- Usually start faster.
- Typically use fewer resources.
  Docker Networking
Allows containers to communicate with:
- Other containers.
- The host system.
- External networks.
 Common network drivers:
- Bridge.
- Host.
- None.
- Overlay.
  Docker Volumes
Volumes provide persistent data storage independent of a container's writable layer.
Applications:
- Databases.
- File uploads.
- Persistent application data.
- Shared application files.
  Docker Compose
Docker Compose defines and manages multi-container applications using YAML configuration.
It is useful for running interconnected services such as:
- Web application.
- Database.
- Cache.
- Message broker.

 CONTAINER ORCHESTRATION – KUBERNETES
  Kubernetes
Kubernetes (K8s) is an open-source container orchestration platform.
It automates the deployment, scaling, networking and management of containerized applications.
 Why Kubernetes?
- Automatically maintains desired application replicas.
- Restarts failed containers.
- Distributes network traffic.
- Supports horizontal scaling.
- Enables rolling updates.
- Supports service discovery.
- Manages application configuration and secrets.
 Kubernetes Architecture
Control Plane
Coordinates the cluster.
 Main components:
1. API Server: Exposes the Kubernetes API.
2. Scheduler: Assigns Pods to suitable nodes.
3. Controller Manager: Runs controllers that maintain desired state.
4. etcd: Stores cluster configuration and state.
Worker Nodes
Run application workloads.
 Main components:
1. Kubelet: Communicates with the control plane and manages Pods on a node.
2. Container Runtime: Runs containers.
3. Network components: Enable communication between Pods and Services.
 Important Kubernetes Objects
Pod: Smallest deployable unit, containing one or more closely related containers.
Deployment: Manages stateless application replicas and rolling updates.
Service: Provides stable network access to a group of Pods.
ConfigMap: Stores non-sensitive configuration data.
Secret: Stores sensitive configuration data; encryption and access controls must be configured appropriately.
Namespace: Provides logical separation within a cluster.
PersistentVolume (PV): Represents cluster storage.
PersistentVolumeClaim (PVC): Requests storage resources.
Ingress: Manages external HTTP/HTTPS access to services when an ingress controller is installed.
StatefulSet: Manages stateful workloads that require stable identities or storage associations.
DaemonSet: Ensures a Pod runs on selected nodes, often for monitoring or logging agents.
  Kubernetes Scaling
Horizontal scaling increases or decreases the number of application replicas.
Vertical scaling changes the CPU and memory resources assigned to containers.
Horizontal Pod Autoscaler (HPA) adjusts replica counts based on configured metrics.

 INFRASTRUCTURE AS CODE (IaC)
Infrastructure as Code is the practice of managing and provisioning infrastructure using machine-readable configuration files rather than manual processes.
 Infrastructure includes:
- Virtual machines.
- Networks.
- Storage.
- Databases.
- Cloud resources.
- Firewalls.
- Load balancers.
 Benefits
- Reproducible infrastructure.
- Faster provisioning.
- Version-controlled infrastructure.
- Reduced configuration errors.
- Consistent environments.
- Automated infrastructure deployment.
 Terraform
Terraform is an Infrastructure as Code tool used to provision and manage infrastructure through declarative configuration.
Important concepts:
- Provider: Plugin connecting Terraform to an infrastructure platform.
- Resource: Infrastructure object to create or manage.
- Data source: Reads existing external information.
- Variable: Parameterizes configuration.
- Output: Exposes useful values.
- State: Tracks Terraform-managed infrastructure.
- Module: Reusable collection of Terraform configuration.
 Typical Terraform workflow:
1. "terraform init": Initializes the working directory.
2. "terraform fmt": Formats configuration.
3. "terraform validate": Validates configuration.
4. "terraform plan": Previews proposed changes.
5. "terraform apply": Applies approved changes.
6. "terraform destroy": Destroys managed resources when intentionally requested.
State files can contain sensitive information. 
Protect them using secure remote storage, access control, encryption and state locking where supported.
 Configuration Management
Configuration management ensures systems are configured consistently.
Examples:
- Installing packages.
- Creating users.
- Managing services.
- Configuring servers.
- Deploying applications.
Ansible is a widely used configuration management and automation tool.
 Ansible
Ansible automates infrastructure configuration and application deployment.
 Important concepts:
- Inventory: List of managed hosts.
- Playbook: YAML instructions describing automation.
- Play: Defines tasks for selected hosts.
- Task: Individual operation.
- Module: Performs a specific operation.
- Role: Reusable structure for organizing automation.
Ansible generally uses SSH to manage Linux hosts without requiring a persistent agent.

 CLOUD COMPUTING AND DEVOPS
  Cloud Computing
Cloud computing provides computing resources over a network, usually through on-demand services.
Resources include:
- Compute.
- Storage.
- Databases.
- Networking.
- Security.
- Analytics.
- AI services.
  Cloud Service Models
IaaS – Infrastructure as a Service
Provides virtual infrastructure such as computing, networking and storage.
PaaS – Platform as a Service
Provides a managed application development and deployment platform.
SaaS – Software as a Service
Provides complete software applications through a network.
  Cloud Deployment Models
- Public cloud: Infrastructure provided by a cloud provider to multiple customers.
- Private cloud: Cloud infrastructure dedicated to one organization.
- Hybrid cloud: Combination of private and public cloud environments.
- Multi-cloud: Use of services from multiple cloud providers.
  Major Cloud Platforms
- Amazon Web Services (AWS).
- Microsoft Azure.
- Google Cloud Platform (GCP).
  Important Cloud Services
Compute:
- Virtual machines.
- Containers.
- Serverless functions.
Storage:
- Object storage.
- Block storage.
- File storage.
Networking:
- Virtual networks.
- Load balancers.
- Firewalls.
- DNS.
Databases:
- Relational databases.
- NoSQL databases.
- Managed database services.
  Serverless Computing
Serverless computing allows developers to execute code without directly managing the underlying server infrastructure.
The cloud provider manages server provisioning and much of the scaling infrastructure.
Applications:
- Event-driven processing.
- API backends.
- Automated file processing.
- Scheduled jobs.
Serverless does not mean that servers do not exist; it means server management is abstracted from the developer.

 NETWORKING FUNDAMENTALS FOR DEVOPS
DevOps engineers must understand networking because applications, containers, servers and cloud resources communicate over networks.
  IP Addresses
An IP address identifies a network interface within an IP network.
Types:
- IPv4: 32-bit address.
- IPv6: 128-bit address.
  DNS
Domain Name System translates domain names into IP addresses and other resource records.
Example:
"example.com" → IP address.
DNS is essential for application access, service discovery and domain management.
  Important Protocols
- HTTP: Transfers web resources.
- HTTPS: HTTP secured using TLS.
- SSH: Secure remote administration.
- TCP: Reliable, connection-oriented transport.
- UDP: Connectionless transport.
- DNS: Domain name resolution.
- DHCP: Automatic IP configuration.
- FTP/SFTP: File transfer protocols.
- SMTP: Email transmission.
  Important Network Ports
Port| Protocol / Service
22| SSH
53| DNS
80| HTTP
443| HTTPS
3306| MySQL
5432| PostgreSQL
6379| Redis
27017| MongoDB
8080| Common alternative HTTP/application port
Port usage depends on service configuration.
  Firewalls
A firewall controls incoming and outgoing network traffic according to security rules.
Ubuntu commonly uses UFW as a simplified firewall management interface.
  Reverse Proxies and Load Balancers
Reverse Proxy: Receives client requests and forwards them to backend servers.
Load Balancer: Distributes incoming traffic across multiple backend instances.
Applications:
- Web hosting.
- High availability.
- Application scaling.
- Traffic management.
  TLS and HTTPS
TLS provides encryption, authentication and integrity for network communications.
HTTPS uses HTTP over TLS to protect web communication.

 DATABASES AND DATA MANAGEMENT IN DEVOPS
Applications often rely on databases to store persistent information.
  Relational Databases
Store structured data in tables with defined relationships.
Examples:
- PostgreSQL.
- MySQL.
- MariaDB.
  NoSQL Databases
Support data models beyond traditional relational tables.
Examples:
- MongoDB: Document database.
- Redis: In-memory data structure store.
- Cassandra: Wide-column database.
  Database DevOps
Database DevOps involves automating:
- Database provisioning.
- Schema migrations.
- Backups.
- Restoration.
- Testing.
- Monitoring.
- Access control.
  Database Migrations
A database migration modifies database structure or data in a controlled, versioned manner.
Examples:
- Creating tables.
- Adding columns.
- Changing indexes.
- Updating constraints.
Migrations should be tested and designed to minimize production downtime and data loss.
  Backups and Disaster Recovery
Backup strategies protect data against accidental deletion, corruption and infrastructure failure.
Important concepts:
- Full backup.
- Incremental backup.
- Differential backup.
- Backup retention.
- Recovery Point Objective (RPO).
- Recovery Time Objective (RTO).
A backup is only useful if restoration is tested.

 MONITORING, LOGGING AND OBSERVABILITY
  Monitoring
Monitoring continuously tracks the state and performance of infrastructure and applications.
Common metrics:
- CPU utilization.
- Memory utilization.
- Disk space.
- Network traffic.
- Application latency.
- Error rate.
- Request throughput.
- Service availability.
  Logging
Logs are records of events generated by applications and infrastructure.
Log levels:
- DEBUG.
- INFO.
- WARNING.
- ERROR.
- CRITICAL.
Logs are used for debugging, troubleshooting, auditing and security investigations.
  Observability
Observability is the ability to understand a system's internal state from its external outputs.
Three major pillars:
1. Metrics: Numerical measurements over time.
2. Logs: Records of individual events.
3. Traces: Track requests across distributed services.
  Prometheus
Prometheus is an open-source monitoring and metrics collection system.
It:
- Collects time-series metrics.
- Supports alerting rules.
- Provides PromQL for querying metrics.
- Integrates with visualization tools.
  Grafana
Grafana is an observability and visualization platform.
It provides:
- Dashboards.
- Graphs.
- Metrics visualization.
- Alerts.
- Monitoring integrations.
  Centralized Logging
Centralized logging collects logs from multiple systems into a common platform.
Tools:
- Elasticsearch.
- Logstash.
- Kibana.
- Fluent Bit.
- Loki.
Applications:
- Troubleshooting.
- Security analysis.
- Performance investigation.
- System auditing.
  Alerting
Alerts notify engineers when monitored conditions exceed defined thresholds or when system failures occur.
Examples:
- High CPU utilization.
- Disk nearly full.
- Application unavailable.
- High error rate.
- Excessive response latency.

 DEVOPS SECURITY AND DEVSECOPS
  DevSecOps
DevSecOps integrates security practices throughout the software development and operations lifecycle.
Rather than testing security only before deployment, security is incorporated into planning, coding, building, testing and operations.
 Important Security Practices
- Secure authentication.
- Role-based access control.
- Least privilege.
- Encryption in transit and at rest.
- Secure secrets management.
- Dependency vulnerability scanning.
- Container image scanning.
- Infrastructure security checks.
- Regular patching.
- Security logging and auditing.
  Secrets Management
Secrets include:
- API keys.
- Passwords.
- Database credentials.
- SSH private keys.
- Access tokens.
- Certificates.
Secrets should not be stored in public repositories or exposed in logs.
 Common solutions:
- HashiCorp Vault.
- Cloud provider secret managers.
- GitHub Actions Secrets.
- Kubernetes Secrets with appropriate encryption and access controls.
  Static Application Security Testing (SAST)
Analyzes source code or binaries to identify security vulnerabilities without executing the application.
  Dynamic Application Security Testing (DAST)
Tests a running application to identify vulnerabilities through its exposed behavior.
  Software Composition Analysis (SCA)
Analyzes third-party dependencies for known vulnerabilities and licensing concerns.
  Supply Chain Security
Protects software throughout its development and distribution process.
Includes:
- Dependency verification.
- Trusted build environments.
- Artifact signing.
- Provenance.
- Secure CI/CD permissions.
- Software Bill of Materials (SBOM).

 DEPLOYMENT STRATEGIES
  Recreate Deployment
Stops the old application version and deploys the new version.
Simple, but may cause downtime.
  Rolling Deployment
Gradually replaces old application instances with new instances.
Reduces downtime when properly configured.
  Blue-Green Deployment
Maintains two environments:
- Blue: Current production version.
- Green: New version.
Traffic is switched to the new environment after validation.
Enables relatively fast rollback when the previous environment remains available.
  Canary Deployment
Releases the new version to a small percentage of users before increasing traffic.
Allows early detection of problems.
  Feature Flags
Feature flags enable or disable application features without necessarily deploying new code.
Applications:
- Gradual feature releases.
- A/B testing.
- Emergency feature disabling.
- Controlled rollout.

 RELIABILITY ENGINEERING AND SITE RELIABILITY ENGINEERING (SRE)
SRE applies software engineering principles to operations and service reliability.
  Availability
Availability measures the proportion of time a service is operational and accessible.
    Availability (%) = (Available Time / Total Time) × 100
  Service Level Indicators (SLIs)
SLIs are measurable indicators of service performance.
Examples:
- Request success rate.
- Response latency.
- Availability.
- Throughput.
  Service Level Objectives (SLOs)
SLOs are target values for service reliability.
Example: 99.9% successful requests over a defined measurement period.
  Service Level Agreements (SLAs)
SLAs are formal agreements describing expected service levels and possible consequences when they are not met.
  Error Budgets
An error budget represents the amount of unreliability allowed by an SLO.
It helps balance release speed with service stability.
  Incident Management
Incident management is the process of detecting, responding to and resolving service disruptions.
Typical stages:
1. Detection.
2. Assessment.
3. Containment.
4. Resolution.
5. Recovery.
6. Post-incident review.
A blameless postmortem focuses on system improvements rather than assigning personal blame.

 MICROSERVICES AND DISTRIBUTED SYSTEMS
  Monolithic Architecture
An application is built as one integrated unit.
Advantages:
- Simpler initial development.
- Straightforward deployment.
- Easier local debugging.
Limitations:
- Components are tightly coupled.
- Scaling individual components is difficult.
- Large codebases can become difficult to maintain.
  Microservices Architecture
An application is divided into smaller, independently deployable services.
Each service handles a specific business capability.
Examples:
- Authentication service.
- Payment service.
- Inventory service.
- Notification service.
Advantages:
- Independent deployment.
- Independent scaling.
- Technology flexibility.
- Improved fault isolation when designed appropriately.
Challenges:
- Network communication.
- Distributed data management.
- Service discovery.
- Monitoring complexity.
- Distributed failure handling.
  API Gateway
An API gateway acts as an entry point for client requests and routes them to appropriate backend services.
  Message Queues
Message queues enable asynchronous communication between services.
Examples:
- RabbitMQ.
- Apache Kafka.
- Amazon SQS.
Applications:
- Background jobs.
- Event-driven systems.
- Data processing.
- Distributed communication.

 DEVOPS TOOLCHAIN
A DevOps toolchain is a collection of tools used to automate different stages of the software lifecycle.
Category| Common Tools| Purpose
Operating system| Ubuntu, Linux| Server and development environment
Version control| Git, GitHub| Source code management
CI/CD| GitHub Actions, Jenkins| Workflow automation
Build| Make, CMake, Maven| Build automation
Testing| pytest, JUnit| Automated testing
Code quality| SonarQube| Code quality analysis
Containers| Docker| Application packaging
Orchestration| Kubernetes| Container management
IaC| Terraform| Infrastructure provisioning
Configuration management| Ansible| System configuration
Cloud| AWS, Azure, GCP| Infrastructure and services
Monitoring| Prometheus| Metrics collection
Visualization| Grafana| Dashboards
Logging| ELK, Loki| Log management
Security| Trivy, Snyk| Vulnerability scanning
Collaboration| Jira, GitHub| Task and project management
The choice of tools depends on project requirements, infrastructure, cost, team skills and operational complexity.

 DEVOPS IN EMBEDDED SYSTEMS AND ENGINEERING
DevOps principles also apply to hardware-related software and engineering systems.
 Applications
Embedded Software CI/CD
- Automated firmware compilation.
- Static code analysis.
- Unit testing.
- Hardware-in-the-loop testing.
- Firmware artifact management.
IoT Systems
- Device provisioning.
- Firmware updates.
- Remote monitoring.
- Secure device authentication.
- Cloud connectivity.
Robotics
- Automated software builds.
- Simulation testing.
- Containerized development environments.
- Automated deployment to robot computers.
- Logging and performance monitoring.
Edge Computing
- Deploying software to distributed edge devices.
- Managing remote updates.
- Monitoring device health.
- Managing limited computing resources.
Industrial Automation
- Version-controlled PLC and control-system configurations where supported.
- Automated testing.
- Configuration management.
- Controlled software releases.
For safety-critical systems, automated deployment must include appropriate verification, authorization and rollback controls.

 IMPORTANT DEVOPS CONCEPTS AND FORMULAS
  Deployment Frequency
How frequently software is successfully deployed.
  Lead Time for Changes
Time between a code change being committed and that change reaching production.
  Change Failure Rate
Change Failure Rate = (Failed Deployments / Total Deployments) × 100
  Mean Time to Recovery (MTTR)
Average time required to restore service after a failure.
    MTTR = Total Recovery Time / Number of Incidents
Availability
    Availability (%) = (Available Time / Total Time) × 100
  Infrastructure Utilization
Utilization (%) = (Used Resource Capacity / Total Resource Capacity) × 100
  Network Throughput
Amount of data transferred per unit time.
  Application Latency
Time taken for an application or service to respond to a request.
These metrics help evaluate delivery performance, system reliability and operational efficiency.

 BEST PRACTICES IN DEVOPS
1. Use version control for source code and infrastructure configuration.
2. Automate repetitive development and operational tasks.
3. Use CI pipelines to test every meaningful code change.
4. Keep development, staging and production configurations controlled.
5. Store secrets securely.
6. Use containers when they provide a practical benefit.
7. Monitor applications and infrastructure continuously.
8. Maintain reliable backup and recovery procedures.
9. Use least-privilege access controls.
10. Keep dependencies and system packages updated.
11. Test deployments before releasing to production.
12. Maintain clear documentation.
13. Use infrastructure as code for repeatable environments.
14. Implement logging and alerting.
15. Use automated rollback or recovery mechanisms where appropriate.
16. Review failures and continuously improve systems.
17. Pin and verify third-party CI/CD actions and dependencies.
18. Avoid giving CI/CD workflows unnecessary administrative permissions.

 SUMMARY
DevOps integrates development, operations, automation and continuous improvement.
The most important areas to understand are:
- Linux and Ubuntu administration.
- Bash and shell scripting.
- Git and GitHub.
- Software development workflows.
- Continuous Integration and Continuous Delivery.
- GitHub Actions and Jenkins.
- Docker and containerization.
- Kubernetes and orchestration.
- Infrastructure as Code.
- Terraform and Ansible.
- Cloud computing.
- Networking.
- Database management.
- Monitoring and observability.
- DevSecOps and security.
- Deployment strategies.
- Reliability engineering and SRE.
- Microservices and distributed systems.
The ultimate goal is to develop, test, deploy and maintain reliable software systems efficiently through automation, collaboration and continuous feedback.