<%--
  Created by IntelliJ IDEA.
  User: Олюнь
  Date: 27.08.2017
  Time: 14:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.stfn.beans.User" %>
<%@ page import="java.io.PrintWriter" %>
<html>
<head>
    <title>My personal page</title>
</head>
<body>
<h1>Welcome to my page </h1>
<% User user= (User) request.getAttribute("user");
    PrintWriter show = response.getWriter();
    show.print("Welcome dear "+user.getLogin());%>
</body>
</html>
