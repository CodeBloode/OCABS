/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package student;

import java.sql.*;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import login.ConnectionManager;

/**
 *
 * @author linuxpc
 */
public class AddDate extends HttpServlet {
    
     static Connection connection = null;
     static ResultSet rs = null;
     static PreparedStatement stmt = null;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        request.getRequestDispatcher("student/studentBooking.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        StudentBean bn = new StudentBean();
        
        String date = request.getParameter("date");
        String time = request.getParameter("time");
        //StudentBean bn1 = new StudentBean();
        bn.setDate(date);
        bn.setTime(time);

        System.out.println("date range : " +date);
        System.out.println("Time range : " + time);
        //getting data from database new code
        
         //fetch  date and time from  DB
        String query = "select couns_Id  from schedule where status = 'available' and date = ? and time = ?";
        
        try{
            try{
                
                 connection = ConnectionManager.getConnect();
                 System.out.println("conneceted to database...");
                 stmt = connection.prepareStatement(query);
                 stmt.setString(1, date);
                 stmt.setString(2,time);
                 
                 rs = stmt.executeQuery();
                 ArrayList dbdata = new ArrayList();
                 
                 while(rs.next()){
                     int counselor_id = rs.getInt("couns_Id");
                     StudentBean newbn = new StudentBean(counselor_id);
                     dbdata.add(newbn);
                 }
                 
                 System.out.println(dbdata);
                 request.setAttribute("counsellor_id", dbdata);
              request.getRequestDispatcher("student/availableCoun.jsp").forward(request, response);
            }catch(SQLException e){
                
            }
           
        }catch(ClassNotFoundException ex){
            
        }
       
        finally{
            if(rs != null){
                try{
                    rs.close();
                }catch(Exception e1){
                    rs = null;
                }
            }
            
            if(stmt != null){
                try{
                    stmt.close();
                }catch(Exception e2){
                    stmt = null;
                }
            }
            
            if(connection != null){
                try{
                    connection.close();
                }catch(Exception e1){
                    connection = null;
                }
            }
        }
    }
}
