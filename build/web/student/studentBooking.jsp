
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
        <link rel="stylesheet" type="text/css" href="bootstrap1/bootstrapcss/bootstrap.css">
        <link rel="stylesheet" type="text/css" href="../bootstrap1/bootstrapcss/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="../bootstrap1/bootstrapcss/bootstrap-grid.css">
        <link rel="stylesheet" type="text/css" href="../bootstrap1/bootstrapcss/bootstrap-grid.min.css">
        <link rel="stylesheet" type="text/css" href="../bootstrap1/bootstrapcss/bootstrap-reboot.css">
        <link rel="stylesheet" type="text/css" href="../bootstrap1/bootstrapcss/bootstrap-reboot.min.css">
        <link rel="stylesheet" type="text/css" href="../bootstrap1/bootstrapcss/font-awesome.min.css">

<<<<<<< HEAD
        <script src="js/jquery.min.js"></script>
        <script src="../jquery/jquery.min.js"></script>



        <script type="text/javascript">


            $(document).ready(function () {
                //DatePicker Example

                //DatePicker Example
                $('#datetimepicker').datetimepicker();
                beforeShowDay:$.datepicker.noWeekends
            });
function noWeekends
               $#('duration').timepicker({
                  'minTime':'8:00pm',
                 'maxTime':'5:00pm',
                  'showDuration':true
               });
                
             #()       
                            
               
            });
        </script>

    </head>
    <body>
        <div class="jumbotron">

            <jsp:include page="includes/nav.html"/>

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
                <div style="margin-left: 350px; margin-top: 5px;">

                    <div class="row">

                        <form action="AddDate" method="post">
                            <label style="font-size: 25px"><b>Pick date<b></label><br><br>
                                        <input type="date" id="datetimepicker" name="date"/><br>
                                        <label style="font-size: 25px">Time</label><br><br>
                                        <input type="text" id="duration" name="time"/><br><br>
                                        <input type="submit" name="submit"   value="Next" >
                                               
                                        
                                        </form><br>

<!--                                        <form action="../PickCounsellor" method="post">
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
                                                        </div>
                                                        </body>

                                                        <!-- Latest compiled and minified JavaScript -->
                                                        <jsp:include page="includes/footer.jsp"/>
                                                        <link rel="stylesheet" type="text/css" href="../css/jquery.timepicker.min.css"/>
                                                        <link rel="stylesheet" type="text/css" href="../css/jquery.datetimepicker.min.css"/>
                                                        
                                                        </html>
                                                        
=======
         <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <link rel="stylesheet" href="/resources/demos/style.css">
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
          <title>Student|Book</title>


       

<script>
  $( function() {
    $( "#datetimepicker" ).datepicker({beforeShowDay: $.datepicker.noWeekends});
  } );
  </script>
    

    </head>
    <body>
      <jsp:include page="../includes/authenticatednav.html"/>
        
      <br><br>
       <div class="container col-md-4 offset-4">                 
        <form action="AddDate" class="border border-light p-5" Method="post" name="form">
                
                <p class="h4 mb-4 text-center">Select Date and Time to Proceed</p>
              
                <div class="form-group">
                  <label for="datetimepicker" class="font-weight-bolder">Pick date</label>
                  <input type="date" class="form-control" id="datetimepicker"  name="date" required>
                 </div>
                <div class="form-group">
                  <label for="duration" class="text-left font-weight-bolder">Time</label>
                  <input type="text" class="form-control" id="duration" name="time">
                </div>
                                
                <button type="submit" class="btn btn-primary">Next</button>
            
                              <!-- ennd -->
                </form>
       </div>


    <div class="fixed-bottom">
         <%--<jsp:include page="../includes/footer.jsp"/>--%>
    </div>
   
    <link rel="stylesheet" type="text/css" href="../css/jquery.timepicker.min.css"/>
    <link rel="stylesheet" type="text/css" href="../css/jquery.datetimepicker.min.css"/>
    </body>

</html>
>>>>>>> f62671d8b8910ce51639cd5790c9745a6c0be378
