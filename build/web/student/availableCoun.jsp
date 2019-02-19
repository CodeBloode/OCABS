<%-- 
    Document   : availableCoun
    Created on : Feb 6, 2019, 1:16:05 PM
    Author     : linuxpc
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
<<<<<<< HEAD
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>available counsellors</title>
    </head>
    <body>
        <c:forEach items="${counsellor_id}" var="counsellors">
            ${counsellors.couns_id}<br>
        </c:forEach>
    </body>
=======
       <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" href="bootstrap1/bootstrapcss/bootstrap.css">
        <link rel="stylesheet" type="text/css" href="../bootstrap1/bootstrapcss/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="../bootstrap1/bootstrapcss/bootstrap-grid.css">
        <link rel="stylesheet" type="text/css" href="../bootstrap1/bootstrapcss/bootstrap-grid.min.css">
        <link rel="stylesheet" type="text/css" href="../bootstrap1/bootstrapcss/bootstrap-reboot.css">
        <link rel="stylesheet" type="text/css" href="../bootstrap1/bootstrapcss/bootstrap-reboot.min.css">
        <link rel="stylesheet" type="text/css" href="../bootstrap1/bootstrapcss/font-awesome.min.css">

        <script src="js/jquery.min.js"></script>
        <script src="../jquery/jquery.min.js"></script>

        <title>Student|Available Counselors</title>
    </head>
    
    <body>
         <body>
      <jsp:include page="../includes/authenticatednav.html"/>
        
      <br><br>
       <div class="container col-md-4 offset-4">                 
        <form action="Book" class="border border-light p-5" Method="post" name="form">
                
                <p class="h4 mb-4 text-center">Select From Available</p>
              
                 <div class="form-group">
                     <label for="client" class="font-weight-bolder">Available Counselors</label>
                     <select class="custom-select mr-sm-2" id="client" name="user">
                        <option value="unknown" selected>--NONE--</option>
                         <c:forEach items="${counsellor_id}" var="counsellors">
                              <option>${counsellors.couns_id}</option>                            
                        </c:forEach>
                      </select>
                </div>
                                
                <button type="submit" class="btn btn-primary">Book</button>
            
                              <!-- ennd -->
                </form>
       </div>

    <div class="fixed-bottom">
         <jsp:include page="../includes/footer.jsp"/>
    </div>
   
    </body>
        
>>>>>>> f62671d8b8910ce51639cd5790c9745a6c0be378
</html>
