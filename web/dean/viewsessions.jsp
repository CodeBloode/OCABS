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
    <link rel="stylesheet" type="text/css" href="../bootstrap/bootstrapcss/bootstrap.min.css">
    <script type="text/javascript" src="../jquery/jquery-3.3.1.js"></script>
    <link rel="stylesheet" href="../css/datepicker.css">
    <script type="text/javascript" src="../js/bootstrap-datepicker.js"></script>
    <title>Schedules</title>


     <!-- SCRIPTS -->
<script type="text/javascript" src="../bootstrap1/bootstrapjs/bootstrap.bundle.js"></script>
<script type="text/javascript" src="../bootstrap1/bootstrapjs/bootstrap.min.js"></script>
<script type="text/javascript" src="../bootstrap1/bootstrapjs/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="../bootstrap1/bootstrapjs/bootstrap.js"></script>

   <!--This bootstrap jquery disaples the date picker.let it remain commented please-->
<!-- <script type="text/javascript" src="../bootstrap/bootstrapjs/jquery-3.3.1.min.js"></script> -->
<script type="text/javascript" src="../bootstrap1/bootstrapjs/mdb.min.js"></script>
<script type="text/javascript" src="../bootstrap1/bootstrapjs/popper.min.js"></script>

<link rel="stylesheet" type="text/css" href="../bootstrap1/bootstrapcss/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../bootstrap1/bootstrapcss/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../bootstrap1/bootstrapcss/bootstrap-grid.css">
<link rel="stylesheet" type="text/css" href="../bootstrap1/bootstrapcss/bootstrap-grid.min.css">
<link rel="stylesheet" type="text/css" href="../bootstrap1/bootstrapcss/bootstrap-reboot.min.css">
<link rel="stylesheet" type="text/css" href="../bootstrap1/bootstrapcss/font-awesome.min.css"> 
             <!-- MDB core JavaScript -->
<link rel="stylesheet" type="text/css" href="../bootstrap1/bootstrapcss/mdb.min.css">


        <link  rel="stylesheet" href="../css/stylelogin.css" type="text/css" media="all">

            <!-- Material Design Bootstrap -->
    <link href="../bootstrap1/bootstrapcss/mdb.min.css" rel="stylesheet">




    <link rel="stylesheet" type="text/css" href="../css/style.css">

</head>
<body>

 <div class="topnav fixed-top" style="background-color: forestgreen">
    <nav class="navbar navbar-expand-md ">
        <ul class="navbar-nav ml-auto">
            <li class="nav-item">
                <a class="nav-link" href="deanhomepage.jsp">Home</a>
            </li>
            <li class="nav-item">
                <a class="nav-link active" href="viewsessions.jsp"> Views Session</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="approveschedules.jsp">Approve Schedules</a>
            </li>
<!--            <li class="nav-item">
                <a class="nav-link" href=""> New Counsellor</a>
            </li>
            <li class="nav-item">
                <a  class="nav-link" href="">Logout</a>
            </li>
-->
        </ul>
    </nav>
    </div>


        <div style="height:auto; width: auto; margin-top: 120px" class=" text-center;">
        <div class="flex-center flex-column"  >
<!-- <div class="container" style="margin-top: 120px "> -->

<h4 style="float: left;">
    Booked sessions are:
</h4>
<br><br>
<div>
    <form action="" method="get">
        <input type="text" id= "datepicker" name="from" placeholder="From" autocomplete="off">
       
        <input type="text" name="to" placeholder="To" id="to" autocomplete="off">
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
        <input type="text" id= "from1" name="from" placeholder="From" autocomplete="off">
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
        <input type="text"  name="to" placeholder="To" id="to1" autocomplete="off">
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
