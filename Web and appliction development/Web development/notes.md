            WEB DEVELOPMENT
Web development is the process of designing, building, testing, deploying and maintaining websites and web applications that operate through web browsers and internet technologies.
A website is generally a collection of related web pages, while a web application provides interactive functionality and performs tasks for users.
  Main categories
Frontend development: Development of the user-facing part of a website or application.
Backend development: Development of the server-side logic, data processing, authentication and application operations.
Full-stack development: Combines frontend and backend development.
Web design: Focuses on visual appearance, layout, usability and user experience.
  Main objectives
- Build interactive websites and applications.
- Present information in an organized way.
- Enable communication between users and servers.
- Store and process information.
- Automate online operations.
- Provide secure and accessible user experiences.
- Integrate external services through APIs.
  Common applications
- Personal and professional websites.
- E-commerce platforms.
- Educational platforms.
- Business management systems.
- Social networking applications.
- Online banking systems.
- Engineering dashboards.
- IoT monitoring platforms.
- Portfolio and content management systems.

 How the Web Works
The World Wide Web is a system of interconnected resources accessed through the internet.
  Main components
Client: A device or application that requests web resources, usually a browser.
Web browser: Software that retrieves, interprets and displays web content.
Examples: Chrome, Firefox, Edge and Safari.
Web server: A system that receives requests and returns web resources or application responses.
Examples: Nginx, Apache and Caddy.
Domain name: A human-readable address used to access a website.
Example: example.com.
IP address: A numerical address identifying a network interface.
DNS: Domain Name System translates domain names into IP addresses.
HTTP/HTTPS: Protocols used for communication between web clients and servers.
  Basic request-response process
1. A user enters a website address.
2. The browser resolves the domain through DNS.
3. The browser establishes a network connection to the server.
4. The browser sends an HTTP request.
5. The server processes the request.
6. The server returns an HTTP response.
7. The browser interprets HTML, CSS and JavaScript.
8. The browser displays the page.
  HTTP request methods
- GET — retrieves information.
- POST — submits information or creates a resource.
- PUT — replaces a resource.
- PATCH — partially updates a resource.
- DELETE — deletes a resource.
- HEAD — retrieves response headers without the response body.
- OPTIONS — describes communication options supported by a resource.
  HTTP status codes
1xx — Informational: Request processing information.
2xx — Success:
- 200 OK.
- 201 Created.
- 204 No Content.
3xx — Redirection:
- 301 Moved Permanently.
- 302 Found.
- 304 Not Modified.
4xx — Client errors:
- 400 Bad Request.
- 401 Unauthorized.
- 403 Forbidden.
- 404 Not Found.
- 429 Too Many Requests.
5xx — Server errors:
- 500 Internal Server Error.
- 502 Bad Gateway.
- 503 Service Unavailable.
- 504 Gateway Timeout.

 HTML — HyperText Markup Language
HTML is the standard markup language used to define the structure and content of web pages.
It describes elements such as headings, paragraphs, images, links, tables, forms and multimedia.
HTML is a markup language, not a programming language.
  Basic HTML structure
An HTML document normally contains:
- DOCTYPE declaration.
- html element.
- head element.
- body element.
 Important HTML elements
Headings: Define content headings.
"<h1>" to "<h6>".
Paragraphs: Display text.
"<p>".
Links: Connect web pages and resources.
"<a>".
Images: Display pictures.
"<img>".
Lists:
- "<ul>" — unordered list.
- "<ol>" — ordered list.
- "<li>" — list item.
Tables: Organize information into rows and columns.
"<table>", "<tr>", "<th>", "<td>".
Forms: Collect user input.
"<form>", "<input>", "<textarea>", "<select>", "<button>".
Containers:
- "<div>" — general block container.
- "<span>" — general inline container.
 Semantic HTML
Semantic HTML uses elements that describe the meaning and purpose of content.
Examples:
- "<header>" — introductory content.
- "<nav>" — navigation links.
- "<main>" — primary page content.
- "<section>" — thematic content grouping.
- "<article>" — independent content.
- "<aside>" — complementary content.
- "<footer>" — footer information.
Benefits:
- Improves accessibility.
- Makes code easier to understand.
- Helps search engines interpret page structure.
- Improves maintainability.
 HTML attributes
