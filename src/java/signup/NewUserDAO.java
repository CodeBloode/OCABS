/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package signup;


import java.sql.*;
import login.ConnectionManager;
import passwordhashanddecrytp.EncryptAndDecrypt;

public class NewUserDAO {
     static Connection connection = null;
     static ResultSet rs = null;
     public static int run =0;
     
     public static NewUserBean signup( NewUserBean bean) throws ClassNotFoundException{
          PreparedStatement insert = null;
          
         //dean and students
         
         String username = bean.getUsername();
         String password = bean.getPassword();
         String firstname = bean.getFirstName();
         String lastname = bean.getLastName();
         String pass2 = bean.getPass2();
         
         
             
         String salt= EncryptAndDecrypt.getSalt(30);
         String securePass = EncryptAndDecrypt.generateSecurePassword(password, salt);
         
         
         String insertQuery = "INSERT INTO dean_auth (f_name,l_name,u_name, pass, salt,day) VALUES (?,?,?,?,?,NOW())";
         
         
         if(!password.equals(pass2))
         {
             
              bean.setValid(false);
             
         }else
         {
                try{


                    connection = ConnectionManager.getConnect();


                       insert = connection.prepareStatement(insertQuery);

                       insert.setString(1, firstname);
                       insert.setString(2, lastname);
                       insert.setString(3, username);
                       insert.setString(4, securePass);
                       insert.setString(5, salt);

                    run = insert.executeUpdate();

                    if(run == 1){

                            bean.setValid(true);



                    }else{
                       bean.setValid(false);
                    }

                }catch(SQLException e){



                    System.out.println("Insert Error: "+ e);
                }
         }
         return bean;
     }
    
}
