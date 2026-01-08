<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Success | EMS Premium</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
<body>
    <div class="container" style="display: flex; align-items: center; justify-content: center; min-height: 85vh;">
        <div class="glass-card" style="text-align: center; max-width: 450px;">
            <div style="font-size: 5rem; margin-bottom: 1.5rem;"></div>
            <h1>Action Confirmed</h1>
            <p class="subtitle" style="margin-bottom: 2.5rem;">The directory has been updated successfully with the latest information.</p>
            <a href="${pageContext.request.contextPath}/getAll" class="btn btn-primary" style="width: 100%; height: 3.5rem; font-size: 1.125rem;">Explore Directory</a>
        </div>
    </div>
</body>
</html>
