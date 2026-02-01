<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Employee</title>

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
      rel="stylesheet">
</head>

<body class="bg-light">

<!-- Header -->
<nav class="navbar navbar-dark bg-dark">
    <div class="container-fluid">
        <span class="navbar-brand">Employee Management</span>
    </div>
</nav>

<!-- Form Container -->
<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-6">

            <div class="card shadow">
                <div class="card-body">

                    <h3 class="text-center mb-4">Update Employee</h3>

                    <form action="${pageContext.request.contextPath}/employees/${employee.id}"
                          method="post">

                        <div class="mb-3">
                            <label class="form-label">First Name</label>
                            <input type="text"
                                   name="firstName"
                                   class="form-control"
                                   value="${employee.firstName}"
                                   required>
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Last Name</label>
                            <input type="text"
                                   name="lastName"
                                   class="form-control"
                                   value="${employee.lastName}"
                                   required>
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Email</label>
                            <input type="email"
                                   name="email"
                                   class="form-control"
                                   value="${employee.email}"
                                   required>
                        </div>
                        
						<div class="mb-3">
						    <label class="form-label">Department</label>
						    <input type="text"
						           name="department"
						           class="form-control"
						           value="${employee.department}"
						           required>
						</div>
						
					
                        <div class="text-center">
                            <button type="submit" class="btn btn-warning">
                                Update Employee
                            </button>
                        </div>

                    </form>

                </div>
            </div>

        </div>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
