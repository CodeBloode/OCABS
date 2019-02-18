<%-- 
    Document   : adduserForm
    Created on : Jan 19, 2019, 12:43:38 PM
    Author     : Alex
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="signup.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Counsellor Form</title>
<!-- SCRIPTS -->

<link rel="stylesheet" type="text/css" href="../bootstrap1/bootstrapcss/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../bootstrap1/bootstrapcss/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../bootstrap1/bootstrapcss/bootstrap-grid.css">
<link rel="stylesheet" type="text/css" href="../bootstrap1/bootstrapcss/bootstrap-grid.min.css">
<link rel="stylesheet" type="text/css" href="../bootstrap1/bootstrapcss/bootstrap-reboot.css">
<link rel="stylesheet" type="text/css" href="../bootstrap1/bootstrapcss/bootstrap-reboot.min.css">
<link rel="stylesheet" type="text/css" href="../bootstrap1/bootstrapcss/font-awesome.min.css">
             <!-- MDB core JavaScript -->
<<<<<<< HEAD
=======
              <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css">
>>>>>>> f62671d8b8910ce51639cd5790c9745a6c0be378
<link rel="stylesheet" type="text/css" href="../bootstrap1/bootstrapcss/mdb.min.css">
<link rel="stylesheet" type="text/css" href="cdn/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="cdn/buttons.bootstrap.min.js">
<link rel="stylesheet" type="text/css" href="cdn/buttons.colVis.min.js">
<link rel="stylesheet" type="text/css" href="cdn/buttons.html5.min.js">
<link rel="stylesheet" type="text/css" href="cdn/buttons.print.min.js">
<link rel="stylesheet" type="text/css" href="cdn/dataTables.bootstrap.min.js">
<link rel="stylesheet" type="text/css" href="cdn/dataTables.buttons.min.js">
<link rel="stylesheet" type="text/css" href="cdn/jquery-3.3.1.js">
<link rel="stylesheet" type="text/css" href="cdn/jquery.dataTables.min.js">
<link rel="stylesheet" type="text/css" href="cdn/jszip.min.js">
<link rel="stylesheet" type="text/css" href="cdn/mdb.min.js">
<link rel="stylesheet" type="text/css" href="cdn/pdfmake.min.js">
<link rel="stylesheet" type="text/css" href="cdn/vfs_fonts.js">
<<<<<<< HEAD
<!--<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">
 Bootstrap core CSS 
<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.2.1/css/bootstrap.min.css" rel="stylesheet">
 Material Design Bootstrap 
<link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.7.0/css/mdb.min.css" rel="stylesheet">-->
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <style> 
            #navigation ul li{
                display: inline-block;
                padding: 0px 5px;
            }
            #navigation ul li a{
                color:#fff;
                text-decoration: none;
            }
            #navigation {
                background: #4062b7;
                padding: 3px 0px
            }
        </style>
</head>
<body style="background-color: whitesmoke">
    <div id="header">
            <div class="shell">

                <div id="navigation">
                    <ul>
                        <li><a href="dean/" class="active">Home</a></li>
                        <li><a href="ViewAllCounsellors">View All Counsellors</a></li>
                        <li><a href="CounsellorSignup">Add New Counsellor</a></li>


                    </ul>
                </div>
            </div>
        </div>

<!--<p style="background-color: lightgreen;">Record successfully saved!</p>-->
<jsp:include page="counsellorForm.html"></jsp:include>
=======
 <link  rel="stylesheet" href="../css/stylelogin.css" type="text/css" media="all"> 

            <!-- Material Design Bootstrap -->
    <!--<link href="../bootstrap1/bootstrapcss/mdb.min.css" rel="stylesheet">-->
<style>
body {
  font-family: "Lato", sans-serif;
}

.sidenav {
  height: 100%;
  width: 250px;
  position: fixed;
  z-index: 1;
  top: 0;
  left: 0;
  background-color: #004085;
  overflow-x: hidden;
  padding-top: 20px;
}
.sidenav1 {
    height: 60%;
  width: 220px;
  position: fixed;
  z-index: 1;
  top: 70px;
  left: 10px;
  background-color: #ffffff;
  overflow-x: hidden;
  padding-top: 15px;
}

.sidenav1 a {
  padding: 6px 15px 6px 16px;
  text-decoration:none;
  font-size: 15px;
  color: #000000;
  display: block;
}

.sidenav1 a:hover {
    color: #ffffff;
    background-color: #59cbea ;
}
.change a:hover{
    color: blue;
    background-color: #ffffff;
}
.change a:active{
    color: blue;
    text-decoration: underline;
}
/*.main {
  margin-left: 160px;  Same as the width of the sidenav 
  font-size: 28px;  Increased text to enable scrolling 
  padding: 0px 10px;
}*/

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}
</style>




   <!-- Font Awesome -->
  

</head>
 <body style="background-color: whitesmoke">
        <div class="sidenav">
   <div class="sidenav1">
  <a href="dean/"><i class="fa fa-home" style='font-size:18px'></i> Home</a>
  <a href="dean/viewsessions.jsp"><i class="fas fa-eye" style='font-size:18px'></i> View Appointments</a>
  <a href="ViewAllCounsellors"><i class="fas fa-eye" style='font-size:18px'></i> View Counsellors</a>
  <a href="CounsellorSignup"><i class="fas fa-user-plus" style='font-size:18px'></i> Add Counsellor</a>
  <a href="dean/approveschedules.jsp"><i class='far fa-edit' style='font-size:18px'></i> Approve Schedules</a>
  <a href="AboutUs/contact.jsp"><i class="fas fa-address-book" style='font-size:18px'></i> Contact Us</a>
  <a href="AboutUs/about.jsp"><i <i class="fas fa-users" style='font-size:18px'></i> About Us</a>
  <div class="change">
  <a href="dean/changepassword.jsp" style=" font-style: italic"><i class="fas fa-key" style='font-size:18px'></i> Change Your Password ?</a>
  </div>
</div>
        </div>

        <div class="topnav fixed-top" style="background-color: #4062b7; margin-left: 250px">
    <nav class="navbar navbar-expand-md ">
        <p style="color: white; margin-left: 300px"> Egerton University Appointment Booking Systems.</p> 
        <ul class="navbar-nav ml-auto">
            
          
            <li class="nav-item">
                <a class="nav-link active" href="ViewAllCounsellors" style="color: white">View Counsellors</a>
            </li>
            <!--
            <li class="nav-item">
                <a class="nav-link" href="viewsessions.jsp"> View Appointments</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="approveschedules.jsp">Approve Counsellor Schedules</a>
            </li>>-->
            
            <li class="nav-item">
                <a  class="nav-link" href="../logout.jsp" style="color: white"><i class="fa fa-power-off" style="font-size:20px"></i> logout</a>
            </li>  </ul>
      
    </nav>
    </div>
        
<!--<p style="background-color: lightgreen;">Record successfully saved!</p>-->
<% String messages = request.getAttribute("ErrorMessage").toString();
            if(messages.equals(null)){
                messages = "";
            }
        %>
      <div class="text-danger text-center"><p><%=messages%></p></div>
<jsp:include page="counsellorForm.jsp"></jsp:include>
>>>>>>> f62671d8b8910ce51639cd5790c9745a6c0be378
<div class="footer">
       <jsp:include page="../includes/footer.jsp"/>
    </div>
</body>
</html>