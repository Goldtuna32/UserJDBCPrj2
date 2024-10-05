<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Book</title>
    
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-5">
    <h2 class="text-center mb-4">Edit Book</h2>

    <!-- Display error message if any -->
    <span class="text-danger">
        ${error}
    </span>

    <form:form action="editbook" method="get" modelAttribute="obj">
        <div class="form-group">
            <label for="uid">ID</label>
            <form:input path="id" type="text" class="form-control" id="id" name="id" value="${obj.id}" readonly="readonly"/>
        </div>
        <div class="form-group">
            <label for="title">Title</label>
            <form:input path="title" type="text" class="form-control" id="title" name="title" value="${title != null ? title : obj.title}"/>
        </div>
        <div class="form-group">
            <label for="author">Author</label>
            <form:input path="author" type="text" class="form-control" id="author" name="author" value="${author != null ? author : obj.author}"/>
        </div>
        <div class="form-group">
            <label for="prize">Prize</label>
            <form:input path="prize" type="text" class="form-control" id="prize" name="prize" value="${prize != null ? prize : obj.prize}"/>
        </div>
        <div class="text-center">
            <button type="submit" class="btn btn-primary">Update</button>
        </div>
    </form:form>
</div>

<!-- Bootstrap JS, Popper.js, and jQuery -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
