package com.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.dto.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.service.UserService;
import com.service.UserServiceImpl;

public class UserAction extends ActionSupport implements ModelDriven<User>{
	
	private UserService userService;
	
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
	private User user;
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}

	//µÇÂ¼
	public String login(){
		this.user.setUname(user.getUname());
		this.user.setPwd(user.getPwd());
		this.user.setRole(user.getRole());
		User userExist = userService.login(user);
		
		if (userExist!=null) {
			HttpServletRequest request = ServletActionContext.getRequest();
			request.getSession().setAttribute("user", userExist);
			return SUCCESS;
		}else {
			return LOGIN;
		}
	}
	
	public User getModel() {
		if (this.user == null) 
			user = new User();
			return user;
		
		
	}
	
}
