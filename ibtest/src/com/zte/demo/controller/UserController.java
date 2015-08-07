package com.zte.demo.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.*;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.HttpRequestHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import sun.misc.Request;

import com.zte.demo.common.Page;
import com.zte.demo.dao.DAO;
import com.zte.demo.entity.User;
import com.zte.demo.mapper.UserMapper;
import com.zte.demo.service.UserServiceI;

@Controller
@Scope(value = "prototype")
@RequestMapping("/user")
public class UserController {
	@Autowired
	private UserMapper userMapper;
	// @Autowired
	@Resource(name = "userService")
	private UserServiceI userService;
	@Autowired
	private DAO daoSupport;

	@Autowired
	private User user;

	// User user=new User();
	@RequestMapping(value = "/list")
	public String indexPage(int id, Model model) {
		// User u1=userMapper.getUserList(id);
		// System.out.println(u1.getId()+u1.getUsername()+u1.getPassword());
		// System.out.println("list" + userMapper.getUserList(id));
		model.addAttribute("list", userMapper.getUserList(id));
		return "/show.jsp";
	}

	@RequestMapping(value = "/add")
	public String addUser(User user, Model model) {
		userService.addUser(user);
		user.getId();
		model.addAttribute("list", userMapper.getUserList(user.getId()));
		model.addAttribute("message", "success");
		return "/show.jsp";
	}
	
	@RequestMapping(value = "/adduser")
	public void adduser(User user, Model model,HttpServletResponse response) throws IOException {
		userService.addUser(user);
		user.getId();
		model.addAttribute("list", userMapper.getUserList(user.getId()));
		model.addAttribute("message", "success");
		PrintWriter out = response.getWriter();
		out.print(4);
		out.flush();
		out.close();
	}
	@RequestMapping(value = "/select")
	public String selectUser(User user, Model model,
			@RequestParam(value="currentPageNo") int currentPageNo,
			@RequestParam(value="pageSize")int pageSize) {	
		int countNum = userService.getCountAllUser(user);
		int start = Page.getSartOfPage(currentPageNo);
		user.setStart(start);
		List<User> users = userService.getAllUserList(user);
		Page page = new Page(start,countNum,pageSize,users);
		page.setCurPage(currentPageNo);
		model.addAttribute("list", page);
		return "/list.jsp";
	}

	@RequestMapping(value = "/selectclient")
	public void selectclient(User user, Model model,HttpServletRequest request,  HttpServletResponse response) throws IOException {
		
		// System.out.println("list"+ userService.getAllUserList(user));
		List<User> users = userService.getAllUserList(user);
		model.addAttribute("list", users);
		PrintWriter out = response.getWriter();
		out.print("success");
		out.flush();
		out.close();
	}
	
	@RequestMapping(value = "/selectparament")
	public void selectparament(User user, String resultString ,Model model,HttpServletRequest request,  HttpServletResponse response) throws IOException {
		
		// System.out.println("list"+ userService.getAllUserList(user));
		List<User> users = userService.getAllUserList(user);
		model.addAttribute("list", users);
		PrintWriter out = response.getWriter();
		out.print(resultString);
		out.flush();
		out.close();
	}

	@RequestMapping(value = "/deleteUser")
	public String deleteUser(User user, Model model, int id,
			@RequestParam(value="currentPageNo") int currentPageNo,
			@RequestParam(value="pageSize")int pageSize) throws Exception
	{
		userService.deleteUser(id);	
		return selectUser(user, model, currentPageNo, pageSize);
	}
}
