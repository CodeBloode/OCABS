/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package counsellor;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import counsellor.SetSechBean;

public class SetSechServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       // try (PrintWriter out = response.getWriter())
       {
             
               int hours = Integer.parseInt(request.getParameter("hduration"));
               int days = Integer.parseInt(request.getParameter("daysoff"));
               String dateaway=request.getParameter("date_away");
               String timeaway=request.getParameter("time_away");
               String reason=request.getParameter("reason");

                //Print the above got values in console
                
                System.out.println("The username is" +hours);

                System.out.println("The password is" +days);
                System.out.println("The username is" +dateaway);

                System.out.println("The password is" +timeaway);
                System.out.println("The username is" +reason);

               




        }
    }

//    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
//    /**
//     * Handles the HTTP <code>GET</code> method.
//     *
//     * @param request servlet request
//     * @param response servlet response
//     * @throws ServletException if a servlet-specific error occurs
//     * @throws IOException if an I/O error occurs
//     */
//    @Override
//    protected void doGet(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//       // processRequest(request, response);
//        request.getRequestDispatcher("counsellor/setsech.jsp").forward(request, response);
//    }
//
//    /**
//     * Handles the HTTP <code>POST</code> method.
//     *
//     * @param request servlet request
//     * @param response servlet response
//     * @throws ServletException if a servlet-specific error occurs
//     * @throws IOException if an I/O error occurs
//     */
//    @Override
//    protected void doPost(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        processRequest(request, response);
//   
//    
//    try{
//  
//           String date = request.getParameter("date");
//           String hours = request.getParameter("hours");
//           String days = request.getParameter("days");
//           String time = request.getParameter("time");
//           String reason = request.getParameter("reason");
//           
//           Class.forName(driver).newInstance();
//}
//
//    catch{
//        
//    }
//    @Override
//    public String getServletInfo() {
//        String description="Set Seshdule servlet is used to set the time the counsellor will not be availlable for bookings";
//        return description;
//    }// </editor-fold>
//
}
