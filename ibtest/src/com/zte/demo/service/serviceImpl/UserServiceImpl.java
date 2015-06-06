package com.zte.demo.service.serviceImpl;


import java.util.List;
import java.util.Random;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zte.demo.dao.DAO;
import com.zte.demo.entity.User;
import com.zte.demo.mapper.UserMapper;
import com.zte.demo.service.UserServiceI;

@Service("userService")
public class UserServiceImpl implements UserServiceI{
//    @Resource(name="userMapper")
//    private UserMapper userDao;
    @Autowired
    private DAO daoSupport;
    public User getUser(User user)
    {
        return null;
    }
    public void addUser(User user)
    {
        try
        {
            daoSupport.save(user);
        }
        catch (Exception e)
        {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
    @Override
    public List<User> getAllUserList(User user)
    {
        // TODO Auto-generated method stub
//        return userDao.getAllUserList(user);
        return daoSupport.getList(user);
   
    }
	@Override
	public void inserUser(User user) {
		// TODO Auto-generated method stub
		 try
	        {
	            daoSupport.insertUser(user);
	        }
	        catch (Exception e)
	        {
	            // TODO Auto-generated catch block
	            e.printStackTrace();
	        }
	}
	@Override
	public boolean checkLogin(User user) {
		// TODO Auto-generated method stub
//		System.out.println(daoSupport.loginUser(user));
		User testUser = daoSupport.loginUser(user);
		if(null!=testUser){
			return true;
		}else
		{
			return false;
		}
	}
	@Override
	public boolean deleteUser(int id) throws Exception {
		// TODO Auto-generated method stub
		int num = daoSupport.deleteUser(id);
		if(num>0)
		{
		return true;
		}else
		return false;
	}
 
}
