<%@page import="dean.DeanManageCounsellorDAO"%>
<jsp:useBean id="u" class="dean.DeanManageCounsellorBean"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
int i=DeanManageCounsellorDAO.save(u);
if(i>0){
response.sendRedirect("AddCounsellorSuccess.jsp");
}else{
response.sendRedirect("errorPage.jsp");
}
%>