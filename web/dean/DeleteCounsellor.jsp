<%-- 
    Document   : DeleteUser
    Created on : Jan 19, 2019, 12:48:27 PM
    Author     : Alex
--%>

<%@page import="dean.DeanManageCounsellorDAO"%>
<jsp:useBean id="u" class="dean.DeanManageCounsellorBean"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
DeanManageCounsellorDAO.delete(u);
response.sendRedirect("ViewAllCounsellors");
%>