/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package login;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



/**
 *
 * @author root
 */
public class login extends HttpServlet {

    
     @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        request.getRequestDispatcher("login.jsp").forward(request, response);
    }
 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        try{
            
            UserBean user = new UserBean();
            user.setUsername(request.getParameter("username"));
            user.setPassword(request.getParameter("pwd"));
            user.setClient(request.getParameter("user"));
            
            user = UserDAO.login(user);
            
            if(user.isValid()){
                HttpSession session = request.getSession(true);
                session.setAttribute("userSession", user);
                
                if(request.getParameter("user").equals("student")){
                    response.sendRedirect("student/");
                }else
                    if(request.getParameter("user").equals("counsellor")){
                       response.sendRedirect("counsellor/");
                    }else{
                         response.sendRedirect("dean/");
                    }
                
                
            }else{
                   
                if(user.getClient().equals("unknown")){
                    response.sendRedirect("login");
                }else{
                    response.sendRedirect("loginError");
                }
                    
            }
            
            
        }catch(Throwable e){
            System.out.println(e);
        }
        
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        String description="Login servlet is used to handle login events";
        
        return description;
    }// </editor-fold>

}
