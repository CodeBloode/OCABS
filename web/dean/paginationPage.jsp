<%-- 
    Document   : paginationPage
    Created on : Jan 19, 2019, 12:49:17 PM
    Author     : Alex
--%>

<%@ page import="java.util.*,dean.*"%>  
 <%@ include file="header.html" %>  <br>
<%
    String spageid = request.getParameter("page");
    int pageid = Integer.parseInt(spageid);
    int total = 2;
    if (pageid == 1) {
    } else {
        pageid = pageid - 1;
        pageid = pageid * total + 1;
    }
    List<DeanManageCounsellorBean> list = DeanManageCounsellorDAO.getRecords(pageid, total);

    out.print("<h2>Page No: " + spageid + "</h2>");
    out.print("<table border='1' cellpadding='4' width='60%'>");
    out.print("<tr><th>Id</th><th>Name</th><th>Counsellor No.</th><th>Email</th><th>Status</th>");
    for (DeanManageCounsellorBean e : list) {
        out.print("<tr><td>"+e.getId()+"</td><td>"+e.getCounsname() +"</td><td>"+e.getCounsno() +"</td><td>"+e.getEmail()+"</td><td>"+e.getState()+"</td></tr> ");
        
}  
out.print("</table>");
%>  
<a href="paginationPage.jsp?page=1">1</a>  
<a href="paginationPage.jsp?page=2">2</a>  
<a href="paginationPage.jsp?page=3">3</a>