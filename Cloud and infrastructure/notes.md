            CLOUD AND INFRASTRUCTURE 
Cloud computing is the delivery of computing resources and services over a network, usually the internet. 
These resources include servers, storage, databases, networking, software, analytics and processing power.
IT infrastructure refers to the physical and virtual resources, systems and services required to operate computing environments and applications.
Cloud infrastructure combines computing hardware, virtualization, networking, storage and software management to provide scalable computing environments.
  Main objectives
- Provide reliable computing resources.
- Reduce the need to purchase and maintain physical hardware.
- Support scalability and flexibility.
- Improve availability and disaster recovery.
- Enable remote access to computing resources.
- Automate infrastructure deployment and management.
- Support applications, enterprise systems, IoT and engineering projects.
  Main infrastructure components
1. Compute — CPUs, GPUs, virtual machines and containers.
2. Storage — disks, object storage and databases.
3. Networking — routers, switches, IP addressing and firewalls.
4. Virtualization — abstraction of physical computing resources.
5. Operating systems — Linux, Windows Server and other systems.
6. Security — identity management, encryption and access control.
7. Management — monitoring, automation and orchestration.

 Cloud Computing Models
Cloud services are classified according to the level of infrastructure and software management provided by the cloud provider.
  Infrastructure as a Service (IaaS)
Provides virtualized computing infrastructure such as virtual machines, storage and networking.
The customer manages the operating system, applications, data and configurations, while the provider manages the underlying physical infrastructure.
Examples:
- Amazon EC2
- Azure Virtual Machines
- Google Compute Engine
Applications:
- Hosting websites and applications.
- Running virtual servers.
- Setting up development environments.
- Hosting databases and enterprise systems.
  Platform as a Service (PaaS)
Provides a managed platform for developing, testing and deploying applications without directly managing the underlying servers.
Examples:
- Google App Engine
- Azure App Service
- AWS Elastic Beanstalk
Applications:
- Web application deployment.
- API hosting.
- Application development.
- Managed application environments.
  Software as a Service (SaaS)
Provides ready-to-use software through the internet. The provider manages the application and infrastructure.
Examples:
- Microsoft 365
- Google Workspace
- Salesforce
Applications:
- Email and collaboration.
- Document management.
- Customer relationship management.
- Business productivity.
  Function as a Service (FaaS) / Serverless Computing
Allows developers to execute individual functions in response to events without managing servers directly.
Examples:
- AWS Lambda
- Azure Functions
- Google Cloud Run functions.
Applications:
- Automated file processing.
- Event-driven applications.
- API operations.
- IoT event processing.
Serverless does not mean that servers do not exist; it means the provider manages the server infrastructure.

 Cloud Deployment Models
  Public Cloud
Infrastructure is owned and operated by a cloud provider and shared among multiple customers through logically isolated environments.
Examples: AWS, Microsoft Azure and Google Cloud.
Advantages:
- Flexible resource allocation.
- Minimal initial hardware investment.
- Global infrastructure availability.
  Private Cloud
Cloud infrastructure dedicated to one organization.
It may be hosted within the organization's premises or by an external provider.
Advantages:
- Greater control over infrastructure.
- Custom security and compliance configurations.
- Dedicated resource allocation.
  Hybrid Cloud
Combines private infrastructure with public cloud services.
Example: An organization stores sensitive information in a private data centre but hosts its public-facing applications in a public cloud.
  Multi-Cloud
Uses services from multiple cloud providers.
Example: Using AWS for computing, Azure for enterprise integration and Google Cloud for analytics.
Important distinction: 
Hybrid cloud combines different infrastructure environments, while multi-cloud involves using multiple cloud providers.

 Cloud Service Providers
Cloud providers supply computing, networking, storage, databases, security and other managed services.
  Amazon Web Services (AWS)
Major services:
- EC2 — virtual machines.
- S3 — object storage.
- EBS — block storage.
- RDS — managed relational databases.
- VPC — virtual networking.
- Lambda — serverless functions.
- IAM — identity and access management.
- CloudWatch — monitoring and logging.
- ECS/EKS — container management and Kubernetes.
  Microsoft Azure
Major services:
- Azure Virtual Machines.
- Azure Blob Storage.
- Azure Virtual Network.
- Azure SQL Database.
- Azure Functions.
- Azure Kubernetes Service (AKS).
- Microsoft Entra ID.
- Azure Monitor.
  Google Cloud Platform (GCP)