Attributes provide additional information about HTML elements.
Examples:
- "id" — unique element identifier.
- "class" — reusable element classification.
- "href" — link destination.
- "src" — resource location.
- "alt" — alternative image description.
- "type" — input or element type.
- "name" — form field name.
- "placeholder" — input guidance.
 HTML forms
Forms collect information from users and submit it to a server or application.
 Common input types:
- text.
- password.
- email.
- number.
- date.
- checkbox.
- radio.
- file.
- submit.
 Important form concepts:
- Required fields.
- Labels.
- Input validation.
- Form submission.
- GET and POST methods.
HTML validation improves user input quality but must be reinforced by server-side validation.

 CSS — Cascading Style Sheets
CSS is a stylesheet language used to control the appearance, layout and presentation of HTML documents.
It determines how web pages look across different devices and screen sizes.
  Main CSS responsibilities
- Colours.
- Typography.
- Spacing.
- Borders.
- Backgrounds.
- Layout.
- Animations.
- Responsive design.
  CSS application methods
Inline CSS: Applied directly to an HTML element using the style attribute.
Internal CSS: Written inside a "<style>" element in the HTML document.
External CSS: Stored in a separate ".css" file and linked to the HTML document.
External CSS is generally preferred for larger projects because it improves organization and reuse.
 CSS selectors
- Element selector — selects HTML elements.
- Class selector — selects elements by class.
- ID selector — selects an element by ID.
- Universal selector — selects all elements.
- Attribute selector — selects elements based on attributes.
- Pseudo-class — selects elements based on a state.
- Pseudo-element — styles a particular part of an element.
 CSS box model
Every normal CSS box consists of:
1. Content — actual element content.
2. Padding — space around the content.
3. Border — boundary surrounding padding and content.
4. Margin — space outside the border.
The "box-sizing: border-box" property makes width and height calculations easier because padding and borders are included in the declared dimensions.
 CSS layout systems
Normal flow: Default browser arrangement of elements.
Flexbox: One-dimensional layout system for arranging elements in rows or columns.
 Important properties:
- display: flex.
- flex-direction.
- justify-content.
- align-items.
- flex-wrap.
- gap.
CSS Grid: Two-dimensional layout system for arranging content in rows and columns.
 Important properties:
- display: grid.
- grid-template-columns.
- grid-template-rows.
- gap.
- grid-column.
- grid-row.
Positioning:
- static.
- relative.
- absolute.
- fixed.
- sticky.
 Responsive web design
Responsive design allows a website to adapt to different screen sizes and devices.
 Important techniques:
- Flexible layouts.
- Relative units.
- Media queries.
- Responsive images.
- Flexbox.
- CSS Grid.
- Mobile-first design.
 Common units:
- px — pixels.
- % — percentage.
- em — relative to the relevant font size.
- rem — relative to the root font size.
- vw — viewport width.
- vh — viewport height.
 CSS animations and transitions
Transitions smoothly change CSS properties between states.
Animations use keyframes to define more complex sequences of visual changes.
Applications:
- Hover effects.
- Loading indicators.
- Interactive buttons.
- Page transitions.
- Visual feedback.

 JavaScript — Web Programming Language
JavaScript is a programming language used to add interactivity and dynamic functionality to web applications.
It runs in browsers and can also run on servers using environments such as Node.js.
  Main applications
- Form validation.
- Interactive navigation.
- Dynamic content updates.
- Animations.
- API communication.
- Data processing.
- Real-time applications.
- Server-side application development.
 JavaScript fundamentals
Variables: Store data using "let", "const" and, in older code, "var".
Data types:
- String.
- Number.
- Boolean.
- Undefined.
- Null.
- BigInt.
- Symbol.
- Object.
Operators:
- Arithmetic.
- Assignment.
- Comparison.
- Logical.
- Conditional.
Control structures:
- if/else.
- switch.
- for.
- while.
- do/while.
Functions: Reusable blocks of code that perform operations.
Arrays: Ordered collections of values.
Objects: Collections of properties and methods.
Classes: Templates used to create objects with shared structure and behavior.
 DOM manipulation
The Document Object Model represents an HTML document as a structured object tree.
JavaScript can access and modify the DOM.
 Applications:
- Changing text.
- Adding elements.
- Removing elements.
- Changing styles.
- Responding to user interactions.
 Events
