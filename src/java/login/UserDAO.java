/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package login;

import java.text.*;
import java.util.*;
import java.sql.*;
import passwordhashanddecrytp.EncryptAndDecrypt;

public class UserDAO {
    
    static Connection currentCon = null;
    static ResultSet rs = null;
    
    public static UserBean login(UserBean bean) throws ClassNotFoundException{
        
       
        //prepare  objects for connection
        PreparedStatement stmt = null;
        
        String username = bean.getUsername();
        String password = bean.getPassword();
        String client = bean.getClient();
        
        System.out.println(client);
        
         if( "student".equals(client)){
        String searchQuery = "SELECT * FROM student_auth WHERE u_name=?";       
               
        
        try{
            //connect to database
            
            currentCon = ConnectionManager.getConnect();
            stmt = currentCon.prepareStatement(searchQuery);
            stmt.setString(1, username);          
            rs = stmt.executeQuery();
            
            boolean more = rs.next();
            
            //if there are no users in the database
            if(!more){
                bean.setValid(false);
                
            }else{                

                    String firstName= rs.getString("f_name");
                    String lastName = rs.getString("l_name");
                    String pwd = rs.getString("pass");
                    String salt = rs.getString("salt");
                    boolean verifyPass = EncryptAndDecrypt.verifyUserPassword(password, pwd, salt);
                    
                    if(verifyPass){
                         bean.setFirstName(firstName);
                         bean.setLastName(lastName);
                         bean.setValid(true);
                    }else{
                         bean.setValid(false);                   
                    }
               
            }
        }
        catch(SQLException ex){
            System.out.println("Login failed there are some errors: "+ ex);
            
        }
   
        
       // some more exceptions
        finally{
         if(rs!=null){
             try{
                 rs.close();
             }catch(Exception ex2){}
                 rs = null;
                        
        }
        if(stmt != null ){
            try{
                stmt.close();
            }catch(Exception ex2){}
            stmt = null;
        }
        
        if (currentCon != null ){
              try{
                currentCon.close();
            }catch(Exception ex3){}
            currentCon = null;
        }
        }
         }
        else{

                    bean.setValid(false);
                }
        return bean;
    }
    
}
