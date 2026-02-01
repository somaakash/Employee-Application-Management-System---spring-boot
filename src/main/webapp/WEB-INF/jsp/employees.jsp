<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Employees</title>

    <!-- Bootstrap CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" 
          rel="stylesheet">

</head>
<body class="bg-light">

<!-- NAVBAR -->
<nav class="navbar navbar-dark bg-dark">
    <div class="container-fluid justify-content-center">
        <span class="navbar-brand mb-0 h1 text-center">
            Employees Application Management
        </span>
    </div>
</nav>



<div class="container mt-4 bg-white p-4 shadow">

    <!-- Add Employee Button -->
    <div class="d-flex justify-content-end mb-3">
        <a href="${pageContext.request.contextPath}/employees/new"
           class="btn btn-success">
            + Add Employee
        </a>
    </div>

    <!-- Employee Table -->
    <table class="table table-bordered table-hover text-center">

        <thead class="table-primary">
            <tr>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Email</th>
                <th>Department</th>
                <th>Actions</th>
            </tr>
        </thead>

        <tbody>
        
        <c:forEach var="employee" items="${employees}">
            <tr>
                <td>${employee.firstName}</td>
                <td>${employee.lastName}</td>
                <td>${employee.email}</td>
                <td>${employee.department}</td>
                
                
                <td>
                    <!-- Update -->
                    <a href="${pageContext.request.contextPath}/employees/edit/${employee.id}"
                       class="btn btn-warning btn-sm">
                        Update
                    </a>

                    <!-- Delete -->
                    <a href="${pageContext.request.contextPath}/employees/delete/${employee.id}"
                       class="btn btn-danger btn-sm"
                       onclick="return confirm('Are you sure you want to delete?');">
                        Delete
                    </a>
                </td>
            </tr>
        </c:forEach>
        </tbody>

    </table>

</div>


</body>
</html>

