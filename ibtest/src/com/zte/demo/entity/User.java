package com.zte.demo.entity;

import org.springframework.stereotype.Component;

@Component
public class User {
    private int id;
    private String username;
    private String password;
    private int start;
    
    public User(){
        
    }
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
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
    public String toString(){
        return "id="+id+" , username="+username+" , password="+password+"";
    }
	public int getStart() {
		return start;
	}
	public void setStart(int start) {
		this.start = start;
	}
    

}