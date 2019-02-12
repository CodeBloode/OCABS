/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package signup;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 *
 * @author root
 */
public class signup extends HttpServlet {

     @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        request.getRequestDispatcher("signup.jsp").forward(request, response);
    }
    
    
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            NewUserBean user = new NewUserBean();
            
            user.setFirstName(request.getParameter("firstname"));
            user.setLastName(request.getParameter("lastname"));
            user.setPassword(request.getParameter("pwd"));
            user.setUsername(request.getParameter("regno"));
            user.setPass2(request.getParameter("cpwd"));
            user.setEmail(request.getParameter("email"));
            user.setPhone(request.getParameter("phone"));
            
            user = NewUserDAO.signup(user);            
            
            if(user.isValid()){
                
               //request.getRequestDispatcher("").forward(request,response);//
               response.sendRedirect("login");
             
            }else{
                               
                
                 response.sendRedirect("signup");
        
            }
            
            
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(signup.class.getName()).log(Level.SEVERE, null, ex);
            ex.printStackTrace();
        }
    }

   
    @Override
    public String getServletInfo() {
        return "just signup";
        
    }// </editor-fold>

}
