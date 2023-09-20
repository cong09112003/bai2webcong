<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<!--
Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Html.html to edit this template
-->
<html>
<head>
    <title>ch04_ex1_survey</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="styles/main.css" type="text/css"/>
</head>
<body>

<h1>Survey</h1>
<p>If you have a moment, we'd appreciate it if you would fill out this <br>
    survey. </p>
<h1>Your Information:</h1>

<form action="emailSurvey" method="post">
    <input type="hidden" name="action" value="add">
    <label class="block__text">First Name</label>
    <input type="text" name="firstName" required><br>
    <label class="block__text">Last Name</label>
    <input type="text" name="lastName" required><br>
    <label class="block__text">Email</label>
    <input type="email" name="email" required><br>
    <h1>How did you hear about us ?</h1>
    <p>
        <input type="radio" name="howHear" value="searchEngine">Email
        <input type="radio" name="howHear" value="wordOfMouth">Word of mouth
        <input type="radio" name="howHear" value="other" checked>other
    </p>
    <h1>Word you like to receive announcements about new CDs and special offers ?</h1>
    <p>
        <input type="checkbox" name="agree" checked>Yes, I'd like that.<br>

    </p>
    <p> Please contact me by:
        <select name="contactBy">
            <option value="Email or Postal Mail">Email or postal mail</option>
            <option value="Phone Number ">Phone Number</option>
            <option value="Microsoft Team">Microsoft Team</option>
            <option value="Handwritten Letter">Handwritten Letter</option>
        </select><br>
    </p>
    <p>
        <input type="submit" value="Submit" id="submit">
    <p>
</form>
</body>
</html>
