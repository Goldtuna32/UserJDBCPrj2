<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form:form action="dologin" method="post" modelAttribute="loginObj">
<div class="form-group">
            <label for="email">Email</label>
            <form:input path="email"/>
        </div>
        <div class="form-group">
            <label for="password">Password</label>
            <form:password path="password"/>
        </div>
          <button type="submit" class="btn btn-primary">Login</button>
</form:form>

</body>
</html>