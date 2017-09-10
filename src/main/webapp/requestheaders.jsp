<%@ page import="java.util.Enumeration" %>
<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: Олюнь
  Date: 06.09.2017
  Time: 20:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> Request Headers</title>
</head>
<body>
<%
    PrintWriter show = response.getWriter();
    show.print("<table border=\"1\" width=\"50%\" align=\"center\">\n" +
            "<tr><th>Header</th><th>Value</th></tr>\n");
    Enumeration headers = request.getHeaderNames();
    while (headers.hasMoreElements()) {
        String headerName = (String) headers.nextElement();
        show.print("<tr><td>" + headerName + "</td>\n");
        String headerValue = request.getHeader(headerName);
        show.print("<td>" + headerValue + "</td></tr>\n");
    }
    String remoteAddress = request.getRemoteAddr();
    show.print("<tr><td>Remote address</td>" +
            "<td>" + remoteAddress + "</td></tr>");
    String servletPath = request.getServletPath();
    show.print("<tr><td>Servlet path</td>" +
            "<td>" + servletPath + "</td></tr>");
    Cookie[] cookies = request.getCookies();
    show.print("<tr><th colspan=\"2\">Cookies</th></tr>" +
            "<tr><th>Name</th><th>Value</th></tr>");
    for (int i = 0; i < cookies.length; i++) {
        String cookieName = cookies[i].getName();
        show.print("<tr><td>" + cookieName + "</td>\n");
        String cookieValue = cookies[i].getValue();
        show.print("<td>" + cookieValue + "</td></tr>\n");
    }
    HttpSession curSession = request.getSession();
    Enumeration<String> names = curSession.getAttributeNames();
       if (names.hasMoreElements()) {
        show.print("<tr><th colspan=\"2\">Current session</th></tr>" +
                "<tr><th>Name</th><th>Value</th></tr>");
        while (names.hasMoreElements()) {
            String attributeName = (String) names.nextElement();
            show.print("<tr><td>" + attributeName + "</td>\n");
            String attributeValue = (String) curSession.getAttribute(attributeName);
            show.print("<td>" + attributeValue + "</td></tr>\n");
        }
    }
    show.print("</table>");
%>
</body>
</html>
