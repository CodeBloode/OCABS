<%-- 
    Document   : index
    Created on : Jan 22, 2019, 11:47:43 AM
    Author     : root
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="login.UserBean"%>
    
<!DOCTYPE html>
<html>
    <head>
<<<<<<< HEAD
                   <!--css-->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.2.1/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.7.1/css/mdb.min.css" rel="stylesheet">
        
        
        
        
        
        <link href="MDB/css/mdtimepicker.min.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="MDB/css/mdtimepicker.css" rel="stylesheet" type="text/css"/>
        <link href="https://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
      
        
        
        
        
                  <!--Javascript--> 
                  <!--JQuery--> 
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.4/umd/popper.min.js"></script>
                  <!--Bootstrap core JavaScript--> 
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.2.1/js/bootstrap.min.js"></script>
                  <!--MDB core JavaScript--> 
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.7.1/js/mdb.min.js"></script>
        
            
       
        <!--<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>-->
        <!--<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/flick/jquery-ui.css">-->
        <!--<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.18.1/moment.min.js"></script>-->
        <!--<script src="jquery-ui-timespinner.js"></script>-->
        
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
         <script src="MDB/js/mdtimepicker.js"></script>
         <script src="MDB/js/mdtimepicker.min.js"></script>
=======
>>>>>>> f62671d8b8910ce51639cd5790c9745a6c0be378
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Counsellor Home</title>
    </head>
    <body>
        <div>
            <jsp:include page="../includes/counsnav.html"/>
        </div>
        <div style="margin-top: 50px;">
         <% UserBean currentUser = ((UserBean)(session.getAttribute("userSession")));%>
        <h1> Welcome <%= currentUser.getFullName()%> </h1> 
        
        </div>
        <div class="fixed-bottom">
     <jsp:include page="../includes/footer.jsp"/>
     </div>
    </body>
    
</html>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    