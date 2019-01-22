<%-- 
    Document   : UpdateUser
    Created on : Jan 19, 2019, 12:47:53 PM
    Author     : Alex
--%>

<<%@page import="dean.DeanManageCounsellorDAO"%>
<jsp:useBean id="u" class="dean.DeanManageCounsellorBean"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
int i=DeanManageCounsellorDAO.update(u);
response.sendRedirect("viewCounsellors.jsp");
%>