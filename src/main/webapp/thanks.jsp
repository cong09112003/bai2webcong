<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 20-Sep-23
  Time: 7:10 AM
  To change this template use File | Settings | File Templates.
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>ch4_ex1_Survey</title>
    <link rel="stylesheet" href="styles/main.css" type="text/css"/>
</head>

<body>
<h1>Thanks for joining our Survey</h1>

<p>Here is the information that you entered:</p>

<label class="thank__label">Email:</label>
<span>${user.email}</span><br>
<label class="thank__label">First Name:</label>
<span>${user.firstName}</span><br>
<label class="thank__label">Last Name:</label>
<span>${user.lastName}</span><br>
<label class="thank__label">Hear by:</label>
<span>${transfer.howHear}</span><br>
<label class="thank__label">Your opinion:</label>
<span>${transfer.likeToReceive}</span><br>
<label class="thank__label">Contact you by:</label>
<span>${transfer.contact}</span><br>
<p>To enter another email address, click on the Back
    button in your browser or the Return button shown
    below.</p>

<form action="" method="get">
    <input type="hidden" name="action" value="submit">
    <input type="submit" value="Return">
</form>
</body>
</html>

