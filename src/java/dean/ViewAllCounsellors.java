/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dean;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.*;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



public class ViewAllCounsellors extends HttpServlet {
  protected void doGet(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    response.setContentType("text/html");
    PrintWriter out = response.getWriter();
    out.println("<html>");
    out.println("<head><title>All Counsellors</title></head>");
    out.println("<body>");
    
    request.getRequestDispatcher("/dean/header.html").include(request, response);
   // out.println("<%include  page=\"includes/nav.html\">");
    out.println("<center><h1>Counsellors List</h1>");
    Connection conn = null;
    Statement stmt = null;
      
    try {
         Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/codebloode", "root", "Alex1234");
      
      PreparedStatement ps = conn.prepareStatement("SELECT id, f_name, email, gender, phone, status, u_name from counsellor_auth");
      ResultSet rs = ps.executeQuery();
     out.println("<table border=1 cellpadding=1 cellspacing=0 width=75%>");
        out.print("<tr>");
        out.println("<th>Id</th><th>Counsellor Name</th><th>Counsellor No.</th><th>Email</th><th>Gender</th><th>Phone</th><th>Status</th><th>Edit</th><th>Delete</th></tr>");
        
      while (rs.next()) {
        int counsid = rs.getInt("id");
        String counsname = rs.getString("f_name");
         String counsuname = rs.getString("u_name");
        String counsemail = rs.getString("email");
        String  counsgender = rs.getString("gender");
        String counsphone = rs.getString("phone");
        String  counsstatus = rs.getString("status");
       
      out.println("<tr>");
        out.println("<td>"+counsid +"</td>"+ "<td>"+counsname +"</td>" +"<td>"+counsuname+"</td><td>"+counsemail +"</td>"
        +"<td>"+counsgender +"</td>"
        +"<td>"+counsphone +"</td>"
        +"<td>"+counsstatus +"</td>"
        +"<td><a href=\"updateForm.jsp?id=${u.getId()}\">Edit</a></td><td><a href=\"DeleteUser.jsp?id=${u.getId()}\">Delete</a></td>");       
       out.println("</tr>");
      }
        out.println("</table>");
    } catch (SQLException e) {
      out.println("An error occured while retrieving " + "all counsellors: " 
          + e.toString());
    } catch (ClassNotFoundException e) {
      throw (new ServletException(e.toString()));
    } finally {
      try {
        if (stmt != null) {
          stmt.close();
        }
        if (conn != null) {
          conn.close();
        }
      } catch (SQLException ex) {
      }
    }
    out.println("</center>");
    out.println("<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>");
    request.getRequestDispatcher("/includes/footer.jsp").include(request, response);
    out.println("</body>");
    out.println("</html>");
    out.close();
    
    //response.sendRedirect("/ViewAllCounsellors");
    request.getRequestDispatcher("ViewAllCounsellors").forward(request, response);
   
  }
}