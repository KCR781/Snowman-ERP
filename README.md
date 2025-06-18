# Snowman System - User and Admin Management
> 🇧🇷 Leia este documento em [Português](README.pt-br.md)

This project is a web application for managing users and administrators (managers), implemented with Spring Boot on the backend and HTML/CSS/JavaScript on the frontend, offering basic CRUD (Create, Read, Update, Delete) functionalities.
 
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

**Assumptions:**
- You are using JDK 21
- You are using CMD or PowerShell as your terminal
- You have MySQL running locally
- Git commands are added to your PATH

### 1. Clone the Repository

```bash
git clone https://github.com/KCR781/Snowman-ERP
cd Snowman-ERP
```

### 2. Configure the Database

Make sure MySQL is installed and running locally. Create the database `snowman_db` and run the scripts in this order:

1. `docs/script.sql` (creates tables and procedures)
2. `docs/Mock data.sql` (inserts sample data)

### 3. Build the Backend

Package the application as an executable JAR:

```bash
mvn clean package
```

### 4. Run the Application in a New Window

To run the application in a new PowerShell window while keeping your current terminal free, use:

```powershell
start "SnowmanApp" cmd /k java -jar target\Snowman-0.0.1-SNAPSHOT.jar > output.log
```

This will open a new PowerShell window and run the app there. To stop the app, close the new window.

### 5. Open the Frontend

Open the file `frontend/index.html` in your browser or use a local server.

---

If you have any questions, check the documentation or open an issue.
