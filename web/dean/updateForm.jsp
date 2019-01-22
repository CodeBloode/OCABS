<%-- 
    Document   : updateForm
    Created on : Jan 19, 2019, 12:47:15 PM
    Author     : Alex
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Edit Counsellor Details</title>
    </head>
    <body>
        <%@ include file="header.html" %>  <br>
        <%@page import="dean.*"%>

        <%
            String id = request.getParameter("id");
            DeanManageCounsellorBean u = DeanManageCounsellorDAO.getRecordById(Integer.parseInt(id));
        %>

        <h1>Edit Form</h1>
        <form action="UpdateCounsellor.jsp" method="post">
            <input type="hidden" name="id" value="<%=u.getId()%>"/>
            <table>
                <tr><td>Counsellor Name:</td><td><input type="text" name="counsname" value="<%= u.getCounsname()%>"/></td></tr>
                <tr><td>Counsellor No.:</td><td>
                        <select name="counsno">
                            <option>Counsellor 1</option>
                            <option>Counsellor 2</option>
                            <option>Counsellor 3</option>
                            <option>Counsellor 4</option>
                            <option>Counsellor 5</option>
                            <option>Counsellor 6</option>
                            <option>Counsellor 7</option>
                            <option>Counsellor 8</option>
                        </select>
                    </td></tr>
                <tr><td>Phone No:</td><td><input type="number" step="1" name="phone" value="<%= u.getPhone()%>"/></td></tr>
                <tr><td>Email:</td><td><input type="email" name="email" value="<%= u.getEmail()%>"/></td></tr>
                <tr><td>Gender</td><td><input type="radio" name="gender" value="male"/>Male <input type="radio" name="gender" value="female"/>Female </td></tr>
                <tr><td>Password:</td><td><input type="password" name="password" value="<%= u.getPassword()%>"/></td></tr>
                <tr><td>State:</td><td>
                        <select name="state">
                            <option>Unknown</option>
                            <option>Available</option>
                            <option>Not Available</option>
                        </select>
                    </td></tr>
                <tr><td colspan="2"><input type="submit" value="Edit Counsellor"/></td></tr>
            </table>
        </form>

    </body>
</html>
