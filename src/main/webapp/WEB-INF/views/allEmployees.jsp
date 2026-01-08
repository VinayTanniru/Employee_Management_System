<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Directory | EMS Premium</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
<body>
    <header>
        <div class="logo-text">EMS.</div>
        <div class="nav-links">
            <a href="${pageContext.request.contextPath}/home" class="btn btn-ghost"><i class="fa-solid fa-user-plus"></i> Add New</a>
            <a href="${pageContext.request.contextPath}/getAll" class="btn btn-primary"><i class="fa-solid fa-address-book"></i> Directory</a>
        </div>
    </header>

    <div class="container">
        <div style="display: flex; justify-content: space-between; align-items: flex-end; margin-bottom: 2rem;">
            <div>
                <h1>Talent Pool</h1>
                <p style="color: var(--text-muted); margin-bottom: 0;">Managing your most valuable assets.</p>
            </div>
            <a href="${pageContext.request.contextPath}/home" class="btn btn-primary"><i class="fa-solid fa-plus"></i> Enroll Talent</a>
        </div>

        <div class="glass-card" style="padding: 1rem 1.5rem;">
            <c:choose>
                <c:when test="${not empty employees}">
                    <table>
                        <thead>
                            <tr>
                                <th>PROFESSIONAL</th>
                                <th>CONTACT</th>
                                <th>DEPT</th>
                                <th>SALARY & PLAN</th>
                                <th style="text-align: right;">ACTIONS</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${employees}" var="emp">
                                <tr>
                                    <td>
                                        <div style="font-weight: 700; font-size: 1rem;">${emp.ename}</div>
                                        <div style="font-size: 0.75rem; color: var(--text-muted);"><i class="fa-solid fa-venus-mars"></i> ${emp.gender}</div>
                                    </td>
                                    <td>
                                        <div style="font-size: 0.875rem;"><i class="fa-solid fa-envelope"></i> ${emp.email}</div>
                                        <div style="font-size: 0.75rem; color: var(--text-muted);"><i class="fa-solid fa-phone"></i> ${emp.phnno}</div>
                                    </td>
                                    <td>
                                        <span class="status-badge badge-success"><i class="fa-solid fa-building-user"></i> ${emp.dept}</span>
                                    </td>
                                    <td>
                                        <div style="font-weight: 600;"><i class="fa-solid fa-money-bill-wave"></i> $${emp.salary}</div>
                                        <div style="font-size: 0.75rem; color: var(--text-muted);"><i class="fa-solid fa-shield-heart"></i> ${emp.insurance}</div>
                                    </td>
                                    <td style="text-align: right;">
                                        <div style="display: flex; gap: 0.5rem; justify-content: flex-end;">
                                            <a href="${pageContext.request.contextPath}/update/${emp.id}" class="action-btn edit-btn" title="Edit Profile">
                                                <i class="fa-solid fa-pen-to-square"></i>
                                            </a>
                                            <a href="${pageContext.request.contextPath}/delete/${emp.id}" class="action-btn delete-btn" title="Archive Record" onclick="return confirm('Archive record?')">
                                                <i class="fa-solid fa-trash-can"></i>
                                            </a>
                                        </div>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </c:when>
                <c:otherwise>
                    <div style="padding: 5rem 2rem; text-align: center;">
                        <h2 style="color: var(--text-muted); font-weight: 400;">No talent enrolled yet.</h2>
                        <a href="${pageContext.request.contextPath}/home" class="btn btn-primary" style="margin-top: 1.5rem;"><i class="fa-solid fa-user-plus"></i> Start Your Directory</a>
                    </div>
                </c:otherwise>
            </c:choose>
        </div>
    </div>
</body>
</html>
