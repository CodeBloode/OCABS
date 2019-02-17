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
public class StudentBean implements java.io.Serializable{
    
    private String date;
    private String time;
    private int couns_id;

    public StudentBean(int couns_id) {
        this.couns_id = couns_id;
    }
    
    
    public StudentBean() {
       
    }
    

    public int getCouns_id() {
        return couns_id;
    }

    public void setCouns_id(int couns_id) {
        this.couns_id = couns_id;
    }

    public String getTime() {
        return time;
    }

    public String getDate() {
        return date;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public void setDate(String date) {
        this.date = date;
    }

    @Override
    public String toString() {
        return "StudentBean{" + "couns_id=" + couns_id + '}';
    }
    
    
}
