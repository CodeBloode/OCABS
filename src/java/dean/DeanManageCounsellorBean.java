/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dean;



public class DeanManageCounsellorBean {
    
        private String id;

   
   private String f_name,email, gender, phone, status, u_name;

    public DeanManageCounsellorBean(String id, String f_name, String email, String gender, String phone, String status, String u_name) {
        this.id = id;
        this.f_name = f_name;
        this.email = email;
        this.gender = gender;
        this.phone = phone;
        this.status = status;
        this.u_name = u_name;
    }
   
   

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getF_name() {
        return f_name;
    }

    public void setF_name(String f_name) {
        this.f_name = f_name;
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

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getU_name() {
        return u_name;
    }

    public void setU_name(String u_name) {
        this.u_name = u_name;
    }

    @Override
    public String toString() {
        return "DeanManageCounsellorBean{" + "id=" + id + ", f_name=" + f_name + ", email=" + email + ", gender=" + gender + ", phone=" + phone + ", status=" + status + ", u_name=" + u_name + '}';
    }
    
}