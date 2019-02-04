<%-- 
    Document   : addUserSuccess
    Created on : Jan 19, 2019, 12:45:40 PM
    Author     : Alex
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- Font Awesome -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">
<!-- Bootstrap core CSS -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.2.1/css/bootstrap.min.css" rel="stylesheet">
<!-- Material Design Bootstrap -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.7.0/css/mdb.min.css" rel="stylesheet">
<title>Add Counsellor Success</title>
</head>
<body>
<%@ include file="header.html" %>

<p style="background-color: lightgreen; margin-right: 87%">Record successfully saved!</p>
<jsp:include page="counsellorForm.html"></jsp:include>
<jsp:include page="../includes/footer.jsp"></jsp:include>

</body>
</html>
