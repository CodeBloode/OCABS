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


public class DeanManageCounsellorDAO {
    
    
    public static Connection getConnection() {
        Connection con = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/appointments", "root", "Alex1234");
        } catch (Exception e) {
            System.out.println(e);
        }
        return con;
    }

    public static int save(DeanManageCounsellorBean u) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("insert into counsellor (counsname,counsno,phone,email,gender,password,state) values(?,?,?,?,?,?,?)");
            ps.setString(1, u.getCounsname());
            ps.setString(2, u.getCounsno());
            ps.setString(3, u.getPhone());
            ps.setString(4, u.getEmail());
            ps.setString(5, u.getGender());
            ps.setString(6,  u.getPassword());
            ps.setString(7,  u.getState());
            status = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
        return status;
    }

    public static int update(DeanManageCounsellorBean u) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("update counsellor set counsname=?,counsno=?,phone=?,email=?,gender=?,password=?,state=? where id=?");
            ps.setString(1, u.getCounsname());
            ps.setString(2, u.getCounsno());
            ps.setString(3, u.getPhone());
            ps.setString(4, u.getEmail());
            ps.setString(5, u.getGender());
            ps.setString(6,  u.getPassword());
            ps.setString(7,  u.getState());
            ps.setInt(8, u.getId());
            status = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
        return status;
    }

    public static int delete(DeanManageCounsellorBean u) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("delete from counsellor where id=?");
            ps.setInt(1, u.getId());
            status = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }

        return status;
    }

    public static List<DeanManageCounsellorBean> getAllRecords() {
        List<DeanManageCounsellorBean> list = new ArrayList<DeanManageCounsellorBean>();

        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("select * from counsellor");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                DeanManageCounsellorBean u = new DeanManageCounsellorBean();
                u.setId(rs.getInt("id"));
                u.setCounsname(rs.getString("counsname"));
                u.setCounsno(rs.getString("counsno"));
                u.setPhone(rs.getString("phone"));
                u.setEmail(rs.getString("email"));
                u.setGender(rs.getString("gender"));
                u.setPassword(rs.getString("password"));
                u.setState(rs.getString("state"));
                list.add(u);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    public static DeanManageCounsellorBean getRecordById(int id) {
        DeanManageCounsellorBean u = null;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("select * from counsellor where id=?");
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                u = new DeanManageCounsellorBean();
                u.setId(rs.getInt("id"));
                u.setCounsname(rs.getString("counsname"));
                u.setCounsno(rs.getString("counsno"));
                u.setPhone(rs.getString("phone"));
                u.setEmail(rs.getString("email"));
                u.setGender(rs.getString("gender"));
                u.setPassword(rs.getString("password"));
                u.setState(rs.getString("state"));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return u;
    }

    public static List<DeanManageCounsellorBean> getRecords(int start, int total) {
        List<DeanManageCounsellorBean> list = new ArrayList<DeanManageCounsellorBean>();
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "select * from counsellor limit " + (start - 1) + "," + total);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                DeanManageCounsellorBean e = new DeanManageCounsellorBean();
                e.setId(rs.getInt(1));
                e.setCounsname(rs.getString(2));
                e.setCounsno(rs.getString(3));
                e.setPhone(rs.getString(4));
                e.setEmail(rs.getString(5));
                e.setState(rs.getString(8));
                list.add(e);
            }
            con.close();
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }
}
