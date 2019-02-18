<%-- 
    Document   : viewUsers
    Created on : Jan 19, 2019, 12:46:42 PM
    Author     : Alex
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dean.DeanManageCounsellorBean"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        
        <title>View Counsellors</title>
    </head>
    <body bgcolor="whitesmoke">
         <%@ include file="header.html" %>  <br>

        <%@page import="dean.DeanManageCounsellorDAO, dean.DeanManageCounsellorBean.*,java.util.*"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

        <h1><u>Counsellors List</u></h1>

        <%
            List<DeanManageCounsellorBean> list = DeanManageCounsellorDAO.getAllRecords();
            request.setAttribute("list", list);
        %>

        <table border="1" width="90%" align="center">
            <tr><th>Id</th><th>Name</th><th>Counsellor No.</th><th>Phone No.</th><th>Email</th><th>Gender</th><th>Password</th><th>Status</th><th>Edit</th><th>Delete</th></tr>
                    <c:forEach items="${list}" var="u">
                <tr><td>${u.getId()}</td><td>${u.getCounsname()}</td><td>${u.getCounsno()}</td><td>${u.getPhone()}</td><td>${u.getEmail()}</td><td>${u.getGender()}</td><td>${u.getPassword()}</td><td>${u.getState()}</td><td><a href="dean/updateForm.jsp?id=${u.getId()}" style="color: green">Edit</a></td><td><a href="dean/DeleteCounsellor.jsp?id=${u.getId()}" style="color: maroon">Delete</a></td></tr>
            </c:forEach>
        </table>
        <br/><a href="addCounsellorForm.jsp" style="color: green">Add New Counsellor</a>

    </body>
</html>
