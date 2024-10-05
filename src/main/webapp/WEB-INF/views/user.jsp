<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <style>
        /* Add this CSS rule to style error messages in red */
        .error {
            color: red;
            font-weight: bold;
        }
    </style>
</head>
<body>
    
<form:form modelAttribute="userObj" action="adduser" method="post">
    <form:errors path="id" cssClass="error"></form:errors><br>
    ID: <form:input path="id"/><br>
    
    <form:errors path="age" cssClass="error"></form:errors><br>
    Age: <form:input path="age"/><br>
    
    
        <form:errors path="name" cssClass="error"></form:errors><br>
    Name: <form:input path="name"/><br>
    
    Gender
    
    Male <form:radiobutton path="gender" value="male"/>
    Female <form:radiobutton path="gender" value="female"/><br>
    
    Frameworks
    <form:checkboxes items="${frameworks}" path="frameworks" multiple="multiple"/><br>
    
    Favorite Numbers
    <form:radiobuttons path="number" items="${number}"/><br>
    
    Country
    <form:select path="country" items="${list}" multiple="multiple"></form:select>
    
    
    <input type="submit" value="Add">
</form:form>

</body>
</html>