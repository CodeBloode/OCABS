<%-- 
    Document   : signup
    Created on : Jan 14, 2019, 11:44:48 PM
    Author     : root
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <title>Signup</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
         <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
         <link rel="stylesheet" href="css/coverstyle.css">
         <link href="//fonts.googleapis.com/css?family=Oswald:200,300,regular,500,600,700&subset=latin-ext,vietnamese,latin,cyrillic" rel="stylesheet" type="text/css" />
         <link rel="stylesheet" href="bootstrap/css/mdb.min.css">
    </head>
    <body>
        <jsp:include page="includes/nav.html"/>
        <div class="col-md-4 offset-4">
            <br> <br><br> <br>
            <form action="signup" Method="POST">
                <h2 class="h2-responsive text-center mt-2"> Signup</h2>
                <table border="0" cellspacing="3" cellpadding="5">
                    <tbody>
                        <tr>
                            
                        </tr>
                        <tr>
                            <td>First Name </td>
                            <td>
                                 <input type="text" class="form-group" name="firstname" placeholder="First Name" required>
                            </td>
                        </tr>
                        <tr>
                            <td>Last Name</td>
                            <td>
                                 <input type="text" class="form-group" name="lastname" placeholder="Last Name" required>
                            </td>
                        </tr>
                        <tr>
                            <td>Reg Number</td>
                            <td>
                                 <input type="text" class="form-group" name="regno" placeholder="Reg No" required>
                            </td>
                        </tr>
                        <tr>
                            <td>Password</td>
                            <td>
                                <input type="password" class="form-group" name="pwd" placeholder="Password" required>
                            </td>
                        </tr>
                        <tr>
                            <td>Confirm Password</td>
                            <td>
                                <input type="password" class="form-group" name="cpwd" placeholder="Confirm Password" required>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <br> <br>
                <input type="submit" onclick="validate()" class="btn btn-primary" value="Signup">

         </form>
         <jsp:include page="includes/footer.jsp" />
            
        </div>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
     <script src="bootstrap/js/jquery-3.3.1.min"></script>
    <script src="bootstrap/js/popper.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
        
    </body>
</html>