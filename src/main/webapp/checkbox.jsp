<%--
  Created by IntelliJ IDEA.
  User: Олюнь
  Date: 29.08.2017
  Time: 12:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Абонемент</title>
</head>
<body>
<form action="CheckBox" method="post">
    <p>Доступні послуги:</p>
    <input type="checkbox" name="subscription" value="150"/>Прокат лиж<br>
    <input type="checkbox" name="subscription" value="200"/>Заняття з інструктором<br>
    <input type="checkbox" name="subscription" value="75"/>Абонемент на підйомник<br>
    <input type="checkbox" name="subscription" value="400"/>Одномісний номер в готелі<br>
    <input type="checkbox" name="subscription" value="800"/>Двомісний номер в готелі<br>
    <input type="checkbox" name="subscription" value="100"/>Сауна<br>
    <input type="checkbox" name="subscription" value="100"/>Одноразове харчування<br>
    <input type="checkbox" name="subscription" value="200"/>Дворазове харчування<br>
    <input type="checkbox" name="subscription" value="300"/>Трьохразове харчування<br><br>
    <input type="text" name="quantity" placeholder="Кількість днів"><br>
    <input type="submit" name="buy" />
</form>
</body>
</html>
