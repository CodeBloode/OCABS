/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package counsellor;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.*;
import java.sql.*;
import java.io.*;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.format.DateTimeFormatter;
import java.util.Calendar;
import java.util.Locale;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author root
 */
public class ServletDAO extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    public void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
        response.setContentType("text/html");

        {
            
            //Getting valus from the JSP setsech page

               int hours = Integer.parseInt(request.getParameter("hduration"));
               int days = Integer.parseInt(request.getParameter("daysoff"));
               String dateaway=request.getParameter("date_away");
               String timeaway=request.getParameter("time_away");
               String reason=request.getParameter("reason");
               
               DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
               SimpleDateFormat timepicked = new SimpleDateFormat("H:mm:ss");
                 Date time = null;
            try {
                   java.util.Date date = format.parse(dateaway);
                //time = timepicked.parse(timeaway);
                System.out.println("Selected date = "+date);
               // System.out.println("Selected time ="+time);
            } catch (ParseException ex) {
                Logger.getLogger(ServletDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
//            DateTimeFormatter date = DateTimeFormatter.ofPattern("yyyy-MM-dd");
//            
//            DateTimeFormatter time = DateTimeFormatter.ofPattern("HH:mm:ss");
//            
//            
//            Date dateawy = (Date) date.parse( dateaway );
//            Date timeawy = (Date) time.parse( timeaway );
//            

               
                //Setting database connection 
                
//                        Connection conn = null;
//			String url = "jdbc:mysql://localhost:3306/";
//			String dbName = "codebloode2";
//			String driver = "com.mysql.jdbc.Driver";
//			String userName = "root"; 
//			String password = "console";
//                        
//                ResultSet rs;
                
//                try {
//                    
//         // Load the  Database driver and Creating a connection 
//  
//            Class.forName(driver).newInstance();
//				conn = DriverManager.getConnection(url+dbName,userName,password);
//				System.out.println("Connected to the database");
//
//
//            //insert the values into the database
//
//            String sql = "INSERT INTO codebloode2.schedule (Date_Away,Time_Away,Days_Away,Hours_Away,Reason) VALUES (?,?,?,?,?)";
//            
//            PreparedStatement prep = 
//            conn.prepareStatement(sql);
//
//            
//            
//                // Setting the values which we got from JSP form
//                  prep.setString(1, dateaway);
//                prep.setString(2, timeaway);
//                prep.setInt(3, days);
//                  prep.setInt(4, hours);
//                  prep.setString(5, reason);
//                  
//                  prep.executeUpdate();
//                  prep.close();
//                  
//                      conn.close();
//                        System.out.println("Disconnected from database");
//                    }catch (Exception e) {
//			e.printStackTrace();
//		       
//                }
//                
         }
        
      // response.sendRedirect("ServletDAO?Sechdule sent to Dean Successfully");
    }

            @Override
      protected void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
        request.getRequestDispatcher("counsellor/setsech.jsp").forward(request, response);
       
    }

    @Override
       public String getServletInfo() {
           String description="Insert servlet is used to set the counsellor's schedule";

           return description;
       }   
}