Major services:
- Compute Engine.
- Cloud Storage.
- Google Kubernetes Engine (GKE).
- Cloud SQL.
- Cloud Functions / Cloud Run functions.
- BigQuery.
- Cloud Monitoring.
- Cloud IAM.
  Choosing a cloud provider
Consider:
- Cost and pricing structure.
- Available services.
- Geographic availability.
- Security and compliance requirements.
- Performance and reliability.
- Existing technologies and skills.
- Integration requirements.
- Vendor lock-in risks.

 Data Centres and Physical Infrastructure
A data centre is a facility containing computing systems and supporting equipment used to store, process and distribute data.
 Main components
Servers: Computers designed to provide services and resources to other devices.
Rack systems: Physical frames used to organize and mount servers, switches and other equipment.
Networking equipment: Routers, switches, firewalls and network interfaces.
Storage systems: HDDs, SSDs, storage arrays and backup systems.
Power systems: UPS units, generators and power distribution equipment.
Cooling systems: Air conditioning and liquid cooling used to maintain safe operating temperatures.
Physical security: Access controls, surveillance, alarms and environmental monitoring.
  Server types
- Tower servers — standalone systems.
- Rack servers — mounted in server racks.
- Blade servers — compact modular servers.
- GPU servers — optimized for parallel processing and AI workloads.
- Storage servers — optimized for data storage and retrieval.
  Important data-centre considerations
- Power availability and redundancy.
- Cooling efficiency.
- Network connectivity.
- Physical access control.
- Fire protection.
- Hardware maintenance.
- Backup and disaster recovery.

 Virtualization
Virtualization is the process of creating virtual versions of computing resources using software.
It allows multiple isolated computing environments to operate on the same physical hardware.
  Hypervisor
A hypervisor is software that creates and manages virtual machines.
 Type 1 hypervisor (bare-metal):
Runs directly on physical hardware.
Examples:
- VMware ESXi.
- Microsoft Hyper-V.
- Xen.
- KVM.
 Type 2 hypervisor (hosted):
Runs as an application on an existing operating system.
Examples:
- Oracle VirtualBox.
- VMware Workstation.
  Virtual Machines (VMs)
A virtual machine is a software-defined computer with virtual CPU, RAM, storage and network interfaces.
Each VM can run its own operating system and applications.
Advantages:
- Hardware consolidation.
- Isolation.
- Flexible resource allocation.
- Easier testing and recovery.
- Multiple operating systems on one physical machine.
Limitations:
- More resource overhead than lightweight containers.
- Requires memory and storage allocation.
- VM management can become complex at scale.
Other forms of virtualization
- Server virtualization.
- Storage virtualization.
- Network virtualization.
- Desktop virtualization.
- Application virtualization.

 Linux Server Infrastructure
Linux is widely used in cloud infrastructure because of its stability, flexibility, security features and automation capabilities.
  Common server distributions:
- Ubuntu Server.
- Debian.
- Red Hat Enterprise Linux.
- Rocky Linux.
- AlmaLinux.
- SUSE Linux Enterprise Server.
Linux server responsibilities
- Hosting websites and APIs.
- Running databases.
- Managing files and storage.
- Providing network services.
- Running background processes.
- Hosting containers.
- Managing users and permissions.
- Executing automation scripts.
 Important Linux infrastructure concepts
SSH: Secure Shell provides encrypted remote access to Linux servers.
System services: Background services managed using tools such as systemd.
Users and groups: Control access to system resources.
File permissions: Determine who can read, write or execute files.
Package management: Installs and updates software.
Logs: Record system events, errors and application activity.
Processes: Running programs managed by the operating system.

 Networking Infrastructure
Networking enables computing devices and systems to communicate and exchange information.
  Basic network components
- Router — connects different networks and forwards packets.
- Switch — connects devices within a local network.
- Firewall — filters network traffic according to security rules.
- Access point — provides wireless network connectivity.
- Network interface card (NIC) — connects a device to a network.
- Load balancer — distributes traffic across multiple servers.
- Gateway — provides a path between networks or systems.
  Network types
- PAN — Personal Area Network.
- LAN — Local Area Network.
- WLAN — Wireless Local Area Network.
- MAN — Metropolitan Area Network.
- WAN — Wide Area Network.
- VPN — Virtual Private Network.
  IP addressing
