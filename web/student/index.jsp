<%-- 
    Document   : index
    Created on : Jan 15, 2019, 1:02:11 AM
    Author     : root
--%>



<%@ page language="java"
         contentType="text/html" 
        pageEncoding="UTF-8"
        import="login.UserBean" %>
<!DOCTYPE html>

<html>
    <head>
        <title>student</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
         <link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">
         <link rel="stylesheet" href="../css/coverstyle.css">
         <link href="//fonts.googleapis.com/css?family=Oswald:200,300,regular,500,600,700&subset=latin-ext,vietnamese,latin,cyrillic" rel="stylesheet" type="text/css" />
         <link rel="stylesheet" href="../bootstrap/css/mdb.min.css">
    </head>
    <body>
        <jsp:include page="../includes/authenticatednav.html"/>
        <br><br><br><br>
        
        <%--<jsp:useBean id= "currentUser" class = "login.UserBean" scope="session"/>--%>
            
           
            <% UserBean currentUser = ((UserBean)(session.getAttribute("userSession")));%>
        <h1> Welcome <%= currentUser.getFirstName() + " " + currentUser.getLastName() %> </h1>
         
         <jsp:include page="../includes/footer.jsp" />
            
        </div>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
     <script src="../bootstrap/js/jquery-3.3.1.min"></script>
    <script src="../bootstrap/js/popper.min.js"></script>
    <script src="../bootstrap/js/bootstrap.min.js"></script>
        
    </body>
</html>