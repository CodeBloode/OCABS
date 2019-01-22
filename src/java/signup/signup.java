/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package signup;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author root
 */
public class signup extends HttpServlet {

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            NewUserBean user = new NewUserBean();
            
            user.setFirstName(request.getParameter("firstname"));
            user.setLastName(request.getParameter("lastname"));
            user.setPassword(request.getParameter("pwd"));
            user.setUsername(request.getParameter("regno"));
            
            
            user = NewUserDAO.signup(user);
            
            if(user.isValid()){
               response.sendRedirect("login.jsp?account created Successfully");
             
            }else{
                response.sendRedirect("signup.jsp");            
            }
            
            
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(signup.class.getName()).log(Level.SEVERE, null, ex);
            ex.printStackTrace();
        }
    }

   
    @Override
    public String getServletInfo() {
        return "Short description of the servel";
        
    }// </editor-fold>

}
