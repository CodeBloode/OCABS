<%-- 
    Document   : approveschedules
    Created on : Jan 16, 2019, 8:12:28 AM
    Author     : Alex
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<HTML lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <script type="text/javascript" src="../jquery/jquery-3.3.1.js"></script>
    <link rel="stylesheet" href="css/datepicker.css">
    <script type="text/javascript" src="js/bootstrap-datepicker.js"></script>
    
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
    <link href="../bootstrap/bootstrapcss/mdb.min.css" rel="stylesheet">




 <link rel="stylesheet" type="text/css" href="css/style.css">
    <title>Schedules</title>
  <link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="stylesheet" type="text/css"/>
  <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.5/jquery.min.js"></script>
  <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"></script>

  <script>

  $(document).ready(function() {
    $("#datepicker").datepicker();
  });

  </script>
</head>
<body>
<div class="topnav" style="background-color: #4062b7">
    <nav class="navbar navbar-expand-md ">
        <ul class="navbar-nav ml-auto">
            <li class="nav-item">
                <a class="nav-link " href="index.jsp">Home</a>
            </li>
            <li class="nav-item">
                <a class="nav-link " href="viewsessions.jsp">Views Session </a>
            </li>
            <li class="nav-item">
                <a class="nav-link active" href="approveschedules.jsp">Approve Schedules</a>

        </ul>
    </nav>

</div>
<h4 style="float: left;">
    Unavailable Counsellors 
</h4>
<br><br>
<div>
    <form action="#" method="get">
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
        <button type="submit" name="get"><span>Search <img src="../images/search.png" title="" alt="" height="17" width="17" /></span></button>
    </form>
    </table>
</div>


<br><br>
<div>
    <form action="" method="get">
        <h4>Print Schedule for Away Counsellors</h4>

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

    <br><br>
    <div>
        <h4>Approve schedule of counsellors</h4>
        <form action="" method="POST">

        <lable > Counsellor Number</lable>
            <br>
            <select name="counsellor">
                <option value="">-- NONE --</option>
                <option value="counsellor 1"> counsellor 1 </option>
                <option value="counsellor 2"> counsellor 2 </option>
                <option value="counsellor 3"> counsellor 3 </option>
                <option value="counsellor 4"> counsellor 4 </option>
                <option value="counsellor 5"> counsellor 5 </option>
                <option value="counsellor 6"> counsellor 6 </option>
                <option value="counsellor 7"> counsellor 7 </option>
                <option value="counsellor 8"> counsellor 8 </option>
            </select>
            <br>

            <input type="text" id= "from2" name="from" placeholder="Date Away" autocomplete="off" readonly="readonly">
            <script type="text/javascript">

                $(document).ready(function(){


                    $("#from2").datepicker({
                        numberOfMonth:1,
                        format: 'yyyy/mm/dd',
                        todayHighlight:true,
                        autoclose:true,

                    });

                })
            </script>

            <button type="submit" name="approve">Approve</button>
        </form>
    </div>
</div>
<br><br><br><br><br><br><br><br><br><br><br><br>
<div class="footer">
    <jsp:include page="../includes/footer.jsp"/> 
</div>
</body>
    </HTML>
