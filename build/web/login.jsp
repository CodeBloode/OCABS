<%-- 
    Document   : index
    Created on : Jan 13, 2019, 3:53:06 PM
    Author     : root
--%>

<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <title>login</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
         <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
         <link rel="stylesheet" href="bootstrap/css/mdb.min.css">
         <link rel="stylesheet" href="css/coverstyle.css">
         <link href="//fonts.googleapis.com/css?family=Oswald:200,300,regular,500,600,700&subset=latin-ext,vietnamese,latin,cyrillic" rel="stylesheet" type="text/css" />

    </head>
    <body>
        <jsp:include page="includes/nav.html"/>
      
        <div class="container mt-5 ml-auto mr-auto" id="login">
            
            <form action="login" Method="POST">
            <div class="col-md-4 offset-4">
                <br/> <br/>
                <h2 class="h2-responsive text-center mt-2"> Login</h2>
                <table border="0" cellspacing="10" cellpadding="7">
                    <tr>
                        <td></td>
                            <td>
                                <h5> Login in as</h5>
                                <select name="user" style="height:35px; width:175px;">
                                    <option value="student">Student</option>
                                     <option value="counsellor">Counsellor</option>
                                      <option value="dean">Dean</option>
                                </select><br> <br>
                            </td>
                    
                        </tr>
                    
                        <tr>
                            <td>Username:</td>
                            <td>
                                <input type="text" class="form-group" name="username" placeholder="Username" required>
                            </td>
                        </tr>
                        <tr>
                            <td>Password:</td>
                            <td>
                                <input type="password" class="form-group" name="pwd" placeholder="Password" required>
                            </td>
                        </tr>
                        
                    </tbody>
                </table>               
               <input type="submit" class="btn btn-primary" value="Login">
            </div>
                </form>
        </div>

       
         
         <jsp:include page="includes/footer.jsp" />
            
        </div>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="bootstrap/js/jquery-3.3.1.min"></script>
    <script src="bootstrap/js/popper.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
        
    </body>
</html>

