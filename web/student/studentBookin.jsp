
<%@ page language="java"
         contentType="text/html" 
         pageEncoding="UTF-8"
         %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" href="../bootstrap1/bootstrapcss/bootstrap.css">
        <link rel="stylesheet" type="text/css" href="../bootstrap1/bootstrapcss/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="../bootstrap1/bootstrapcss/bootstrap-grid.css">
        <link rel="stylesheet" type="text/css" href="../bootstrap1/bootstrapcss/bootstrap-grid.min.css">
        <link rel="stylesheet" type="text/css" href="../bootstrap1/bootstrapcss/bootstrap-reboot.css">
        <link rel="stylesheet" type="text/css" href="../bootstrap1/bootstrapcss/bootstrap-reboot.min.css">
        <link rel="stylesheet" type="text/css" href="../bootstrap1/bootstrapcss/font-awesome.min.css">

        <script src="js/jquery.min.js"></script>
        <script src="../jquery/jquery.min.js"></script>



        <script type="text/javascript">


            $(document).ready(function () {

               // DatePicker Example
              $('#datetimepicker').datetimepicker();



                //Inline DateTimePicker Example

                $('#datetimepicker2').datetimepicker({
                   format: 'Y-m-d H:i ',
                   inline: true






                });


            });



        </script>

    </head>
    <body>
        <jsp:include page="../includes/nav.html"/>
        <nav class="navbar navbar-default navbar-static-top">
            <div class="container">

                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a target="_blank" href="/login.jsp">Home</a></li>

                    </ul>
                </div><!--/.nav-collapse -->
            </div>
        </nav>
        <div class="container">
            <h2 class="text-center p-3 mb-2 text-white" style="background-color: #4062b7" margin>Book Counsellor</h2>
            <div style="margin-left: 450px; margin-top: 60px;">

                <div class="row">

                    <form action=" " method="post">
                        <label style="font-size: 25px"><b>Pick date and time<b></label><br><br>
                        <input type="text" id="" name="date"/><br><br>
                        <input type="submit" name="submit" value="Next">
                     </form><br><br>

<!--                                    <form action="../PickCounsellor" method="post">
                                        <label style="font-size: 25px" ><b>Select Counsellor<b></label><br><br>

                                                    <select name="counsellors">
                                                        <option value="counsellor1">Counsellor1</option>
                                                        <option value="counsellor2">Counsellor2</option>
                                                        <option value="counsellor3">Counsellor3</option>
                                                        <option value="counsellor4">Counsellor4</option>
                                                        <option value="counsellor5">Counsellor5</option>
                                                        <option value="counsellor6">Counsellor6</option>
                                                        <option value="counsellor7">Counsellor7</option>
                                                        <option value="counsellor8">Counsellor8</option>

                                                    </select><br><br>

                                                    <input type="submit" name="submit" value="Submit" href="index.jsp">


                                                    </form>-->
                                                    </div>
                                                    </div>
                                                    </div>
                                                    <div class="bottom-buffer"></div>
                                                    </div>
                                                    <jsp:include page="../includes/footer.jsp" />
                                                    </body>
                                                    <!-- Latest compiled and minified JavaScript -->
                                                    <link rel="stylesheet" type="text/css" href="../css/jquery.datetimepicker.min.css"/>
                                                    <script src="../jquery/jquery.datetimepicker.js"></script>
                                                    </html>