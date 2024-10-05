<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registration Form</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-5">
    <h2 class="text-center mb-4">Register</h2>

    <!-- Display error message if exists -->
    <span>
      ${error}
    </span>
    <form:form action="insert" method="post" modelAttribute="userObj">
    <div class="form-group">
            <label for="uname">Name</label>
            <form:input path="name"/>
        </div>
        <div class="form-group">
            <label for="uemail">Email</label>
            <form:input path="email"/>
        </div>
        <div class="form-group">
            <label for="upassword">Password</label>
            <form:password path="password"/>
        </div>
        <button type="submit" class="btn btn-primary">Create Account</button>
    </form:form>

</div>

<!-- Bootstrap JS and dependencies (optional, for full functionality) -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
