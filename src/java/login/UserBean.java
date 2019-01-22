/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package login;


public class UserBean {
    private String username;
    private String password;
    private String firstName;
    private String lastName;
    private String client;
    public boolean valid;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }
    
    public boolean isValid(){
        return valid;
    }

    public void setValid(boolean valid) {
        this.valid = valid;
    }
     public String getClient() {
        return client;
    }

    public void setClient(String client) {
        this.client = client;
    }
   
 }
    

