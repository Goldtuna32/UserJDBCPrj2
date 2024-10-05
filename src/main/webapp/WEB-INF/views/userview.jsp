<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Bootstrap CSS -->
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="container">
    <div class="card mt-5">
        <div class="card-body">
            <h5 class="card-title">User Details</h5>
            <p class="card-text">
                <strong>ID</strong>: ${user.id}<br>
                <strong>Age</strong>: ${user.age}<br>
                <strong>Name</strong>: ${user.name}<br>
                <strong>Gender</strong>: ${user.gender}<br>
                <strong>Framework :</strong> ${user.frameworks}
                
                <br>
                <strong>Favorite Numbers </strong>: ${user.number}
             <br>
             	<strong>Country</strong>: ${user.country}<br>
            </p>
        </div>	
    </div>

<!-- Bootstrap JS and dependencies -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
