> 🇧🇷 Leia este documento em [Português](README.pt-br.md)


# Snowman System - User and Admin Management

This project is a web application developed to manage users and administrators (managers). It was implemented using Spring Boot for the backend and HTML/CSS/JavaScript for the frontend, offering basic CRUD (Create, Read, Update, Delete) functionality.

## Features

- **User Management**:
  - Register, edit, and delete users.
  - Detailed listing of all registered users.
  - View individual user information.

- **Admin (Manager) Management**:
  - Register and manage administrators.
  - Permission control for specific actions like deleting or updating users.

- **Action Tracking**:
  - Logs of actions performed by admins on users, such as updates and deletions.

- **Database**:
  - Relational modeling implemented with MySQL.
  - Relationships between admins and users for action tracking.

- **Responsiveness and Usability**:
  - Functional and user-friendly web interface to interact with the system.
  - SQL scripts for inserting, updating, and deleting records.

## Technologies Used

**Backend**:
- **Spring Boot**: Framework for building REST APIs.
- **Hibernate/JPA**: Data persistence and object-relational mapping.
- **MySQL**: Relational database.

**Frontend**:
- **HTML/CSS/JavaScript**: Building the user interface.
- **Fetch API**: Asynchronous communication with the backend.

**Docker**:
- **MySQL database container**, configured via Docker Compose.

**Git**:
- **Version control** and collaborative development.

## Requirements

- **JDK 21** or higher.
- **Docker** (for the database).
- **Maven** (for backend project management).

## How to Run the Project

### 1. Clone the Repository

Clone the repository to your local machine:

```bash
git clone https://github.com/KCR781/Snowman-ERP
```

```bash
cd Snowman-ERP
```

### 2. Set Up the Database

Make sure Docker is installed and running. Then set up the database:

```bash
docker-compose up -d
```

### 3. Run the Backend

Go to the backend directory and run the Spring Boot project:

```bash
mvn spring-boot:run
```

### 4. Open the Frontend

Open the `index.html` file located in `\Snowman-ERP2\src\main
esources\static` in a local server via bash:

```bash
start http://localhost:8080/index.html
```
