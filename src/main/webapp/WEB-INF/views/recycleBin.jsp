<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<table>
    <thead>
        <tr>
            <th>ID</th>
            <th>Title</th>
            <th>Author</th>
            <th>Actions</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach var="book" items="${list}">
            <tr>
                <td>${book.id}</td>
                <td>${book.title}</td>
                <td>${book.author}</td>
                <td>
                    <form action="${pageContext.request.contextPath}/recoverBook" method="post">
                        <input type="hidden" name="id" value="${book.id}">
                        <button type="submit">Recover</button>
                    </form>
                </td>
            </tr>
        </c:forEach>
    </tbody>
</table>


</body>
</html>