An IP address identifies a device or network interface on an IP network.
IPv4: Uses 32-bit addresses, commonly written as four decimal octets.
Example: 192.168.1.10
IPv6: Uses 128-bit addresses and provides a much larger address space.
Example: 2001:db8::10
 Subnetting
Subnetting divides an IP network into smaller logical networks.
It improves address organization, traffic management and network security.
Example:
- Network: 192.168.1.0/24
- Subnet mask: 255.255.255.0
- Usable host addresses in a conventional IPv4 /24: 254.
 Important network protocols
- TCP — reliable, connection-oriented communication.
- UDP — connectionless communication with lower overhead.
- IP — packet addressing and routing.
- HTTP — web communication.
- HTTPS — encrypted web communication using TLS.
- DNS — translates domain names into IP addresses.
- DHCP — automatically assigns network configuration.
- SSH — secure remote administration.
- FTP/SFTP — file transfer.
- SMTP — email transmission.
- ICMP — network diagnostic and error messages.
 Common ports
- 22 — SSH.
- 53 — DNS.
- 80 — HTTP.
- 443 — HTTPS.
- 25 — SMTP.
- 3306 — MySQL.
- 5432 — PostgreSQL.
- 6379 — Redis.
 Virtual Private Cloud (VPC)
A VPC is a logically isolated virtual network within a public cloud.
Typical VPC components:
- IP address ranges.
- Public and private subnets.
- Route tables.
- Internet gateways.
- NAT gateways.
- Security groups.
- Network access control lists.
Public subnet: Has a route that can provide internet connectivity through an internet gateway.
Private subnet: 
Does not directly expose resources to the public internet. 
It may still have controlled outbound access through a NAT gateway or other network service.

 Cloud Storage Infrastructure
Cloud storage allows data to be stored and accessed over a network.
  Object storage
Stores data as objects containing the data itself, metadata and a unique identifier.
Examples:
- Amazon S3.
- Azure Blob Storage.
- Google Cloud Storage.
Applications:
- Images and videos.
- Backups.
- Documents.
- Data lakes.
- Static website files.
  Block storage
Stores data in fixed-size blocks presented to a system as a disk.
Examples:
- Amazon EBS.
- Azure Managed Disks.
- Google Persistent Disk.
Applications:
- Virtual machine disks.
- Operating system storage.
- Database storage.
  File storage
Stores information in files and directories using a shared filesystem.
Examples:
- Amazon EFS.
- Azure Files.
- Google Filestore.
Applications:
- Shared application files.
- Enterprise file systems.
- Network-attached storage.
  Storage performance concepts
- Capacity — amount of data that can be stored.
- Throughput — amount of data transferred per unit time.
- IOPS — input/output operations per second.
- Latency — time taken for an operation to complete.
- Durability — probability of data remaining intact.
- Availability — ability to access data when required.
  RAID
RAID combines multiple physical disks into a logical storage arrangement.
 Common levels:
- RAID 0 — striping; improves performance but provides no redundancy.
- RAID 1 — mirroring; duplicates data across disks.
- RAID 5 — striping with distributed parity; requires at least three disks.
- RAID 6 — striping with double parity; requires at least four disks.
- RAID 10 — combines mirroring and striping.
RAID improves availability or performance depending on the configuration, but it is not a substitute for backups.

 Infrastructure as Code (IaC)
Infrastructure as Code is the practice of defining and managing infrastructure using machine-readable configuration files instead of relying entirely on manual setup.
IaC enables repeatable, automated and consistent infrastructure deployment.
 Benefits
- Reduces manual configuration errors.
- Improves consistency.
- Enables version control.
- Supports automated deployments.
- Makes infrastructure easier to reproduce.
- Helps document infrastructure architecture.
  Declarative vs imperative infrastructure
Declarative: Defines the desired final state. The tool determines the operations needed to achieve it.
Example: Terraform.
Imperative: Defines the sequence of actions or commands to execute.
Example: Shell scripts and procedural automation.
Terraform
Terraform is an IaC tool used to provision and manage infrastructure through configuration files.
  Important concepts:
- Providers — connect Terraform to infrastructure platforms.
- Resources — infrastructure objects to create.
- Variables — reusable configuration inputs.
- Outputs — expose useful results.
- State — records Terraform's understanding of managed infrastructure.
- Modules — reusable collections of Terraform configuration.
- Plans — show proposed infrastructure changes.
  Typical workflow:
1. Write configuration.
2. Initialize providers.
3. Validate configuration.
4. Generate an execution plan.
5. Apply changes.
6. Manage or destroy resources when appropriate.
  Ansible
Ansible is an automation and configuration-management tool.
It uses playbooks, commonly written in YAML, to define tasks.
Applications:
- Installing packages.
- Configuring servers.
- Managing users.
- Deploying applications.
- Applying security settings.
Terraform vs Ansible: 
Terraform is commonly used to provision infrastructure, while Ansible is commonly used to configure operating systems and applications. They can be used together.

 Containers and Containerization
Containerization packages an application and its dependencies into an isolated, portable execution environment.
A container shares the host operating system kernel rather than running a separate guest operating system like a traditional VM.
  Docker
Docker is a widely used container platform.
 Important concepts:
Image: Read-only template used to create containers.
Container: Running instance of an image.
Dockerfile: Instructions used to build a Docker image.
Docker Engine: Software responsible for building and running containers.
Docker Registry: Repository used to store and distribute images.
Docker Hub: Public container image registry.
Volume: Persistent storage used by containers.
Container network: Enables communication between containers and external systems.
 Containers vs virtual machines
Virtual machines virtualize hardware and generally run separate guest operating systems.
Containers isolate applications at the operating-system level and share the host kernel.
Containers are generally lighter and faster to start, while VMs provide a separate guest OS environment and a different isolation boundary.
 Docker Compose
Docker Compose defines and runs multi-container applications using a YAML configuration file.
Example architecture:
- Web application.
- Database.
- Cache.
- Reverse proxy.

 Container Orchestration
Container orchestration automates the deployment, scaling, networking and management of containers across computing environments.
  Kubernetes
Kubernetes is an open-source container orchestration platform.
 Important components:
Cluster: A collection of machines managed by Kubernetes.
Control plane: Coordinates the cluster and manages desired state.
Node: A machine that runs workloads.
Pod: The smallest deployable Kubernetes unit, containing one or more tightly coupled containers.
Deployment: Manages replicated application Pods and rolling updates.
Service: Provides a stable network endpoint for accessing Pods.
Ingress: Manages external HTTP/HTTPS access to services when an appropriate ingress controller is installed.
ConfigMap: Stores non-sensitive configuration.
Secret: Stores sensitive configuration data, although encryption and access controls must be configured appropriately.
Persistent Volume (PV): Represents storage available to a cluster.
Persistent Volume Claim (PVC): A request for storage by an application.
 Kubernetes advantages
- Automated application deployment.
- Self-healing workloads.
- Horizontal scaling.
- Service discovery.
- Rolling updates and rollbacks.
- Container workload management.

 Cloud Databases and Data Infrastructure
Cloud databases provide managed or self-managed database services hosted in cloud environments.
 Relational databases
Store structured data in tables with relationships.
Examples:
- MySQL.
- PostgreSQL.
- Microsoft SQL Server.
- Oracle Database.
Features:
- Structured schemas.
- SQL queries.
- Relationships.
- Transactions.
- Constraints.
 NoSQL databases
Designed for flexible data models and different scalability requirements.
Types:
- Document databases — MongoDB.
- Key-value databases — Redis, DynamoDB.
- Wide-column databases — Cassandra.
- Graph databases — Neo4j.
 Database infrastructure considerations
- Backups.
- Replication.
- High availability.
- Access control.
- Encryption.
- Monitoring.
- Performance optimization.
- Disaster recovery.
- Data migration.
 Database replication
Replication maintains copies of data across multiple database systems.
It can improve read scalability and availability, depending on the replication design.

 Infrastructure Security
Infrastructure security protects computing resources, systems, networks and information against unauthorized access, misuse and attacks.
  Identity and Access Management (IAM)
IAM controls who can access which resources and what actions they can perform.
 Important concepts:
- Authentication — verifies identity.
- Authorization — determines permitted actions.
- Roles — define sets of permissions.
- Policies — specify access rules.
- Least privilege — grant only the permissions required.
- Multi-factor authentication — requires additional verification.
  Network security
- Firewalls.
- Network segmentation.
- VPNs.
- Intrusion detection and prevention.
- Security groups.
- Private subnets.
- Traffic filtering.
  Data security
