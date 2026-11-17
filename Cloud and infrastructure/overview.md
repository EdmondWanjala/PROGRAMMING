        Overview
Cloud infrastructure is the collection of physical hardware and abstract software components that support cloud computing. Instead of buying and maintaining physical data centers or servers on-site, businesses rent compute power, storage, and networking from Cloud Service Providers (CSPs) like Amazon Web Services (AWS), Microsoft Azure, or Google Cloud Platform.

        Key Components & Concepts
Physical & Software Components
• Compute (Servers): Bare-metal or virtual servers that handle processing, data computation, and resource allocation.
• Storage: Data housed across physical disks, flash memory, and remote systems, categorized into:
	• Object Storage (for unstructured data and backups)
	• File Storage (hierarchical file systems)
	• Block Storage (high-performance raw storage drives)
• Networking: Virtualized switches, routers, firewalls, and Software-Defined Networking (SDN) that link cloud services over the internet.
• Virtualization & Hypervisors: Low-level software or firmware (Virtual Machine Managers) that splits physical hardware into multiple isolated virtual machines (VMs) or containers to share resources among different tenants.
• Management & Deployment Software: Tools that configure, monitor, optimize, and automate workloads and application deployments.

Fundamental Characteristics (NIST Model)
• On-Demand Self-Service: Users can provision servers, databases, and storage instantly without human intervention from the provider.
• Broad Network Access: Services are available over the network and accessible via standard devices.
• Resource Pooling: Multi-tenant architecture shares physical hardware pools across multiple clients dynamically.
• Rapid Elasticity: Computing capabilities can scale up or down automatically or manually to match changing demands.
• Measured Service: Pay-per-use utility pricing model based on metered consumption (storage, bandwidth, processing time).

Service Models
• IaaS (Infrastructure as a Service): Rent raw computing, storage, and networking building blocks (e.g., VMs).
• PaaS (Platform as a Service): Rent a pre-configured development and deployment environment (runtimes, databases) without managing the underlying hardware.
• SaaS (Software as a Service): Use fully managed end-user software applications delivered over the web (e.g., email, CRM).
• Serverless / FaaS (Function as a Service): Run code triggers without provisioning or managing servers at all (e.g., AWS Lambda).

Deployment Models
• Public Cloud: Infrastructure owned and operated by a third-party CSP and shared with multiple organizations.
• Private Cloud: Dedicated infrastructure used exclusively by a single business or organization for strict compliance or security.
• Hybrid Cloud: Combines public and private clouds, allowing data and apps to be shared between them.
• Multi-Cloud: Using two or more cloud service providers simultaneously to avoid vendor lock-in or leverage specific tools.

Applications
• Web & Mobile Applications: Hosting high-traffic websites, APIs, and mobile backends with automatic horizontal scaling and load balancing.
• Data Analytics & Big Data: Processing massive datasets using distributed computing frameworks and cloud-native databases.
• Artificial Intelligence & Machine Learning: Training heavy ML models on demand using specialized cloud GPUs and TPUs.
• Disaster Recovery & Backup: Maintaining multi-region data replicas and automated failovers to guarantee business continuity.
• Enterprise Software (SaaS): Delivering business solutions like enterprise resource planning (ERP), customer relationship management (CRM), and remote collaboration tools.