Events are actions or occurrences detected by the browser.
Examples:
- click.
- submit.
- input.
- change.
- keydown.
- mouseover.
- load.
Event listeners allow JavaScript to respond to these events.
 Asynchronous JavaScript
Asynchronous programming allows operations such as network requests and file operations to proceed without unnecessarily blocking the main execution flow.
 Important concepts:
- Callbacks.
- Promises.
- async/await.
- Event loop.
- Fetch API.
 JSON
JavaScript Object Notation is a lightweight data format used for exchanging information between applications.
It is widely used in web APIs.
 JavaScript modules
Modules divide code into reusable files.
 Important concepts:
- export.
- import.
- Named exports.
- Default exports.

 Frontend Development
Frontend development focuses on the part of a website or application that users interact with.
  Main technologies
- HTML — structure.
- CSS — presentation.
- JavaScript — functionality.
  Frontend responsibilities
- User interface design.
- Navigation.
- Forms.
- Interactive components.
- Responsive layouts.
- Data presentation.
- Browser-side validation.
- API integration.
  Component-based development
A component is a reusable piece of a user interface.
Examples:
- Navigation bar.
- Header.
- Footer.
- Sidebar.
- Search bar.
- Product card.
- Login form.
- Dashboard widget.
Component-based development improves code reuse and maintainability.
  Frontend frameworks and libraries
React: A JavaScript library for building component-based user interfaces.
Vue: A progressive JavaScript framework for building interactive interfaces.
Angular: A comprehensive frontend framework.
Svelte: A framework that compiles components into efficient JavaScript.
Next.js: A React framework supporting server rendering, static generation and full-stack application features.
  State management
State represents information that can change while an application is running.
Examples:
- Logged-in user.
- Shopping cart contents.
- Selected theme.
- Search results.
- Form input.
State management ensures that changes in application data are reflected in the user interface.
  Routing
Routing determines which page or view is displayed for a particular URL.
Examples:
- "/"
- "/about"
- "/products"
- "/dashboard"
- "/settings"

 Backend Development
Backend development handles server-side operations that users do not directly see.
  Main responsibilities
- Processing requests.
- Implementing business logic.
- Authentication and authorization.
- Database operations.
- API development.
- File processing.
- Sending responses.
- Integrating external services.
  Backend programming languages
- JavaScript / TypeScript using Node.js.
- Python.
- PHP.
- Java.
- C#.
- Go.
- Ruby.
  Backend frameworks
Node.js: A JavaScript runtime for executing JavaScript outside the browser.
Express.js: A lightweight Node.js web framework.
NestJS: A structured Node.js framework commonly using TypeScript.
Django: A Python framework providing many built-in web development features.
Flask: A lightweight Python web framework.
FastAPI: A Python framework for building APIs, with automatic documentation support.
Laravel: A PHP web framework.
Spring Boot: A Java framework for building applications and services.
ASP.NET Core: A cross-platform framework for building web applications and APIs with C#.
  Server-side request processing
A typical backend request involves:
1. Receiving a request.
2. Routing the request.
3. Validating input.
4. Authenticating and authorizing the user.
5. Executing business logic.
6. Accessing a database or external service.
7. Generating a response.
8. Returning the response.

 Databases in Web Development
A database stores, organizes, retrieves and manages application information.
  Relational databases
Store data in structured tables with rows and columns.
Examples:
- PostgreSQL.
- MySQL.
- MariaDB.
- Microsoft SQL Server.
- SQLite.
Important concepts:
- Tables.
- Rows.
- Columns.
- Primary keys.
- Foreign keys.
- Relationships.
- Constraints.
- Transactions.
- Indexes.
- SQL queries.
  NoSQL databases
Support data models beyond traditional relational tables.
Types:
- Document databases — MongoDB.
- Key-value databases — Redis.
- Wide-column databases — Cassandra.
- Graph databases — Neo4j.
Database operations: CRUD
- Create — insert new information.
- Read — retrieve information.
- Update — modify information.
- Delete — remove information.
  Database normalization
Normalization organizes relational database structures to reduce unnecessary duplication and improve data integrity.
 Important normal forms:
- First Normal Form (1NF).
- Second Normal Form (2NF).
- Third Normal Form (3NF).
- Boyce-Codd Normal Form (BCNF).
  Database indexes
