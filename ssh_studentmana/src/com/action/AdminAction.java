package com.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.dto.User;
import com.entity.Admin;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.service.AdminService;
import com.sun.org.apache.bcel.internal.generic.NEW;
import com.sun.xml.internal.bind.v2.model.core.ID;

public class AdminAction extends ActionSupport implements ModelDriven<User>{
	private AdminService adminService;
	
	public void setAdminService(AdminService adminService) {
		this.adminService = adminService;
	}
	
	private User user;		
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}

	//�����ӽ���
	public String toaddPage(){
		return "toaddPage";
	}
	
	//���ӹ���Ա
	public String add(){
		this.user.setUname(user.getUname());
		this.user.setPwd(user.getPwd());
		this.user.setRole(user.getRole());
		adminService.add(user);
		return "add";
	}
	
	//�鿴����Ա
	public String list(){
		List<User> list = adminService.findAll();
		ServletActionContext.getRequest().setAttribute("list", list);
		return "list";
	}
	
	//ɾ������Ա
	public String admin_delete(){
		int id = user.getId();
		return "delete";
	}

	public User getModel() {
		if(user == null)
		user = new User(); 
		return user;
	}
}