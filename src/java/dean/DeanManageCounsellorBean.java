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

public class DeanManageCounsellorBean {

    private int id;
    private String counsname, counsno,phone,email, gender, password, state;
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCounsname() {
        return counsname;
    }

    public void setCounsname(String counsname) {
        this.counsname = counsname;
    }

    public String getCounsno() {
        return counsno;
    }
    public void setCounsno(String counsno) {
        this.counsno = counsno;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }
    
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }
}