Indexes improve data retrieval performance by providing more efficient ways to locate records.
However, they consume storage and may increase the cost of write operations.
  Database transactions
Transactions group database operations into logical units.
ACID properties:
- Atomicity.
- Consistency.
- Isolation.
- Durability.

 APIs and Web Services
An API (Application Programming Interface) defines how software systems communicate and exchange data.
Web APIs allow applications to request and exchange information over networks.
  REST API
REST is an architectural style commonly used for web APIs.
 Important principles:
- Resource-based URLs.
- Standard HTTP methods.
- Stateless communication.
- Appropriate status codes.
- Representations such as JSON.
Example endpoints:
- GET "/api/products"
- GET "/api/products/10"
- POST "/api/products"
- PATCH "/api/products/10"
- DELETE "/api/products/10"
  GraphQL
GraphQL is a query language and runtime for APIs.
It allows clients to request specific data fields and supports queries, mutations and subscriptions.
  WebSockets
WebSockets provide persistent, two-way communication between a client and server.
Applications:
- Chat applications.
- Live dashboards.
- Multiplayer games.
- Real-time notifications.
- Device monitoring.
  Webhooks
Webhooks allow one system to notify another system when a particular event occurs.
Example: A payment provider sends a notification to an application after a successful transaction.
  API authentication
Common approaches:
- API keys.
- Session-based authentication.
- Token-based authentication.
- OAuth 2.0.
- OpenID Connect.

 Authentication and Authorization
Authentication verifies the identity of a user.
Authorization determines what an authenticated user is allowed to do.
  Authentication methods
- Username and password.
- Multi-factor authentication.
- One-time passwords.
- Passkeys.
- External identity providers.
- Biometric authentication through supported platform mechanisms.
  Session-based authentication
The server maintains a session and the browser stores a session identifier, commonly in a secure cookie.
  Token-based authentication
A client presents a token when making authorized requests.
  JSON Web Token (JWT)
JWT is a token format used to represent claims between systems.
It generally consists of:
1. Header.
2. Payload.
3. Signature.
A signed JWT is not automatically encrypted. Sensitive information should not be placed in a readable token payload.
  Role-Based Access Control (RBAC)
RBAC assigns permissions according to user roles.
Example:
- Administrator.
- Editor.
- Customer.
- Viewer.
  Password security
Passwords should be stored using secure password hashing algorithms such as Argon2id or bcrypt, with appropriate parameters and salts.
Never store plaintext passwords.

 Web Security
Web security protects websites, applications, servers and users from attacks and unauthorized access.
  Common web vulnerabilities
SQL Injection: Attackers manipulate database queries through untrusted input.
Prevention:
- Parameterized queries.
- Safe ORM operations.
- Input validation.
- Least-privilege database accounts.
Cross-Site Scripting (XSS): Malicious scripts are injected into pages viewed by other users.
Prevention:
- Context-aware output encoding.
- Safe DOM APIs.
- Content Security Policy.
- Careful handling of untrusted HTML.
Cross-Site Request Forgery (CSRF): Tricks an authenticated browser into submitting an unwanted request.
Prevention:
- CSRF tokens.
- SameSite cookies.
- Origin checks.
- Appropriate request validation.
Broken access control: Users access resources or actions they should not be permitted to use.
Prevention:
- Server-side authorization.
- Least privilege.
- Object-level access checks.
Server-Side Request Forgery (SSRF): Tricks a server into making unintended requests to internal or external resources.
Prevention:
- Restrict outbound requests.
- Validate destinations.
- Block access to internal metadata services where appropriate.
- Use network segmentation.
Insecure file uploads: Allows dangerous or unexpected files to be uploaded or executed.
Prevention:
- File type and size validation.
- Safe file storage.
- Malware scanning where appropriate.
- Never trust the supplied filename or MIME type alone.
Additional security measures
- HTTPS and TLS.
- Secure cookies.
- Rate limiting.
- Security headers.
- Dependency updates.
- Logging and monitoring.
- Secret management.
- Regular security testing.

 Web Servers and Hosting
A web server receives HTTP requests and delivers web resources or forwards requests to application servers.
  Common web servers
Nginx: High-performance web server and reverse proxy.
Apache HTTP Server: Widely used configurable web server.
Caddy: Web server with convenient automatic HTTPS support.
  Hosting types
