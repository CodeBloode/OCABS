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
</head>
<body style="background-color: whitesmoke">
<%@ include file="header.html" %>

<!--<p style="background-color: lightgreen;">Record successfully saved!</p>-->
<jsp:include page="counsellorForm.html"></jsp:include>
<div class="footer">
       <jsp:include page="../includes/footer.jsp"/>
    </div>
</body>
</html>