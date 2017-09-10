<%--
  Created by IntelliJ IDEA.
  User: Олюнь
  Date: 29.08.2017
  Time: 11:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register Page</title>
</head>
<body>
<form action="Register" method="get">
    Name:<input type="text" name="name"/><br>
    Surname:<input type="text" name="surname"/><br>
    Login:<input type="text" name="login"/><br>
    Password:<input type="password" name="password"/><br>
    <label for="repeat-password-field">Repeat password:</label>
    <input type="password" name="repeat-password" id="repeat-password-field"><br>
    <input type="submit" name="register" value="registration"/>
</form>
</body>
</html>
