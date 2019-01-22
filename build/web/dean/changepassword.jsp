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


<!--    <link  rel="stylesheet" href="../css/stylelogin.css" type="text/css" media="all"> -->

            <!-- Material Design Bootstrap -->
    <link href="../bootstrap1/bootstrapcss/mdb.min.css" rel="stylesheet">


    </head>
    <body>
<%@ include file="header.html" %>  <br>
 
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
        <div class="footer">
           <jsp:include page="../includes/footer.jsp"/> 
        </div>
    </body>
    </html>