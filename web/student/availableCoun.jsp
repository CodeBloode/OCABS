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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>available counsellors</title>
    </head>
    <body>
        <c:forEach items="${counsellor_id}" var="counsellors">
            ${counsellors.couns_id}<br>
        </c:forEach>
    </body>
</html>