Shared hosting: Multiple websites share a server environment.
VPS hosting: Provides a virtual private server with allocated resources.
Dedicated hosting: A physical server is dedicated to one customer.
Cloud hosting: Uses scalable cloud infrastructure.
Static hosting: Serves prebuilt files such as HTML, CSS, JavaScript and images.
Platform hosting: Provides managed application deployment and runtime environments.
  Domain names and DNS
DNS records commonly include:
- A — maps a domain to an IPv4 address.
- AAAA — maps a domain to an IPv6 address.
- CNAME — aliases one domain name to another.
- MX — identifies mail servers.
- TXT — stores text information, commonly used for domain verification and email security.
- NS — identifies authoritative nameservers.
  SSL/TLS certificates
TLS provides encryption and authentication for network connections.
HTTPS is HTTP communication protected by TLS.
Certificates help browsers verify the identity of the server.

 Version Control and Web Development Workflow
Version control tracks changes made to project files.
Git is one of the most widely used version control systems.
GitHub, GitLab and Bitbucket provide hosted Git repositories and collaboration features.
  Important Git concepts
- Repository.
- Commit.
- Branch.
- Merge.
- Remote.
- Clone.
- Pull.
- Push.
- Pull request.
- Merge conflict.
  Common development workflow
1. Create or clone a repository.
2. Create a development branch.
3. Write code.
4. Test changes.
5. Commit changes.
6. Push the branch.
7. Open a pull request.
8. Review changes.
9. Merge approved changes.
10. Deploy the application.
  CI/CD
Continuous Integration automatically checks code changes through processes such as building and testing.
Continuous Delivery keeps software ready for release.
Continuous Deployment automatically releases approved changes into production.
 Tools:
- GitHub Actions.
- GitLab CI/CD.
- Jenkins.
- CircleCI.

 Web Performance Optimization
Web performance affects loading time, responsiveness, reliability and user experience.
  Important optimization techniques
Image optimization:
- Use suitable dimensions.
- Compress images.
- Prefer modern formats such as WebP or AVIF where supported.
- Use responsive images.
- Lazy-load non-critical images.
Code optimization:
- Minify CSS and JavaScript.
- Remove unused code.
- Split application bundles.
- Use browser caching.
- Avoid unnecessary dependencies.
Network optimization:
- Use a Content Delivery Network (CDN).
- Enable compression.
- Reduce unnecessary requests.
- Use efficient caching policies.
- Optimize API responses.
  Core Web Vitals
Important Google performance measurements:
- LCP — Largest Contentful Paint; loading performance.
- INP — Interaction to Next Paint; responsiveness.
- CLS — Cumulative Layout Shift; visual stability.
These metrics help assess real user experience.

 Responsive Design and Accessibility
Responsive design ensures that websites adapt to different screen sizes.
Accessibility ensures that people with different abilities can use web applications.
  Accessibility principles
Perceivable: Information must be available through appropriate senses.
Operable: Users must be able to navigate and operate the interface.
Understandable: Content and operation should be clear.
Robust: Content should work with a wide range of browsers and assistive technologies.
These principles are commonly summarized as POUR.
  Important accessibility practices
- Use semantic HTML.
- Provide image alternative text.
- Label form fields.
- Ensure keyboard accessibility.
- Maintain sufficient colour contrast.
- Use clear navigation.
- Avoid relying only on colour to communicate information.
- Provide meaningful error messages.
  WCAG
Web Content Accessibility Guidelines provide internationally recognized recommendations for accessible web content.

 Web Application Architecture
Architecture defines how the components of a web application are structured and communicate.
  Monolithic architecture
The application is built and deployed as one main unit.
Advantages:
- Simpler initial development.
- Easier deployment for small applications.
- Straightforward testing in some cases.
Limitations:
- Can become difficult to maintain as complexity grows.
- Components are less independently deployable.
 Three-tier architecture
1. Presentation layer — frontend.
2. Application layer — backend logic.
3. Data layer — database.
  Microservices architecture
An application is divided into smaller, independently deployable services.
Advantages:
- Independent deployment.
- Independent scaling.
- Technology flexibility.
Limitations:
- More operational complexity.
- Network communication challenges.
- Distributed data consistency concerns.
- More demanding monitoring.
  Serverless architecture