- Encryption at rest.
- Encryption in transit.
- Key management.
- Secure backups.
- Data access controls.
  Server security
- Regular security updates.
- SSH key authentication.
- Disabling unnecessary services.
- Strong user permissions.
- Firewall configuration.
- Log monitoring.
- Vulnerability scanning.
  Zero Trust
A security approach based on continuously verifying access rather than automatically trusting a user or device because it is inside a network.
  Shared Responsibility Model
Cloud providers and customers share security responsibilities.
The provider generally secures the underlying cloud infrastructure, while customers remain responsible for their data, identities, configurations and workloads according to the service model.

 Infrastructure Monitoring and Observability
Monitoring involves continuously collecting and analyzing information about infrastructure performance and health.
  Key monitoring metrics
CPU utilization: Percentage of CPU processing capacity being used.
Memory utilization: Amount of RAM being used.
Disk utilization: Storage capacity consumed.
Network throughput: Amount of network data transferred per unit time.
Latency: Time taken for an operation or request.
Error rate: Proportion of operations that fail.
Availability: Proportion of time a service is operational and accessible.
  Observability
Observability helps understand the internal state of a system through its external outputs.
 Three main pillars:
1. Metrics — numerical measurements over time.
2. Logs — timestamped records of events.
3. Traces — records of requests as they move through distributed systems.
Common tools
- Prometheus — metrics collection and monitoring.
- Grafana — dashboards and visualization.
- Zabbix — infrastructure monitoring.
- Nagios — system and network monitoring.
- ELK Stack — Elasticsearch, Logstash and Kibana for log processing and analysis.
- OpenTelemetry — instrumentation and telemetry collection.

 High Availability and Fault Tolerance
High availability (HA) means designing systems to remain accessible with minimal downtime.
Fault tolerance means a system can continue operating despite certain component failures.
 Techniques
- Redundant servers.
- Load balancing.
- Database replication.
- Multiple availability zones.
- Automated failover.
- Health checks.
- Backup systems.
- Redundant network connections.
 Load balancing
Distributes incoming requests among multiple servers.
 Common algorithms:
- Round robin.
- Weighted round robin.
- Least connections.
- IP hash.
Failover
Automatically or manually switches operations from a failed component to a working alternative.
  Availability formula
Availability:
Availability = Uptime / (Uptime + Downtime) × 100%
Example:
If a service operates for 99 hours and is unavailable for 1 hour:
Availability = 99 / 100 × 100% = 99%.

 Backup and Disaster Recovery
A backup is a copy of data maintained for restoration after accidental deletion, corruption or system failure.
 Backup types
- Full backup — copies all selected data.
- Incremental backup — copies changes since the previous backup.
- Differential backup — copies changes since the last full backup.
 Disaster recovery
Disaster recovery is the process of restoring infrastructure and services after major disruptions.
 Important concepts:
RTO (Recovery Time Objective): Maximum targeted time to restore a service.
RPO (Recovery Point Objective): Maximum targeted amount of data loss measured in time.
Example:
- RTO = 4 hours.
- RPO = 30 minutes.
This means the recovery target is to restore service within four hours and limit data loss to approximately the previous 30 minutes.
3-2-1 backup strategy
- Keep 3 copies of important data.
- Use 2 different storage types.
- Keep 1 copy off-site or otherwise isolated.
Backups should be tested through actual restoration exercises.

 Infrastructure Automation and Configuration Management
Infrastructure automation uses scripts and software tools to perform repetitive administrative and operational tasks.
Applications:
- Server provisioning.
- Software installation.
- User management.
- Network configuration.
- Backup scheduling.
- Application deployment.
- Monitoring and alerting.
Common tools
- Bash — Linux automation.
- Python — infrastructure scripting and APIs.
- Ansible — configuration management.
- Terraform — infrastructure provisioning.
- Puppet — configuration management.
- Chef — infrastructure automation.
- Cloud provider CLIs — cloud resource management.
Configuration management
Ensures that servers and systems maintain the required configuration.
Important principles:
- Consistency.
- Repeatability.
- Version control.
- Automation.
- Idempotency.
Idempotency: An operation is idempotent when repeating it produces the same intended result rather than repeatedly creating unwanted changes.

 Cloud Cost Management
Cloud cost management involves monitoring, controlling and optimizing expenditure on cloud resources.
  Common cost factors
