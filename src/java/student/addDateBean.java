/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package student;

public class addDateBean {
    
    private String dt;
    private String tm;
    private String cn;

    public String getCn() {
        return cn;
    }

    public void setCn(String cn) {
        this.cn = cn;
    }
    
    public addDateBean() {
    }

    public addDateBean(String cn) {
        this.cn = cn;
    }
    
    
    public String getDt() {
        return dt;
    }

    public void setDt(String dt) {
        this.dt = dt;
    }

    public String getTm() {
        return tm;
    }

    public void setTm(String tm) {
        this.tm = tm;
    }

    @Override
    public String toString() {
        return cn;
    }
    
}
