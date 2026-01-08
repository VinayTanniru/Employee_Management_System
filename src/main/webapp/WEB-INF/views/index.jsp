<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration | EMS Premium</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
<body>
    <header>
        <div class="logo-text">EMS.</div>
        <div class="nav-links">
            <a href="${pageContext.request.contextPath}/home" class="btn btn-primary"><i class="fa-solid fa-user-plus"></i> Add New</a>
            <a href="${pageContext.request.contextPath}/getAll" class="btn btn-ghost"><i class="fa-solid fa-address-book"></i> Directory</a>
        </div>
    </header>

    <div class="container" style="max-width: 800px;">
        <div class="glass-card">
            <h1>Register Talent</h1>
            <p class="subtitle">Onboard a new professional to your organization.</p>
            
            <form action="${pageContext.request.contextPath}/addEmployee" method="post">
                <div class="form-grid">
                    <div class="form-group full-width">
                        <label><i class="fa-solid fa-user"></i> FULL NAME</label>
                        <input type="text" name="ename" placeholder="e.g. Alexander Pierce" required>
                    </div>
                    
                    <div class="form-group full-width">
                        <label><i class="fa-solid fa-envelope"></i> EMAIL ADDRESS</label>
                        <input type="email" name="email" placeholder="alex@company.com" required>
                    </div>

                    <div class="form-group">
                        <label><i class="fa-solid fa-money-bill-wave"></i> ANNUAL SALARY</label>
                        <input type="number" name="salary" placeholder="85000" required>
                    </div>

                    <div class="form-group">
                        <label><i class="fa-solid fa-phone"></i> PHONE NUMBER</label>
                        <input type="tel" name="phnno" placeholder="+1 (555) 000-0000" required>
                    </div>

                    <div class="form-group">
                        <label><i class="fa-solid fa-venus-mars"></i> GENDER</label>
                        <select name="gender" required>
                            <option value="Male">Male</option>
                            <option value="Female">Female</option>
                            <option value="Non-binary">Non-binary</option>
                        </select>
                    </div>

                    <div class="form-group">
                        <label><i class="fa-solid fa-building"></i> DEPARTMENT</label>
                        <input type="text" name="dept" placeholder="Engineering" required>
                    </div>

                    <div class="form-group full-width">
                        <label><i class="fa-solid fa-shield-heart"></i> INSURANCE PLAN</label>
                        <input type="text" name="insurance" placeholder="Standard PPO Plus" required>
                    </div>
                </div>

                <div style="margin-top: 1rem;">
                    <button type="submit" class="btn btn-primary" style="width: 100%; height: 3.5rem; font-size: 1rem; border-radius: 1rem;"><i class="fa-solid fa-user-check"></i> Complete Registration</button>
                </div>
            </form>
        </div>
    </div>
</body>
</html>
