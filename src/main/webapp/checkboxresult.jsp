<%--
  Created by IntelliJ IDEA.
  User: Олюнь
  Date: 27.08.2017
  Time: 22:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.io.PrintWriter" %>
<html>
<head>
    <title>Result</title>
</head>
<body>
<%
    PrintWriter show = response.getWriter();
    show.print("Monday:"+request.getParameter("Monday")+"<br>");
    show.print("Tuesday:"+request.getParameter("Tuesday")+"<br>");
    show.print("Wednesday:"+request.getParameter("Wednesday")+"<br>");
%>


</body>
</html>
