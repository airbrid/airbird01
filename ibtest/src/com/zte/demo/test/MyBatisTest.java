package com.zte.demo.test;

import java.io.IOException;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.zte.demo.entity.User;
import com.zte.demo.mapper.UserMapper;

/** 
 * myBatis 
 *  
 * @author db2admin 
 *  
 */  
public class MyBatisTest {  
    /** 
     * MyBatis SqlSessionFactory   
     * SqlSessionFactory
     * @return 
     */  
    private static SqlSessionFactory getSessionFactory() {  
        SqlSessionFactory sessionFactory = null;  
        String resource = "configuration.xml";  
        try {  
            sessionFactory = new SqlSessionFactoryBuilder().build(Resources  
                    .getResourceAsReader(resource));  
        } catch (IOException e) {  
            // TODO Auto-generated catch block  
            e.printStackTrace();  
        }  
        return sessionFactory;  
    }  
  
    public static void main(String[] args) throws Exception {  
        SqlSession sqlSession = getSessionFactory().openSession();  
        UserMapper userMapper = sqlSession.getMapper(UserMapper.class);  
        //User user = userMapper.findById("2");  
        //System.out.println(user.getUserName());  
  
    }  
  
}  