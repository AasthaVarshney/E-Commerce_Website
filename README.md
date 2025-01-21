# E-Commerce Website
This repository hosts the code for a Java e-commerce Website. This application allows users to browse products, manage their carts, and securely place orders online. The project follows a structured MVC architecture, ensuring scalability and maintainability. Built using Java Servlets, JSP, and MySQL, it provides a seamless shopping experience.
## Features
- Register new account
- Login/Logout
- User Profile
- Add to Cart
- Payment Through Credit Card
## Technology Stack
### Frontend
- JSP (JavaServer Pages)
- HTML5
- CSS3
- JavaScript
- Bootstrap 4.5.2
### Backend
-  Java Model classes
- Java DAO classes
- Java Servlets
- JDBC
- MySQL 8.0
### Tools & Libraries
- Maven
- jQuery
- Font Awesome
- MySQL Connector/J
### Prerequisites
- JDK 11 or higher
- Apache Tomcat 9.0 or higher
- MySQL 8.0
- Maven 3.x
- IDE (Eclipse/IntelliJ IDEA)
## Database Setup

# 1. Create a new MySQL database:
    - See schema.sql
# 2.Create the required tables:
    - See schema.sql
## Installation & Setup
# 1.Clone the repository:
    git clone https://github.com/Himanshu2k24/E-Commerce_Web.git 
# 2.Configure database connection:
     -  Open src/main/java/com/user/dao/UserDao.java 
     -  Update the database URL, username, and password in other DAO classes
# 3. Build the project:
     mvn clean install
# 4. Deploy to Tomcat:
    -  Copy the WAR file target\user-web-app.war to Tomcat's webapps directory
    -  Start Tomcat server

# 5. Access the application:
    http://localhost:8080/user-web-app 

## Project Structure

   E- Commerce Website

```   ├── src/
   │   ├── main/
   │   │   ├── java/
   │   │   │   ├── com/
   │   │   │   │   ├── controller/
   │   │   │   │   ├── Order/
   │   │   │   │   |  |___ model/
   │   │   │   │   |  |___ dao/
   │   │   │   │   |___ Product/
   │   │   │   │   |  |__ model/
   │   │   │   │   |  |__ dao/
   │   │   │   │   ├── User/
   │   │   │   │      |___ model/
   │   │   │   │      |___ dao/
   │   │   │   │   
   │   │   ├─── resources/
   │   │   ├─── webapp/
   │   │   │   ├── WEB-INF/
   │   │   │   │ └── web.xml
   │   │   │   ├── index.jsp
   │   │   │   ├── login.jsp
   │   │   │   ├── profile.jsp
   │   │   │   ├── register.jsp
   │   │   │   ├── styles.css
   │   │   │   └── scripts.js
   │   ├── test/
   │   │ └── java/
   ├── pom.xml
   └── README.md


![Image](https://github.com/user-attachments/assets/49432c78-48e7-4dc9-89d9-3cfa95db6302)
![Image](https://github.com/user-attachments/assets/a32f64b0-61c7-4e0c-a8c7-f72b7e5e480a)
![Image](https://github.com/user-attachments/assets/00441cc2-a11f-4e84-975f-80a4463ffa0a)
![Image](https://github.com/user-attachments/assets/68a98b70-51ed-4ddd-9f80-1a14d1bec14e)
![Image](https://github.com/user-attachments/assets/8f679a94-e821-464d-89a6-abae6dc86070)
![Image](https://github.com/user-attachments/assets/a2f33d01-f3ea-47e8-81ce-8552dfaf5a3c)
![Image](https://github.com/user-attachments/assets/b6973d73-e2cc-4d8d-9619-00e9ad10d46f)

![Image](https://github.com/user-attachments/assets/a446230d-f94f-412c-b323-b25131b6c326)
