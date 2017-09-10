<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: Олюнь
  Date: 29.08.2017
  Time: 13:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Result</title>
</head>
<body>
<%
    PrintWriter show = response.getWriter();
    show.print("Загальна сума:"+request.getAttribute("price")+"<br>");
%>

</body>
</html>
