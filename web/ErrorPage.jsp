<%-- 
    Document   : signup
    Created on : Jan 14, 2019, 11:44:48 PM
    Author     : root
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <title>Errors</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
         <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
         <link rel="stylesheet" href="css/coverstyle.css">
         <link href="//fonts.googleapis.com/css?family=Oswald:200,300,regular,500,600,700&subset=latin-ext,vietnamese,latin,cyrillic" rel="stylesheet" type="text/css" />
         <link rel="stylesheet" href="bootstrap/css/mdb.min.css">
    </head>
    <body>
        <div class="mb-1">
        <jsp:include page="includes/nav.html"/>
        </div>
        <div class="container mt-7">
            <br/><br/><br/><br/>
        <h5 class="h5">Username or password error or You are trying to log in as a wrong user.<br>please retry to <a href="login.jsp" class="blue-text">login</a> again</h5>
       
         
         <jsp:include page="includes/footer.jsp"/>
            
        </div>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
     <script src="bootstrap/js/jquery-3.3.1.min"></script>
    <script src="bootstrap/js/popper.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
        
    </body>
</html>