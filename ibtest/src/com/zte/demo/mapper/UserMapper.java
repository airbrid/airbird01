package com.zte.demo.mapper;

import java.util.List;

import com.zte.demo.entity.User;


public interface UserMapper {
    public User getUser(User user);
    public void addUser(User user);
    public void updateUser(User user);
    public int deleteUser(int id);
    public User getUserList(int id);
    public List<User> getAllUserList(User user);
    public void insertUser(User user);
    public List<Integer> checkUser(String username);
    public int getCountAllUser(User user);
}