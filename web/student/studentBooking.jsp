
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

        <script src="js/jquery.min.js"></script>
        <script src="../jquery/jquery.min.js"></script>
          <title>Student|Book</title>


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
         <jsp:include page="../includes/footer.jsp"/>
    </div>
   
    <link rel="stylesheet" type="text/css" href="../css/jquery.timepicker.min.css"/>
    <link rel="stylesheet" type="text/css" href="../css/jquery.datetimepicker.min.css"/>
    </body>

</html>
