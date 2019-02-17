/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package student;

/**
 *
 * @author linuxpc
 */
import static com.sun.corba.se.spi.presentation.rmi.StubAdapter.request;
import java.text.*;
import java.util.*;
import java.sql.*;
import login.ConnectionManager;

public class StudentDAO {

    static Connection connection = null;
    static ResultSet rs = null;
  

    public static StudentBean booking(StudentBean x) throws ClassNotFoundException, SQLException {

            connection = ConnectionManager.getConnect();
            
            // from db
            String couns_id = null;
            
        PreparedStatement get = null;
        String date = x.getDate();
        String time = x.getTime();

        //fetch  date and time from  DB
        String query = "select couns_Id  from schedule where status = 'available' and date = ? and time = ?";
        
        get = connection.prepareStatement(query);
        get.setString(1, date);
        get.setString(2, time);
        
        rs = get.executeQuery();
        
        ArrayList id = new ArrayList();
        while (rs.next()) {
            couns_id = rs.getString("couns_Id");
            id.add(couns_id);
        }
        return x;
    }

}
