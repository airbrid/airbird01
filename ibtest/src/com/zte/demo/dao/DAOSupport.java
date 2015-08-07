package com.zte.demo.dao;

import java.util.List;
import java.util.Random;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.zte.demo.entity.User;
import com.zte.demo.mapper.UserMapper;

@Repository
@Transactional(rollbackFor = Exception.class)
public class DAOSupport implements DAO {

	@Resource(name = "userMapper")
	private UserMapper userMapper;

	public void delete(Long entity_id) throws Exception {
		delete(new Long[] { entity_id });
	}

	public void delete(Long[] entity_ids) throws Exception {

		
	}

	@Override
	public int deleteUser(int id) throws Exception{
		int number = userMapper.deleteUser(id);
		return number;		
	}
	
	@Transactional(readOnly = true, propagation = Propagation.NOT_SUPPORTED)
	public User find(int entity_id) {
		return userMapper.getUserList(entity_id);
	}

	public void save(User user) throws Exception {
		user.setId(new Random().nextInt(99999));
		user.setUsername(user.getUsername() + new Random().nextInt(99999));
		user.setPassword(new Random().nextInt(99999) + user.getPassword());
		userMapper.addUser(user);
	}

	public void update(User entity) throws Exception {

	}

	public List<User> getList(User user) {
		return (List<User>) userMapper.getAllUserList(user);
	}

	public void insertUser(User user) throws Exception {
		int nameNumber = checkUser(user.getUsername());
		if(nameNumber>0){
			System.out.println("error");
		}else{
			user.setId(new Random().nextInt(99999));
			user.setUsername(user.getUsername());
			user.setPassword(user.getPassword());
			userMapper.insertUser(user);
		}
	}

	@Override
	public int checkUser(String username) {
		// TODO Auto-generated method stub
		List<Integer> nlist = userMapper.checkUser(username); 
		int number = nlist.get(0);
		return number;
	}

	@Override
	public User loginUser(User user) {
		// TODO Auto-generated method stub
		User luser = userMapper.getUser(user);
//		System.out.println(luser);
//		String username = luser.getUsername();
//		String password = luser.getPassword();
//		System.out.println(username+password);
		return luser;
		
	}
	
	public int getCountAllUser(User user){
		int number = userMapper.getCountAllUser(user);
		return number;
	}

}
