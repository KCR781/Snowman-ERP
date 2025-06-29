# Snowman-ERP — User and Manager Management System

> 🇧🇷 Read this document in [Portuguese](README.md)

Snowman-ERP is a web application for managing users and administrators (managers), developed with **Spring Boot** on the backend and **HTML/CSS/JavaScript** on the frontend. The system offers complete CRUD functionalities, permission control, action tracking, and a user-friendly interface.

## Main Features

- **User Management:**
  - Register, edit, list, and delete users.
  - View individual user details.
- **Manager (Admin) Management:**
  - Register, edit, and delete managers.
  - Manage permissions for sensitive actions (user deletion/update).
- **Action Tracking:**
  - Detailed logs of manager actions on users (updates, deletions, etc).
- **Database:**
  - Relational modeling (MySQL or H2 for testing).
  - Relationship between managers and users for traceability.
- **Responsive Web Interface:**
  - Simple and functional frontend for system interaction.
  - SQL scripts for database creation and population.

## Main REST Endpoints

See the `leiame.txt` file for detailed usage examples of the endpoints.

- **Users:**
  - `POST /v1/users` — Create user (with managerId)
  - `GET /v1/users` — List all users
  - `GET /v1/users/{userId}` — Get user by ID
  - `PUT /v1/users/{userId}` — Update user
  - `DELETE /v1/users/{userId}` — Delete user
- **Managers:**
  - `GET /v1/managers/manager/{id}` — Get manager by ID
  - `POST /v1/managers/{managerId}/users` — Create user linked to manager
  - `DELETE /v1/managers/users/{userId}` — Delete user via manager

## Technologies Used

**Backend:**
- Spring Boot (REST API)
- Hibernate/JPA
- MySQL (production) / H2 (testing)

**Frontend:**
- HTML, CSS, JavaScript (Fetch API)

**Others:**
- Git (version control)
- Maven (dependency management)

## Requirements
- JDK 21 or higher
- MySQL running locally (or H2 for testing)
- Maven

## How to Run the Project

**Prerequisites:**
- JDK 21 installed
- MySQL running locally (or use H2 for testing)
- Git and Maven configured in your PATH

### 1. Clone the Repository

```bash
git clone https://github.com/KCR781/Snowman-ERP
cd Snowman-ERP
```

### 2. Run the Application

You can easily run the application using the included `iniciar.bat` script. This script:
- Accesses the `target` folder
- Runs the compiled JAR (`Snowman-0.0.1-SNAPSHOT.jar`)
- Waits a few seconds
- Automatically opens the system in your browser (`http://localhost:8080/`)
- Opens the H2 console (`http://localhost:8080/h2-console`)

**To run:**

```bat
iniciar.bat
```

> Alternatively, you can manually run the JAR as previously instructed, but the script makes the process easier.

### 3. Access the Frontend

The frontend will be opened automatically by the script, but you can also access it manually:
- `src/main/resources/static/index.html` (open in your browser)
- Or use a local server of your choice

---

**Notes:**
- The project no longer depends on Docker (see `REMOVIDO_DOCKER.md`).
- For usage examples of the endpoints and details on authentication/H2 database access, see the `leiame.txt` file.

**Assumptions:**
- You are using JDK 21
- You are using CMD or PowerShell as your terminal
- MySQL is running locally
- Git commands are added to your PATH
