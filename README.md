# Snowman System - User and Admin Management

> 🇧🇷 Leia este documento em [Português](README.pt-br.md)

Este projeto é uma aplicação web para gerenciar usuários e administradores (managers), implementado com Spring Boot no backend e HTML/CSS/JavaScript no frontend, oferecendo funcionalidades básicas de CRUD (Create, Read, Update, Delete).

## Features

* **User Management**:

  * Register, edit, and delete users.
  * Detailed listing of all registered users.
  * View individual user information.

* **Admin (Manager) Management**:

  * Register and manage administrators.
  * Permission control for specific actions like deleting or updating users.

* **Action Tracking**:

  * Logs of actions performed by admins on users, such as updates and deletions.

* **Database**:

  * Relational modeling implemented with MySQL.
  * Relationships between admins and users for action tracking.

* **Responsiveness and Usability**:

  * Functional and user-friendly web interface to interact with the system.
  * SQL scripts for inserting, updating, and deleting records.

## Technologies Used

**Backend**:

* **Spring Boot**: Framework for building REST APIs.
* **Hibernate/JPA**: Data persistence and object-relational mapping.
* **MySQL**: Relational database.

**Frontend**:

* **HTML/CSS/JavaScript**: Building the user interface.
* **Fetch API**: Asynchronous communication with the backend.

**Git**:

* **Version control** and collaborative development.

## Requirements

* **JDK 21** or higher.
* **MySQL** (running locally).
* **Maven** (for backend project management).

## How to Run the Project

**Assuming:**

* You're using JDK21
* You're using CMD as your terminal
* You have MySQL running locally
* You have git commands added in your Path

### 1. Clone the Repository

Clone the repository to your local machine:

```bash
git clone https://github.com/KCR781/Snowman-ERP
```

```bash
cd Snowman-ERP
```

### 2. Configure the Database

Certifique-se de que o MySQL está instalado e em execução localmente. Crie o banco de dados `snowman_db` e execute o script SQL em `db/dump_snowman.sql` para popular as tabelas.

### 3. Run the Backend

Package the application as an executable JAR

```bash
mvn clean package
```

### 4. Run it in a New Window

After packing it up, execute the following:

```bash
start "SnowmanApp" cmd /k java -jar target\Snowman-0.0.1-SNAPSHOT.jar > output.log
```

### 5. Open the Frontend

Abra o arquivo `index.html` localizado em `\Snowman-ERP\src\main\resources\static` ou em um servidor local via bash:

```bash
start http://localhost:8080/index.html
```
