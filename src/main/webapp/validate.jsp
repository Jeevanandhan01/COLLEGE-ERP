
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page session="true" %>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");


    if ("admin".equals(username) && "head".equals(password)) {
        session.setAttribute("role", "admin");
        response.sendRedirect("admin.jsp");
    } else if ("faculty".equals(username) && "faculty123".equals(password)) {
        session.setAttribute("role", "faculty");
        response.sendRedirect("faculties.jsp");
    } else if ("student".equals(username) && "student123".equals(password)) {
        session.setAttribute("role", "student");
        response.sendRedirect("student.jsp");
    } else {
        response.sendRedirect("login.jsp?error=1");
    }
%>
