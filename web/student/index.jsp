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
<!--         <link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">
         <link rel="stylesheet" href="../css/coverstyle.css">
         <link href="//fonts.googleapis.com/css?family=Oswald:200,300,regular,500,600,700&subset=latin-ext,vietnamese,latin,cyrillic" rel="stylesheet" type="text/css" />
         <link rel="stylesheet" href="../bootstrap/css/mdb.min.css">-->

<!-- Font Awesome -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">
<!-- Bootstrap core CSS -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.2.1/css/bootstrap.min.css" rel="stylesheet">
<!-- Material Design Bootstrap -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.7.0/css/mdb.min.css" rel="stylesheet">

    </head>
    <body>
        <jsp:include page="../includes/authenticatednav.html"/>
        <br><br><br><br>
        
      
           
            <% UserBean currentUser = ((UserBean)(session.getAttribute("userSession")));%>
        <h1> Welcome <%= currentUser.getFirstName() + " " + currentUser.getLastName() %> </h1>
         
         
         <div class="fixed-bottom">
         <jsp:include page="../includes/footer.jsp" />
         </div>
            
        </div>
<!--     Optional JavaScript 
     jQuery first, then Popper.js, then Bootstrap JS 
     <script src="../bootstrap/js/jquery-3.3.1.min.js"></script>
    <script src="../bootstrap/js/popper.min.js"></script>
    <script src="../bootstrap/js/bootstrap.min.js"></script>-->
        
    </body>
</html>
