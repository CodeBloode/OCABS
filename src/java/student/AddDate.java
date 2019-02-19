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

/**
 *
 * @author linuxpc
 */
public class AddDate extends HttpServlet {
    
     static Connection connection = null;
     static ResultSet rs = null;
     static PreparedStatement stmt = null;
     String messages="";
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setAttribute("messages", messages);
        request.getRequestDispatcher("student/studentBooking.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
       addDateBean dttm = new addDateBean();
       String dt = request.getParameter("date");
       String tm = request.getParameter("time");
       
       dttm.setDt(dt);
       dttm.setTm(tm);
       
       ArrayList<addDateBean> counselors = addDatedao.listofCounsellors();
        System.out.println(counselors);
        
        request.setAttribute("counsellors", counselors);
         request.getRequestDispatcher("student/availableCoun.jsp").forward(request,response);
        
        System.out.println("Time for Appointment"+tm);
        System.out.println("Date of appoinment"+dt);
    }
}
