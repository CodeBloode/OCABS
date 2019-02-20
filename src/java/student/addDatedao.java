/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package student;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import login.ConnectionManager;

public class addDatedao {
    static Connection connection = null;
    static PreparedStatement stmt = null;
    static ResultSet rs = null;
    static int run =0;
    
    public static ArrayList<addDateBean> listofCounsellors(){
        ArrayList<addDateBean> counselors = new ArrayList<addDateBean>();
       addDateBean getdttm = new addDateBean();
        String appDate = getdttm.getDt();
        String appTime = getdttm.getTm();
        
        System.out.println("from bean date "+appDate+" and time "+appTime);
        
        String search = "SELECT counsNo FROM (SELECT counsNo FROM scheduling WHERE scheduling.approval='no' UNION SELECT counsNo from appointment) counsellor;";
        
        try {
            connection = ConnectionManager.getConnect();
            stmt = connection.prepareStatement(search);
            rs= stmt.executeQuery();
            while(rs.next()){
                String couns = rs.getString("counsNo");
                addDateBean getcouns = new addDateBean(couns);
                counselors.add(getcouns);
            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(addDatedao.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(addDatedao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return counselors;
    }
    
}
