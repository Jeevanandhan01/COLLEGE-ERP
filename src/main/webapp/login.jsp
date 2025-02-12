<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>College ERP - Login</title>
    <link rel="stylesheet" href="./styles/login.css">
</head>
<body>

<div class="login-container">
    <h2>Login to College ERP</h2>


    <form action="validate.jsp" method="post">
        <label for="username">Username:</label><br>
        <input type="text" id="username" name="username" required>
        <br><br>
        <label for="password">Password:</label><br>
        <input type="password" id="password" name="password" required>
        <br><br>

        <button type="submit">Login</button>
    </form>
</div>

</body>
</html>
