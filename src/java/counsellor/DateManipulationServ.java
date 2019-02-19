/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package counsellor;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpSession;
/**
 *
 * @author root
 */
public class DateManipulationServ extends HttpServlet {

    String message = null   ;
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    /**protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            
          //Getting valus from the JSP setsech page

        int hours = Integer.parseInt(request.getParameter("hduration"));
        int days = Integer.parseInt(request.getParameter("daysoff"));
        String dateaway=request.getParameter("date_away");
        String timeaway=request.getParameter("time_away");
        String reason=request.getParameter("reason");
        
            SetSecheduleBean dataobj = new SetSecheduleBean();
            
            dataobj.setHours(hours);
            dataobj.setDays(days);
            dataobj.setDateaway(dateaway);
            dataobj.setTimeaway(timeaway);
            dataobj.setReason(reason);
            
      dataobj = ScheduleDAO.setSechedule(dataobj);
   
    String myTime = timeaway;
    String mydate = dateaway;
    SimpleDateFormat sdf = new SimpleDateFormat("HH:mm:ss");
    SimpleDateFormat dtt = new SimpleDateFormat("yyy-MM-dd");
    
    Date date = null;
    Date date2 = null;
    
    try {
        date = sdf.parse(myTime);
        date2 = dtt.parse(mydate);
    } catch (ParseException e) {
        e.printStackTrace();
    }
    String formattedTime = sdf.format(date);
    String formatteddate = dtt.format(date2);

    System.out.println(formattedTime);
    System.out.println(formatteddate);
    
   
   
    org.joda.time.format.DateTimeFormatter formatter = org.joda.time.format.DateTimeFormat.forPattern( "yyyy-MM-dd" );
    org.joda.time.DateTime dateTimeInUTC = formatter.withZoneUTC().parseDateTime(mydate);
    System.out.println(org.joda.time.format.ISODateTimeFormat.date().print( dateTimeInUTC.plusDays(days) ) );
      
    // creates calendar
    Calendar cal = Calendar.getInstance(); 
    
    // sets calendar time/date
    cal.setTime(date);                      
    
    cal.add(Calendar.HOUR_OF_DAY, hours);
    System.out.println(sdf.format(cal.getTime())); // retur
     
    String dateback = sdf.format(dateTimeInUTC.plusDays(days));
    String timeback = sdf.format(sdf.format(cal.getTime()));
  
        
    
        }
    }*/

   
         @Override
      protected void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
        
          request.setAttribute("Message", message);
          request.getRequestDispatcher("counsellor/setsech.jsp").forward(request, response);
        
        
    }

      
      
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession(true);
        String username = session.getAttribute("userSession1").toString();
        System.out.println("session user "+username);
        
        int hours = Integer.parseInt(request.getParameter("hduration"));
        int days = Integer.parseInt(request.getParameter("daysoff"));
        String dateaway=request.getParameter("date_away");
        String timeaway=request.getParameter("time_away");
        String reason=request.getParameter("reason");
        
            SetSecheduleBean dataobj = new SetSecheduleBean();
            
            dataobj.setHours(hours);
            dataobj.setDays(days);
            dataobj.setDateaway(dateaway);
            dataobj.setTimeaway(timeaway);
            dataobj.setReason(reason);
            dataobj.setCounselor(username);
            
        try {
            dataobj = ScheduleDAO.setSechedule(dataobj);
            
            if(dataobj.isValid()){
                
                message = "Schedule set.Wait for Approval";
                request.setAttribute("Message", message);
                response.sendRedirect("DateManipulationServ?Schedule set.Wait for Approval");
            }
            else{
                message = "Unable to set Schedule";
                request.setAttribute("ErrorMessage", message);
                response.sendRedirect("DateManipulationServ?Unable to set Schedule");
            }
            
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DateManipulationServ.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Servlet that gets input date and time and calculates nect time back for set schedule";
    }// </editor-fold>

}
