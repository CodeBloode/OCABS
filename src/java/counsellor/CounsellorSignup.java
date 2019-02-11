/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package counsellor;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author root
 */
@WebServlet(name = "CounsellorSignup", urlPatterns = {"/CounsellorSignup"})
public class CounsellorSignup extends HttpServlet {

      @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        request.getRequestDispatcher("dean/addCounsellorForm.jsp").forward(request, response);
    }
    
    
    
   @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            NewCounsellorBean user = new NewCounsellorBean();
            
                        
            user.setFullName(request.getParameter("counsname"));
            user.setEmail(request.getParameter("email"));
            user.setGender(request.getParameter("gender"));
            user.setCounsNo(request.getParameter("counsno"));
            user.setStatus(request.getParameter("state"));
            user.setPhone(request.getParameter("phone"));
            user.setPassword(request.getParameter("pwd"));
            user.setConfirm_password(request.getParameter("cpwd"));
            
            
            user = NewCounsesellorDAO.signup(user);
            
            if(user.isValid()){
               response.sendRedirect("CounsellorSignup?Counsellor Added Successfully");
             
            }else{
                response.sendRedirect("CounsellorSignup?unable to add counsellor");            
            }
            
            
        } catch (ClassNotFoundException ex) {
            
            ex.printStackTrace();
        }
    }
    
    

    }


