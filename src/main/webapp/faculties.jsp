<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page session="true" %>
<%
    String role = (String) session.getAttribute("role");
    if (role == null || !"faculty".equals(role)) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Faculty Dashboard</title>
    <link rel="stylesheet" href="./styles/style.css">
</head>
<body>

<nav class="navbar">
    <h2>Faculty Dashboard</h2>
    <a href="logout.jsp">Logout</a>
</nav>

<div class="dashboard-container">
    <h2>Welcome, Faculty!</h2>
    <div class="stats">
        <div class="card">Total Classes Assigned: <span>5</span></div>
        <div class="card">Pending Evaluations: <span>3</span></div>
        <div class="card">Upcoming Exams: <span>2</span></div>
        <div class="card">Mentor Students: <span>10</span></div>
    </div>

    <section>
        <h3>Manage Academics</h3>
        <ul>
            <li><a href="#">Class Schedule</a></li>
            <li><a href="#">Attendance Management</a></li>
            <li><a href="#">Exam Invigilation</a></li>
            <li><a href="#">Upload Study Materials</a></li>
            <li><a href="#">Mentorship Details</a></li>
        </ul>
    </section>
</div>

</body>
</html>
