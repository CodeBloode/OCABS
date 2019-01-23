<%--                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
    Document   : setsech.jsp
    Created on : Jan 22, 2019, 12:57:25 PM
    Author     : root
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Set Schedule</title>
          
        <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
    </head>
    <body>
         <jsp:include page="../includes/counsnav.html"/>
                <h2 style=" margin-top: 48px; text-align: center;"> <i>Please set your Schedule</i></h2>
           <br/>

       <div class="container">
           <form>

                   <div class="container" Style="float: left; width: 220px; align-content: center; margin-left: 333px ">
                   <label>Date Away</label><br/>
                   <input type="text" name="date_away" class="form-control" id="date" required autocomplete="off" style="max-width: 200px">


       <br>

                   <label>Time Away</label><br>
                   <input type="text" name="time_away" class="form-control" id= "timepicker" required autocomplete="off" style="max-width: 200px">

                   <br>
                   </div>

       <div class="container" Style="float: right; width: 220px; align-content: center; margin-right: 333px">
                   <label>Hours Away</label><br/>
                   <select name="hduration" class="form-control" autocomplete="off" id="hduration" style="max-width: 200px">

                       <option value="-01" disabled>HH</option>
     
                      

                   </select><br/>




                   <label>Days Away</label><br/>
                   <select name="daysoff" class="form-control" autocomplete="off" id="daysduartion" style="max-width: 200px">
                       <option value="-01" disabled>DD</option>
                      


                   </select><br/>

       </div>
                  <div class="container" Style=" float: left; align-content: center; margin-left: 400px; width: 400px">

                   <label>Reason</label><br>

                   <textarea name="reason" rows="3" class="form-control" cols="25" autocomplete="off" id="reason" style="max-width: 300px"> </textarea>



                   <br/>
                   <input type="submit" class="btn btn-primary mb-2" name="set" value="submit"
onClick="validate(this.form)"  style="margin-right: 200px" onclick="return(confirmSchedule())"/>
                   </div>
               </form>
       </div>
           
           <script>
                $(function() {
                   $( "#date" ).datepicker();
                 });
                </script>
                
                <script>
                    function vadidate(form){
                        else if(form.date_away.value=""){
                            alert)("Please enter the date");
                            form.date_away.focus);
                        }
                        
                        else if(form.time_away.value=""){
                            alert)("Please enter the time");
                            form.time_away.focus);
                        }
                        if(form.hduration.value=""){
                            alert)("Please enter the Hours");
                            form.hduration.focus);
                        }
                        else if(form.daysoff.value=""){
                            alert)("Please enter the days you will be away");
                            form.daysoff.focus);
                        }
                        else if(form.reason.value=""){
                            alert)("Please enter the Reason for being away");
                            form.reason.focus);
                        }
                        else{
                            form.submit();
                        }
                    }
                    
                    </script>
            <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
            <script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
           </body>
</html>
