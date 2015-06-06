package com.zte.demo.controller;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;



import com.citicbank.cloudbase.drdc.client.BasicClientAPI;
//import com.citicbank.cloudbase.drdc.client.BasicClientAPI;
import com.zte.demo.entity.User;
import com.zte.demo.service.UserServiceI;
import com.zte.user.DemoName;

@Controller
@Scope(value = "prototype")
@RequestMapping("/person")
public class RegisterController {
	

	static Logger log4j = Logger.getLogger(RegisterController.class.getClass());
	
	@Autowired
	private User user;
	@Resource(name = "userService")
	private UserServiceI userService;

	@Autowired
	private DemoName demoname;


	@RequestMapping(value = "/loginmain")
	public String loginmain(User user) {
		System.out.println(demoname.getUsername());
		return "/baseweb/login.jsp";
	}
	
	@RequestMapping(value = "/login")
	public void loginUser(@ModelAttribute("user") User user, Model model) {
		String jsonStr=null;
		System.out.println("login"+user.getUsername()+user.getPassword());
		boolean flag =  userService.checkLogin(user);
		if(flag){
			jsonStr = "OK";
		}else
		{
			jsonStr = "error";
		}
		model.addAttribute("status", jsonStr);
	}
	
	@RequestMapping(value = "/registermain")
	public String registermain(User user) {
		return "/baseweb/register.jsp";
	}

	@RequestMapping(value = "/register")
	public String registerUser(@ModelAttribute("user") User user, Model model,
			@RequestParam("password1") String password1) {
		String username = user.getUsername();
		String password = user.getPassword();
		if (!password.equals(password1)) {
			return "/baseweb/register.jsp";
		}

		if ("".equals(username) || "".equals(password)) {
			return "/baseweb/register.jsp";
		} else {
			userService.inserUser(user);
			return "/baseweb/login.jsp";
		}
	}
	
}
