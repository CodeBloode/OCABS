<%-- 
    Document   : home
    Created on : Jan 15, 2019, 11:15:15 PM
    Author     : Alex
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE HTML>
    <!-- remember to add footer for the one who is doing front-end -->
    
    <HTML lang="en">
    <head>
        <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    
    <script type="text/javascript" src="../jquery/jquery-3.3.1.js"></script>
        <title>Dean Home Page</title>

        <!-- SCRIPTS -->

<link rel="stylesheet" type="text/css" href="../bootstrap1/bootstrapcss/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../bootstrap1/bootstrapcss/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../bootstrap1/bootstrapcss/bootstrap-grid.css">
<link rel="stylesheet" type="text/css" href="../bootstrap1/bootstrapcss/bootstrap-grid.min.css">
<link rel="stylesheet" type="text/css" href="../bootstrap1/bootstrapcss/bootstrap-reboot.css">
<link rel="stylesheet" type="text/css" href="../bootstrap1/bootstrapcss/bootstrap-reboot.min.css">
<link rel="stylesheet" type="text/css" href="../bootstrap1/bootstrapcss/font-awesome.min.css">
             <!-- MDB core JavaScript -->
<link rel="stylesheet" type="text/css" href="../bootstrap1/bootstrapcss/mdb.min.css">


    <link  rel="stylesheet" href="../css/stylelogin.css" type="text/css" media="all"> 

            <!-- Material Design Bootstrap -->
    <link href="../bootstrap1/bootstrapcss/mdb.min.css" rel="stylesheet">




   <%--  <link rel="stylesheet" type="text/css" href="../css/style.css">  --%>

    </head>
    <body style="background-color: whitesmoke">

    


        <div class="topnav fixed-top" style="background-color: #4062b7">
    <nav class="navbar navbar-expand-md ">
        <ul class="navbar-nav ml-auto">
<!--            <li class="nav-item">
                <a class="nav-link active" href="deanhomepage.jsp">Home</a>
            </li>-->
            <li class="nav-item">
                <a class="nav-link" href="viewsessions.jsp"> View Appointments</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="approveschedules.jsp">Approve Counsellor Schedules</a>
            </li>
            <li class="nav-item">
                <a href="../addCounsellorForm.jsp"> Add New Counsellor</a>
            </li>
            <li class="nav-item">
                <a  class="nav-link" href="">Logout</a>
            </li>
        </ul>
    </nav>
    </div>



        <div style="height:auto; width: auto;" class=" text-center">
        <div class="flex-center flex-column"  >
    <h4 class="animated fadeIn mb-4" style="margin-top:250px; "> Welcome: <!jsp code to fetch nameusing session-->
    </h4>

    </div>
            <div style="float: right; text-decoration: none; font-family: SansSerif; font-size: 17px; margin-top -10px; margin-right: 20px;">

                <a href="changepassword.jsp" style="color:blue; text-decoration: underline; font-style: italic">Change Your Password ?</a>
            </div>
    </div>

     <div class="footer">
       <jsp:include page="../includes/footer.jsp"/>
    </div>

    </body>

    </HTML>
