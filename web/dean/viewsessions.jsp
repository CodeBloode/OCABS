<%-- 
    Document   : viewsessions
    Created on : Jan 16, 2019, 7:55:56 AM
    Author     : Alex
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<HTML lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" type="text/css" href="bootstrap/bootstrapcss/bootstrap.min.css">
    <script type="text/javascript" src="jquery/jquery-3.3.1.js"></script>
    <link rel="stylesheet" href="css/datepicker.css">
    <script type="text/javascript" src="js/bootstrap-datepicker.js"></script>
    
    <link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="stylesheet" type="text/css"/>
  <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.5/jquery.min.js"></script>
  <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"></script>

  <script>

  $(document).ready(function() {
    $("#datepicker").datepicker();
  });

  </script>
    <title>Schedules</title>


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

        <link  rel="stylesheet" href="../css/stylelogin.css" type="text/css" media="all">

            <!-- Material Design Bootstrap -->
    <link href="../bootstrap1/bootstrapcss/mdb.min.css" rel="stylesheet">




    <link rel="stylesheet" type="text/css" href="css/style.css">

</head>
<body>

 <div class="topnav fixed-top" style="background-color: #4062b7">
    <nav class="navbar navbar-expand-md ">
        <ul class="navbar-nav ml-auto">
            <li class="nav-item">
                <a class="nav-link" href="index.jsp">Home</a>
            </li>
            <li class="nav-item">
                <a class="nav-link active" href="viewsessions.jsp">Appointments</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="approveschedules.jsp">Approve Schedules</a>
            </li>

        </ul>
    </nav>
    </div>


        <div style="height:auto; width: auto; margin-top: 120px" class=" text-center;">
        <div class="flex-center flex-column"  >
<!-- <div class="container" style="margin-top: 120px "> -->

<h4 style="float: left;">
    Booked Appointments are:
</h4>
<br><br>
<div>
    <form action="" method="get">
        <input type="text" id= "datepicker" name="from" placeholder="From" autocomplete="off" readonly="readonly">
       
        <input type="text" name="to" placeholder="To" id="to" autocomplete="off" readonly="readonly">
    <script type="text/javascript">

$(document).ready(function(){


    $("#to").datepicker({
        numberOfMonth:1,
        format: 'yyyy/mm/dd',
        todayHighlight:true,
        autoclose:true,

    });

})
    </script>
        <button type="submit" name="get"><span>Search <img src="../images/search.png" title="" alt="" height="17" width="17" /></span></button> <br><br><br>
    </form>

    <br><br>
</div>


   <h4>
       Select Date Below And Print The Booked Sessions
   </h4>

    <form action="" method="get">
        <input type="text" id= "from1" name="from" placeholder="From" autocomplete="off" readonly="readonly">
        <script type="text/javascript">

            $(document).ready(function(){


                $("#from1").datepicker({
                    numberOfMonth:1,
                    format: 'yyyy/mm/dd',
                    todayHighlight:true,
                    autoclose:true,

                });

            })
        </script>
        <input type="text"  name="to" placeholder="To" id="to1" autocomplete="off" readonly="readonly">
        <script type="text/javascript">

            $(document).ready(function(){


                $("#to1").datepicker({
                    numberOfMonth:1,
                    format: 'yyyy/mm/dd',
                    todayHighlight:true,
                    autoclose:true,

                });

            })
        </script>

        <button type="submit" name="print">Print</button>
    </form>
    </div>
    </div>
</body>>

<div class="footer">
    <jsp:include page="../includes/footer.jsp"/>
    </div>
</body>
</HTML>
