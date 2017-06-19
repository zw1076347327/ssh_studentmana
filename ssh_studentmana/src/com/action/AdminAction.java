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
	
	private User user = new User();		
	public User getModel() {
		return user;
	}
	

	//到添加界面
	public String toaddPage(){
		return "toaddPage";
	}
	
	//添加管理员
	public String add(){
		this.user.setUname(user.getUname());
		this.user.setPwd(user.getPwd());
		this.user.setRole(user.getRole());
		adminService.add(user);
		return "add";
	}
	
	//查看管理员
	public String list(){
		List<User> list = adminService.findAll();
		ServletActionContext.getRequest().setAttribute("list", list);
		return "list";
	}
	
	//删除管理员
	public String admin_delete(){
		int id = user.getId();
		User u = adminService.findOne(id);
		adminService.delete(u);
		return "delete";
	}
	
	//到更新界面
	public String admin_toupdate(){
		int id = user.getId();
		User u = adminService.findOne(id);
		ServletActionContext.getRequest().setAttribute("user", u);
		return "toupdate";
	}
	
}
