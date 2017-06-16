package com.action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.dto.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.service.UserService;
import com.service.UserServiceImpl;

public class UserAction extends ActionSupport {
	
	private UserService userService;
	
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
	//���Է�װ
	private String uname;
	private String pwd;
	
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	//��¼
	public String login(){
		User user = new User();
		user.setUname(uname);
		user.setPwd(pwd);
		System.out.println("!!!"+uname+" ++"+pwd);
		System.out.println("!!!��ȥ action");
		//����service�ķ���ʵ��
		User userExist = userService.login(user);
		
		if (userExist!=null) {
			//session���ֵ�¼״̬
			HttpServletRequest request = ServletActionContext.getRequest();
			request.getSession().setAttribute("user", userExist);
			return SUCCESS;
		}else {
			return LOGIN;
		}
	}
}
