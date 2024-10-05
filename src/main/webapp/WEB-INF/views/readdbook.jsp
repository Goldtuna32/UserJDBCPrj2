<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Re-add Book</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
    <div class="container mt-4">
        <h2 class="mb-4">Re-add Book</h2>
        
        <form:form action="${pageContext.request.contextPath}/book/readdbook/${obj.id}" method="post">
            <div class="form-group">
                <label for="name">Book Name:</label>
                <form:input path="name" type="text" class="form-control" id="name" name="name" value="${obj.name}" readonly/>
            </div>
            <div class="form-group">
                <label for="author_id">Author ID:</label>
                <form:input path="author_id" type="text" class="form-control" id="author_id" name="author_id" value="${obj.author_id}" readonly/>
            </div>

            <div class="text-center">
                <button type="submit" class="btn btn-success">Re-add Book</button>
                <a href="${pageContext.request.contextPath}/book/showbook" class="btn btn-secondary">Cancel</a>
            </div>
        </form:form>
    </div>
</body>
</html>
