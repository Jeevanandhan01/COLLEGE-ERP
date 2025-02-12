<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page session="true" %>
<%
    String role = (String) session.getAttribute("role");
    if (role == null || !"student".equals(role)) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Dashboard</title>
    <link rel="stylesheet" href="./styles/style.css">
</head>
<body>

<nav class="navbar">
    <h2>Student Dashboard</h2>
    <a href="logout.jsp">Logout</a>
</nav>

<div class="dashboard-container">
    <h2>Welcome, Student!</h2>
    <div class="stats">
        <div class="card">Current Semester: <span>6</span></div>
        <div class="card">Attendance Percentage: <span>85%</span></div>
        <div class="card">Pending Fees: <span>₹5,000</span></div>
        <div class="card">Upcoming Exams: <span>3</span></div>
    </div>

    <section>
        <h3>Student Services</h3>
        <ul>
            <li><a href="#">View Class Schedule</a></li>
            <li><a href="#">Check Attendance</a></li>
            <li><a href="#">Exam Timetable</a></li>
            <li><a href="#">Fee Payment</a></li>
            <li><a href="#">Apply for Placement</a></li>
            <li><a href="#">Scholarship Details</a></li>
        </ul>
    </section>
</div>

</body>
</html>
