<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
<head>
    <title>Book List</title>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
    <div class="container mt-4">
        <h1 class="mb-4">Book List</h1>
        
        <!-- "Add Books" button always visible -->
        <a href="addbooks.jsp" class="btn btn-primary mb-3">Add Books</a>

        <!-- Logic to display book list or no books message -->
                <table class="table table-bordered">
                    <thead class="thead-dark">
                        <tr>
                            <th>ID</th>
                            <th>Title</th>
                            <th>Author</th>
                            <th>Prize</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="book" items="${list}">
                            <tr>
                                <td>${book.id}</td>
                                <td>${book.title}</td>
                                <td>${book.author}</td>
                                <td>${book.prize}</td>
                                <td>   <form action="${pageContext.request.contextPath}/book/deleteBook" method="post">
                        <input type="hidden" name="id" value="${book.id}">
                        <button type="submit">Move to Recycle Bin</button>
                    </form> </td>
                                <td>
                                    <a href="editbook/${book.id}" class="btn btn-warning btn-sm">Edit</a> 
                                    <a href="deletebook/${book.id}" class="btn btn-danger btn-sm">Delete</a>
                                </td>
                                
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
    </div>
</body>
</html>
