/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package login;

import java.sql.*;
import java.util.*;

public class ConnectionManager {
    
    static Connection con;
   
    
    public static Connection getConnect() throws ClassNotFoundException, SQLException {
        
      
        
        Class.forName("com.mysql.jdbc.Driver");
        
        String  url = "jdbc:mysql://localhost:3306/codebloode";
        
        try{
<<<<<<< HEAD
            con = DriverManager.getConnection(url, "root", "Alex1234");
=======

            con = DriverManager.getConnection(url, "root", "@elvis$");
>>>>>>> d69d72228f33c312a3bbaff0ff4a90f5b84aa4bb
            
        }
        catch(Exception ex){
            ex.printStackTrace();
        }
        
        return con;
        
    }
    
}
