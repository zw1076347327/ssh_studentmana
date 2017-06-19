package com.action;

import org.apache.struts2.ServletActionContext;

import com.dto.User;
import com.entity.PageBean;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.service.AdminService;
import com.service.StudentService;

public class StudentAction extends ActionSupport implements ModelDriven<User>{
private AdminService adminService;
private StudentService studentService;

	public void setStudentService(StudentService studentService) {
		this.studentService = studentService;
	}

	public void setAdminService(AdminService adminService) {
		this.adminService = adminService;
	}
	
	private User user = new User();		
	public User getModel() {
		return user;
	}
	
	private Integer currentPage;
	public Integer getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}

	public String listpage(){
		//封装
		PageBean pageBean = studentService.listpage(currentPage);
		//放入域对象
		ServletActionContext.getRequest().setAttribute("pageBean",pageBean);
		return "listpage";
	}
}
