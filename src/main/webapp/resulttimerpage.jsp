<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.util.Enumeration" %><%--
  Created by IntelliJ IDEA.
  User: Олюнь
  Date: 10.09.2017
  Time: 14:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Result</title>
</head>
<body>
<%
    Enumeration<String> name = request.getAttributeNames();
    boolean temp = false;
    int hours;
    int minutes;
    int seconds;

    while (name.hasMoreElements()) {
        if (name.equals("hours")) {
            temp = true;
        }
    }

    if (temp) {
        hours = (int) request.getAttribute("hours");
        minutes = (int) request.getAttribute("minutes");
        seconds = (int) request.getAttribute("seconds");
    } else {
        hours = Integer.parseInt(request.getParameter("hours"));
        minutes = Integer.parseInt(request.getParameter("minutes"));
        seconds = Integer.parseInt(request.getParameter("seconds"));
    }

    PrintWriter show = response.getWriter();
    show.print("<p>" + hours + ":" + minutes + ":" + seconds + "</p>");

    if (seconds > 0) seconds--;
    else if (minutes > 0) {
        minutes--;
        seconds = 59;
    } else if (hours > 0) {
        hours--;
        minutes = 59;
        seconds = 59;
    } else show.print("<p>Finish</p>");

    request.setAttribute("hours", hours);
    request.setAttribute("minutes", minutes);
    request.setAttribute("seconds", seconds);

%>
</body>
</html>