Uses managed infrastructure and event-driven functions to execute application logic.
 Progressive Web Applications (PWAs)
PWAs use web technologies to provide app-like experiences.
Features may include:
- Installability.
- Offline capabilities.
- Caching.
- Responsive interfaces.
- Push notifications where supported.

 Testing and Debugging
Testing ensures that applications behave as expected and helps detect errors before deployment.
  Types of testing
Unit testing: Tests individual functions or components.
Integration testing: Tests interactions between components.
System testing: Tests the complete application.
End-to-end testing: Tests real user workflows.
Performance testing: Evaluates speed, capacity and responsiveness.
Security testing: Identifies vulnerabilities.
Usability testing: Evaluates user experience.
  Common tools
- Jest.
- Vitest.
- Pytest.
- Playwright.
- Cypress.
- Selenium.
- Postman.
- Lighthouse.
- Browser developer tools.
  Debugging techniques
- Read error messages.
- Use browser developer tools.
- Inspect network requests.
- Examine server logs.
- Use breakpoints.
- Test individual components.
- Reproduce errors consistently.

 Deployment and Web Application Maintenance
Deployment is the process of making an application available in its intended environment.
  Deployment environments
Development: Used while building the application.
Testing/Staging: Used for validation before production.
Production: The live environment used by actual users.
 Deployment methods
- Manual deployment.
- Automated CI/CD deployment.
- Container-based deployment.
- Platform-as-a-Service deployment.
- Serverless deployment.
 Maintenance responsibilities
- Bug fixes.
- Security updates.
- Database maintenance.
- Performance optimization.
- Backups.
- Monitoring.
- Dependency management.
- Feature updates.

 Search Engine Optimization (SEO)
SEO improves the visibility of websites in search engine results.
  Important SEO practices
- Meaningful page titles.
- Descriptive meta descriptions.
- Semantic HTML.
- Useful original content.
- Descriptive URLs.
- Image alternative text.
- Mobile-friendly design.
- Fast page loading.
- Internal linking.
- Structured data where appropriate.
  Technical SEO
- XML sitemaps.
- Robots.txt.
- Canonical URLs.
- Redirect management.
- HTTPS.
- Crawlability.
- Indexability.

 Modern Web Development Technologies
  TypeScript
A programming language built on JavaScript that adds static type checking.
 Benefits:
- Better error detection.
- Improved editor support.
- Easier maintenance of large codebases.
- More explicit data structures.
 Build tools
- Vite.
- Webpack.
- Rollup.
- esbuild.
- Parcel.
These tools process, bundle and optimize application code.
 CSS frameworks
- Bootstrap.
- Tailwind CSS.
- Bulma.
They provide reusable styling utilities or components.
 UI component libraries
- Material UI.
- Ant Design.
- shadcn/ui.
They provide reusable interface components.
 Backend technologies
- Node.js.
- Express.
- Django.
- Flask.
- FastAPI.
- Laravel.
- Spring Boot.
- ASP.NET Core.

 Important Web Development Concepts and Formulas
  Conversion rate
Conversion Rate = (Number of Conversions / Total Visitors) × 100%
  Bounce rate
Bounce rate is the percentage of sessions classified as non-engaged under the analytics platform's definition.
  Data transfer time
Approximate transfer time = Data size in bits / Effective throughput in bits per second.
  API success rate
Success Rate = (Successful Requests / Total Requests) × 100%
  Website availability
Availability = Uptime / (Uptime + Downtime) × 100%
  Page load performance
Page loading performance is evaluated using metrics such as LCP, INP and CLS rather than relying on one universal loading-time formula.

 Best Practices
1. Write clean, readable and maintainable code.
2. Separate HTML, CSS and JavaScript responsibilities.
3. Use semantic HTML.
4. Design for mobile devices.
5. Validate user input on both client and server.
6. Use parameterized database queries.
7. Never store plaintext passwords.
8. Protect authentication sessions and tokens.
9. Use HTTPS.
10. Keep dependencies updated.
11. Use Git for version control.
12. Test before deploying.
13. Optimize images and other assets.
14. Build reusable components.
15. Document APIs and important application logic.
16. Protect environment variables and secrets.
17. Implement proper error handling.
18. Monitor production applications.
19. Follow accessibility standards.
20. Back up important application data regularly.