- Compute instance usage.
- Storage capacity.
- Data transfer.
- Database usage.
- Network services.
- Managed service charges.
- Software licensing.
  Cost optimization techniques
- Shut down unused resources.
- Right-size virtual machines.
- Use autoscaling.
- Select suitable storage classes.
- Monitor data transfer costs.
- Use reserved or committed-use pricing when appropriate.
- Set budgets and billing alerts.
- Remove unused disks, snapshots and IP addresses.
  Important pricing models
- On-demand — pay for resources as used.
- Reserved/committed-use — commit to usage for a period in exchange for potential discounts.
- Spot/preemptible — use spare capacity at reduced prices, with interruption risk.

 Edge Computing and IoT Infrastructure
Edge computing processes data near the source rather than sending everything to a centralized cloud.
It is useful when low latency, reduced bandwidth usage or local operation is required.
  Edge infrastructure components
- Sensors.
- Microcontrollers.
- Single-board computers.
- Edge gateways.
- Local servers.
- Cloud platforms.
- Communication networks.
  Typical architecture
Sensor → Microcontroller → Edge Gateway → Cloud Platform → Database / Dashboard
Applications
- Industrial automation.
- Smart agriculture.
- Smart homes.
- Robotics.
- Predictive maintenance.
- Autonomous systems.
- Remote monitoring.
  Edge vs cloud computing
Cloud computing centralizes processing and storage in remote data centres.
Edge computing performs processing closer to the data source.
Many real-world systems combine both approaches.

 Infrastructure Architecture and Design
Infrastructure architecture describes how computing, storage, networking, security and application components are arranged and connected.
 Common architecture patterns
Single-server architecture: An application and its services run on one server.
 Three-tier architecture:
1. Presentation layer — user interface.
2. Application layer — business logic.
3. Data layer — database and storage.
Microservices architecture: An application is divided into independently deployable services.
Distributed architecture: Components operate across multiple machines or locations.
Serverless architecture: Applications use managed services and event-driven functions without direct server management.
 Important design considerations
- Scalability.
- Availability.
- Performance.
- Security.
- Cost.
- Maintainability.
- Interoperability.
- Disaster recovery.
- Compliance.

 Infrastructure as a Career and Engineering Field
Cloud and infrastructure skills are applied in several technical disciplines.
 Common career paths
- Cloud Engineer.
- Cloud Architect.
- Infrastructure Engineer.
- Systems Administrator.
- Network Engineer.
- DevOps Engineer.
- Site Reliability Engineer.
- Platform Engineer.
- Cloud Security Engineer.
 Practical engineering applications
- Deploying web applications.
- Hosting APIs and databases.
- Building IoT backends.
- Managing robotics infrastructure.
- Creating remote monitoring systems.
- Running machine-learning workloads.
- Managing enterprise networks.
- Building automated development environments.

 Important Formulas and Technical Measurements
Storage conversion
    1 byte = 8 bits.
    1 KB = 1,000 bytes (decimal convention).
    1 KiB = 1,024 bytes (binary convention).
Network throughput
    Throughput = Data transferred / Time taken.
Bandwidth utilization
    Utilization = (Used bandwidth / Available bandwidth) × 100%.
CPU utilization
    CPU utilization = (CPU busy time / Total measured CPU time) × 100%.
Availability
    Availability = Uptime / (Uptime + Downtime) × 100%.
Storage utilization
    Storage utilization = (Used storage / Total storage) × 100%.
Cost estimation
    Estimated cost = Resource usage × Unit price.
Actual cloud billing may include additional charges, discounts, taxes and data-transfer fees.

 Best Practices
1. Design infrastructure with security from the beginning.
2. Use least-privilege access.
3. Enable multi-factor authentication.
4. Use version control for infrastructure configurations.
5. Automate repeatable tasks.
6. Monitor infrastructure continuously.
7. Maintain tested backups.
8. Use redundancy for critical services.
9. Apply security patches regularly.
10. Document infrastructure architecture.
11. Monitor cloud costs.
12. Avoid exposing databases and administrative interfaces directly to the public internet.
13. Use private networking where appropriate.
14. Separate development, testing and production environments.
15. Test recovery procedures before an actual disaster.
16. Use Infrastructure as Code for repeatable deployments.
17. Avoid storing credentials directly in source code.
18. Apply resource limits and scaling policies.
19. Review logs and security alerts regularly.
20. Keep systems and dependencies updated.