package com.zte.demo.controller.login;

import java.io.IOException;
import java.io.Writer;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.HttpRequestHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.mysql.jdbc.interceptors.SessionAssociationInterceptor;
import com.zte.demo.controller.RegisterController;
import com.zte.demo.entity.User;
import com.zte.demo.service.UserServiceI;
import com.zte.demo.service.serviceImpl.UserServiceImpl;

@Controller
@Scope(value = "prototype")
@RequestMapping("/login")
public class LoginController {

	static Logger log4j = Logger.getLogger(RegisterController.class.getClass());
	@Autowired
	private UserServiceI userService;
	
	@Autowired
	private User user;
	
	@RequestMapping(value="/loginInto")
	public String login(){
		System.out.println("start login");
		
		return "/mainweb/error.jsp";
	}
	

	@RequestMapping(value = "/loginCheck")
	public String loginUser(@ModelAttribute("user") User user, Model model, @RequestParam("remMe") String redMe) {
		String jsonStr=null;
		System.out.println("user"+user.getUsername()+user.getPassword());
		System.out.println(redMe);
		boolean flag =  userService.checkLogin(user);
		if(flag){
			jsonStr = "success";
		}else
		{
			jsonStr = "error";
		}
		System.out.println(jsonStr);
		model.addAttribute("status", jsonStr);
		return jsonStr;
	}	
	
	
	@RequestMapping(value = "/loginCheckJs")
	public void loginUserJs(HttpServletRequest request, HttpServletResponse response, User user) throws IOException {
		String usernameString = request.getParameter("username");
		String passwordString = request.getParameter("password");
		String redMeString  = request.getParameter("redMe");
		user.setUsername(usernameString);
		user.setPassword(passwordString);
		Map<Object, Object> resultMap = new HashMap<Object, Object>();
		boolean flag =  userService.checkLogin(user);
		if(flag){
			resultMap.put("result", "success");
			HttpSession seesionHttpSession = request.getSession();
			seesionHttpSession.setAttribute("username", user.getUsername());
		}else
		{
			resultMap.put("result", "error");
		}
		 JSONObject jsonObject = new JSONObject();
	     jsonObject.putAll((Map) resultMap);
		 response.getWriter().print(jsonObject);		
	}
	
	@RequestMapping(value = "/SessionCheck")
	public String SessionCheck(HttpServletRequest request, HttpServletResponse response, User user) throws IOException {
		return "/mainweb/userpage/index.jsp";		
	}
}
