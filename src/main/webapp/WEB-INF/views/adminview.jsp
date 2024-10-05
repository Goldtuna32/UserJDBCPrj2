<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Admin View</title>
    
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

    <!-- Bootstrap JS (optional if you need interactive components) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
    <div class="container mt-4">
        <h1 class="text-center">Admin View</h1>
        
        <div class="row">
            <div class="col text-center">
                <a href="book/showbook" class="btn btn-primary mb-2">Show Book List</a>
            </div>
        </div>
        
        <div class="row">
            <div class="col text-center">
                <a href="addbooks.jsp" class="btn btn-success">Add Book</a>
            </div>
        </div>
    </div>
</body>
</html>
