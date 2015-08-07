package com.zte.demo.dao;

import java.util.List;

import com.zte.demo.entity.User;


public interface  DAO {
	
    public void save(User entity) throws Exception;

	public void update(User entity) throws Exception;
	
	
	public  void delete(Long entity_id) throws Exception;
	
	public void delete(Long[] entity_ids) throws Exception;
    
	public  User find(int entity_id);
	
	public List<User> getList(User user);
    
	public void insertUser(User user)throws Exception;
	
	public int checkUser(String username);
	
	public User loginUser(User user);
	
	
	public int deleteUser(int id) throws Exception;
	public int getCountAllUser(User user);
	
}
