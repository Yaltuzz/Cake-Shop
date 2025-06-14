# CakeStore – Microservices-based Cake Store (POC)

CakeStore is a Proof of Concept microservices application showcasing modern design patterns like CQRS, Event-driven Architecture, Outbox Pattern, API Gateway, and Polyglot Persistence, built with .NET Core and Python.

---

## 🚀 Features

- Product management (cakes CRUD) in `ProductService`  
- Cake catalog with categories and tags in `CatalogService`  
- Fast read-side queries with `ReadModelService` (CQRS)  
- User authentication and role management in `UserService`  
- Centralized API Gateway with routing and JWT authentication  
- Asynchronous communication via RabbitMQ  
- Fully containerized with Docker and docker-compose  

---

## 🧱 Architecture

The system consists of multiple independent microservices, each with its own database technology optimized for its needs (PostgreSQL, MongoDB, Redis). Key patterns used:

- **CQRS** – separate command and query responsibilities  
- **Outbox Pattern** – reliable event publishing with transactional consistency  
- **Event-driven Architecture** – loose coupling through asynchronous events  
- **API Gateway** – single entry point with authentication and routing  
- **Polyglot Persistence** – different databases per service  
- **Idempotent Consumers** – safe event processing  

---

## 🛠️ Technologies

- Backend: .NET Core, Python (FastAPI for API Gateway)  
- Databases: PostgreSQL, MongoDB, Redis  
- Messaging: RabbitMQ  
- Frontend: React.js
- Containerization: Docker, docker-compose  

---

## 📦 Getting Started

1. Clone the repository  
2. Run `docker-compose up --build`  
3. Access the API Gateway at `http://localhost:8080`  

---

## 📚 Documentation

Detailed architecture and design docs can be found in `docs/architecture.md`.

---

## 📬 Contact

Questions or feedback? Feel free to open an issue or contact me directly!

