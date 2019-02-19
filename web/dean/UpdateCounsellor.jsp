<%-- 
    Document   : UpdateUser
    Created on : Jan 19, 2019, 12:47:53 PM
    Author     : Alex
--%>

<<%@page import="w3adda.UserDAO"%>
<jsp:useBean id="u" class="w3adda.UserBean"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
int i=UserDAO.update(u);
response.sendRedirect("viewUsers.jsp");
%>