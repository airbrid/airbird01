package com.zte.demo.service;

import java.util.List;

import com.zte.demo.entity.User;
import com.zte.demo.mapper.UserMapper;

public interface UserServiceI
{
    public User getUser(User user);
    public void addUser(User user); 
    public void inserUser(User user);
    
    //login check user information
    public boolean checkLogin(User user);
    //delete the user information
    public boolean deleteUser(int id) throws Exception;
    
    public int getCountAllUser(User user);
	List<User> getAllUserList(User user);
}
