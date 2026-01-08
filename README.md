# Employee Management System (EMS) Premium Edition 🚀

A modern, high-end Spring MVC application for managing employee directories with a sleek, premium dark-mode interface.

## 💎 Features

- **Full CRUD Operations**: Add, View, Update, and Delete employee records.
- **Premium UI/UX**: Glassmorphic dark-mode design using **Plus Jakarta Sans** and **FontAwesome 6** icons.
- **Dynamic Routing**: Simplified navigation with root context path.
- **Robust Backend**: Refactored `com.ems` package structure with Hibernate ORM and MySQL integration.
- **Responsive Design**: Optimized for all screen sizes, from desktop to mobile.

## 🛠️ Technology Stack

- **Framework**: Spring MVC (version 5.x)
- **Persistence**: Spring ORM + Hibernate 5
- **Database**: MySQL 8.0+
- **Build Tool**: Maven
- **Server**: Embedded Jetty Plugin (via `mvn jetty:run`)
- **Frontend**: JSP, Vanilla CSS (Custom Design System), FontAwesome 6

## 🚀 Getting Started

### Prerequisites

- Java Development Kit (JDK 8 or higher)
- Apache Maven
- MySQL Server (running on localhost:3306)

### Database Setup

The application uses a database named `spring`. Ensure it exists and update the credentials in `src/main/webapp/WEB-INF/spring-servlet.xml` if necessary:

```xml
<property name="url" value="jdbc:mysql://localhost:3306/spring?allowPublicKeyRetrieval=true&amp;useSSL=false" />
<property name="username" value="root" />
<property name="password" value="YOUR_PASSWORD" />
```

### Running the Application

1. **Clone the repository** (if applicable).
2. **Build the project**:
   ```bash
   mvn clean install
   ```
3. **Run with Jetty**:
   ```bash
   mvn jetty:run
   ```
4. **Access the application**:
   Open [http://localhost:8080/](http://localhost:8080/) in your browser.

## 📂 Project Structure

- `src/main/java/com/ems`:
  - `controller`: Web request handling logic.
  - `dao`: Data access layer using HibernateTemplate.
  - `model`: JPA/Hibernate entity classes.
- `src/main/webapp/WEB-INF/views`: Premium JSP templates.
- `src/main/webapp/resources/css`: Modern CSS design system.
- `src/main/webapp/WEB-INF/web.xml`: Deployment descriptor (upgraded to Servlet 3.1).
- `src/main/webapp/WEB-INF/spring-servlet.xml`: Spring and Hibernate configuration.

## 🎨 UI Aesthetics

The application features:
- **Glassmorphism**: Subtle blur effects and semi-transparent backgrounds.
- **Deep Palette**: Midnight Indigo and Slate colors for a professional look.
- **Interactive Elements**: Smooth transitions, hover effects, and crisp vector icons.

---
