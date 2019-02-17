/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package counsellor;

//import java.io.IOException;
//import java.io.PrintWriter;
//import java.sql.Connection;
//import java.sql.DriverManager;
//import java.sql.ResultSet;
//import java.sql.SQLException;
//import java.sql.Statement;
//import java.util.ArrayList;
//import java.util.logging.Level;
//import java.util.logging.Logger;
//import javax.servlet.ServletException;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;


import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.sql.*;
import java.sql.*;
import java.util.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import login.ConnectionManager;

/**
 *
 * @author root
 */
public class Search extends HttpServlet {
    static PreparedStatement stmt = null;
    static ResultSet rs = null;
    static Connection connection = null;
    
   protected void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
       
       request.getRequestDispatcher("counsellor/viewapp.jsp").forward(request, response);
       
       
        
    }
   
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        System.out.println("inside servlet ....");
       searchbean search = new searchbean();
       
       String formdate = request.getParameter("dater");
       
       search.setDate(formdate);
       
       System.out.println("requested date : "+search.getDates());
       
       //query
       
       String query = "select * from appointments where date=?";
       
        try {
            connection = ConnectionManager.getConnect();
            System.out.println("Connected to database...");
            stmt = connection.prepareStatement(query);
            stmt.setString(1, formdate);
            rs= stmt.executeQuery();
            System.out.println("Query executed..");
            ArrayList data = new ArrayList();
            
            while(rs.next()){
                
                String reg = rs.getString("Reg_No");
                String couns = rs.getString("Couns_No");
                String dt = rs.getString("date");
                String st = rs.getString("Start_Time");
                String et = rs.getString("End_Time");
                
                searchbean newdata = new searchbean(dt,couns,reg,st,et);
                data.add(newdata);
            }
            
            request.setAttribute("viewdetails", data);
            System.out.println("records : " +data);
             request.getRequestDispatcher("counsellor/searchview.jsp").forward(request, response);
            //response.sendRedirect("searchView?search results available");
          
            
            
                       
            
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Search.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Search.class.getName()).log(Level.SEVERE, null, ex);
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
                }catch(Exception e1){
                    stmt = null;
                }
            }
            
            if(connection != null){
                try{
                    
                }catch(Exception e1){
                    connection = null;
                }
            }
        }
        
  }
   
    @Override
    public String getServletInfo() {
        String description="Search servlet is used to fetch booked sessions for a specific counsellor";
        
        return description;
    }// </editor-fold>
}
   
