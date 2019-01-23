/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package counsellor;

/**
 *
 * @author root
 */
import java.text.*;
import java.util.*;
import java.sql.*;
import login.ConnectionManager;
import passwordhashanddecrytp.EncryptAndDecrypt;

public class NewCounsesellorDAO {
    static Connection connection = null;
     static ResultSet rs = null;
     public static int run =0;
     
     public static NewCounsellorBean signup( NewCounsellorBean bean) throws ClassNotFoundException{
          PreparedStatement insert = null;
          
         
         
         String username = bean.getUsername();
         String fullname = bean.getFullName();
         String email = bean.getEmail();
         String gender = bean.getGender();
         String phone = bean.getPhone();
         String status = bean.getStatus();
         String counsNo = bean.getCounsNo();
         String password = bean.getPassword();
          
         String salt= EncryptAndDecrypt.getSalt(30);
         String securePass = EncryptAndDecrypt.generateSecurePassword(password, salt);
         
         
        
         String insertQueryCounsellor = "INSERT INTO counsellor_auth (f_name,email,gender,phone,status,u_name, pass, salt,day) VALUES (?,?,?,?,?,?,?,?,NOW())";
         
         try{
             
             
             connection = ConnectionManager.getConnect();
             
                
                insert = connection.prepareStatement(insertQueryCounsellor);
                
                insert.setString(1, fullname);
                insert.setString(2, email);
                insert.setString(3, gender);
                insert.setString(4, phone);
                insert.setString(5, status);
                insert.setString(6, counsNo);
                insert.setString(7, securePass);
                insert.setString(8, salt);
                             
             run = insert.executeUpdate();
             
             if(run == 1){
                  bean.setValid(true);
             }else{
                bean.setValid(false);
             }
          
         }catch(SQLException e){
             
             
             
             System.out.println("Insert Error: "+ e);
         }
         return bean;
     }
    
}

    
