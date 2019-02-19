/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dean;

/**
 *
 * @author Alex
 */
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import login.ConnectionManager;

public class DeanManageCounsellorDAO{

    public static ArrayList<DeanManageCounsellorBean> getAllRecords() {
      
        ArrayList<DeanManageCounsellorBean> list = new ArrayList<DeanManageCounsellorBean>();

        try {
            Connection con = ConnectionManager.getConnect();
            PreparedStatement ps = con.prepareStatement("select id, f_name,email, gender, phone, status, u_name from counsellor_auth");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                
               
                int id = rs.getInt("id");
                String fname = rs.getString("f_name");
                String email = rs.getString("email");
                String gender = rs.getString("gender");
                String phone = rs.getString("phone");
                String status = rs.getString("status");
                String uname = rs.getString("u_name");
                
                String newid = Integer.toString(id);
                
                DeanManageCounsellorBean u = new DeanManageCounsellorBean(newid,fname,email,gender,phone,status,uname);
                list.add(u);
            }
            
            System.out.println(list);
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

     public static int delete(DeanManageCounsellorBean counsellor) {
        int status = 0;
        try {
            Connection con = ConnectionManager.getConnect();
            PreparedStatement ps = con.prepareStatement("delete from counsellor_auth where id=?");
            
            ps.setString(1, counsellor.getId());
            status = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }

        return status;
    }
    /*
    public static DeanManageCounsellorBean getRecordById(int id) {
        DeanManageCounsellorBean u = null;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("select * from Employees where id=?");
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                u = new DeanManageCounsellorBean();
                u.setId(rs.getInt("id"));
                u.setName(rs.getString("name"));
                u.setPassword(rs.getString("password"));
                u.setEmail(rs.getString("email"));
                u.setSex(rs.getString("gender"));
                u.setCountry(rs.getString("country"));
                u.setSalary(rs.getFloat("salary"));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return u;
    }
*/

    /*
    public static List<DeanManageCounsellorBean> getRecords(int start, int total) {
        List<DeanManageCounsellorBean> list = new ArrayList<DeanManageCounsellorBean>();
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "select * from Employees limit " + (start - 1) + "," + total);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                DeanManageCounsellorBean e = new DeanManageCounsellorBean();
                e.setId(rs.getInt(1));
                e.setName(rs.getString(2));
                e.setSalary(rs.getFloat(7));
                list.add(e);
            }
            con.close();
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }
*/
}