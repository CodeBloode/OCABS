<%-- 
    Document   : changepassword
    Created on : Jan 16, 2019, 12:14:28 PM
    Author     : Alex
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Change Password</title>
       
<link rel="stylesheet" type="text/css" href="../bootstrap1/bootstrapcss/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../bootstrap1/bootstrapcss/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../bootstrap1/bootstrapcss/bootstrap-grid.css">
<link rel="stylesheet" type="text/css" href="../bootstrap1/bootstrapcss/bootstrap-grid.min.css">
<link rel="stylesheet" type="text/css" href="../bootstrap1/bootstrapcss/bootstrap-reboot.css">
<link rel="stylesheet" type="text/css" href="../bootstrap1/bootstrapcss/bootstrap-reboot.min.css">
<link rel="stylesheet" type="text/css" href="../bootstrap1/bootstrapcss/font-awesome.min.css">
             <!-- MDB core JavaScript -->
<link rel="stylesheet" type="text/css" href="../bootstrap1/bootstrapcss/mdb.min.css">
<link rel="stylesheet" type="text/css" href="cdn/all.css">
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
    <body>
<div id="header">
            <div class="shell">

                <div id="navigation">
                    <ul>
                        <li><a href="index.jsp" class="active">Home</a></li>
                        <li><a href="../ViewAllCounsellors">View All Counsellors</a></li>
                        <li><a href="../CounsellorSignup">Add New Counsellor</a></li>


                    </ul>
                </div>
            </div>
        </div>

 
<div style="margin-left: 40px">
<h3>Dean Password Change.</h3>
        <form action="" method="POST">
            <label> Current Password: </label><br>
            <input type="password" name="currentnewpass" autocomplete="off" id="newp">
            <br><br>
            <label>New  Password: </label><br>
            <input type="password" name="newpass" autocomplete="off" id="cnewp"><br><br>

            <label> Confirm New  Password: </label><br>
            <input type="password" name="cnewpass" autocomplete="off" id="cnewp"><br><br>
            <input type="submit" name="change" value="Change Password">
        </form>
    </div>
        <br><br><br><br><br><br><br><br><br><br><br>
        <div class="footer">
           <jsp:include page="../includes/footer.jsp"/> 
        </div>
    </body>
    </html>