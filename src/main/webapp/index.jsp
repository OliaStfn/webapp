<%--
  Created by IntelliJ IDEA.
  User: Олюнь
  Date: 27.08.2017
  Time: 13:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register Page</title>
</head>
<body>
<form action="ControllerServlet" method="post">
    Name:<input type="text" name="name"><br>
    Surname:<input type="text" name="surname"><br>
    <p><i>Year of born</i></p>
    <select name="year">
        <option value="2000" selected>2000</option>
        <option value="1999">1999</option>
        <option value="1998">1998</option>
        <option value="1997">1997</option>
        <option value="1996">1996</option>
        <option value="1995">1995</option>
        <option value="1994">1994</option>
        <option value="1993">1993</option>
        <option value="1992">1992</option>
        <option value="1991">1991</option>
        <option value="1990">1990</option>
    </select>
    <p><i>Month of born:</i></p>
    <select name="month" multiple size="5">
        <option value="1" selected>January</option>
        <option value="2">February</option>
        <option value="3">March</option>
        <option value="4">April</option>
        <option value="5">May</option>
        <option value="6">June</option>
        <option value="7">July</option>
        <option value="8">August</option>
        <option value="9">September</option>
        <option value="10">October</option>
        <option value="11">November</option>
        <option value="12">December</option>
    </select>
        <p><i>Day of born:</i></p>
        <select name="day">
            <option value="1" selected>1</option>
            <option value="2">2</option>
            <option value="3">3</option>
            <option value="4">4</option>
            <option value="5">5</option>
            <option value="6">6</option>
            <option value="7">7</option>
            <option value="8">8</option>
            <option value="9">9</option>
            <option value="10">10</option>
            <option value="11">11</option>
            <option value="12">12</option>
            <option value="13">13</option>
            <option value="14">14</option>
            <option value="15">15</option>
            <option value="16">16</option>
            <option value="17">17</option>
            <option value="18">18</option>
            <option value="19">19</option>
            <option value="20">20</option>
            <option value="21">21</option>
            <option value="22">22</option>
            <option value="23">23</option>
            <option value="24">24</option>
            <option value="25">25</option>
            <option value="26">26</option>
            <option value="27">27</option>
            <option value="28">28</option>
            <option value="29">29</option>
            <option value="30">30</option>
            <option value="31">31</option>
    </select><br><br>
    <label for="login-field">Login:</label>
    <input type="text" name="login" id="login-field">
    <br><br>
    <label for="password-field">Password:</label>
    <input type="password" name="password" id="password-field"><br>
        <label for="repeat-password-field">Repeat password:</label>
        <input type="password" name="repeat-password" id="repeat-password-field"><br>
    <input type="submit" value="register">
</form>
</body>
</html>

