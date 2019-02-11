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
<link rel="stylesheet" type="text/css" href="../bootstrap1/bootstrapcss/mdb.min.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">
<!-- Bootstrap core CSS -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.2.1/css/bootstrap.min.css" rel="stylesheet">
<!-- Material Design Bootstrap -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.7.0/css/mdb.min.css" rel="stylesheet">
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
                        <li><a href="addCounsellorForm.jsp">Add New Counsellor</a></li>


                    </ul>
                </div>
            </div>
        </div>

<!--<p style="background-color: lightgreen;">Record successfully saved!</p>-->
<jsp:include page="counsellorForm.html"></jsp:include>
<div class="footer">
       <jsp:include page="../includes/footer.jsp"/>
    </div>
</body>
</html>