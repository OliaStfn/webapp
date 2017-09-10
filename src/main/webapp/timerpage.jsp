<%--
  Created by IntelliJ IDEA.
  User: Олюнь
  Date: 10.09.2017
  Time: 14:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Timer</title>
</head>
<body>
<form action="TimerResultController" method="get">
    <label>Hours<input type="number" name="hours"></label>
    <label>Minutes<input type="number" name="minutes"></label>
    <label>Seconds<input type="number" name="seconds"></label>
    <input type="submit" name="Enter" value="Enter">
</form>
</body>
</html>
