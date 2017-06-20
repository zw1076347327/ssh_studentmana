package com.action;

import org.apache.struts2.ServletActionContext;

import com.dto.User;
import com.entity.PageBean;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.service.AdminService;
import com.service.StudentService;

public class StudentAction extends ActionSupport implements ModelDriven<User> {
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

	// ��ҳ�鿴ѧ����Ϣ
	public String listpage() {
		if (currentPage == null) {
			currentPage = 1;
		}
		// ��װ
		PageBean pageBean = studentService.listpage(currentPage);
		
		// ���������
		ServletActionContext.getRequest().setAttribute("pageBean", pageBean);
		return "listpage";
	}

	// ��ѧ����ӽ���
	public String toaddPage() {
		return "toaddPage";
	}

	// ���ѧ��
	public String add() {
		this.user.setUname(user.getUname());
		this.user.setPwd(user.getPwd());
		this.user.setRole(user.getRole());
		this.user.setSex(user.getSex());
		this.user.setBirth(user.getBirth());
		this.user.setTel(user.getTel());
		this.user.setAddress(user.getAddress());
		studentService.add(user);
		return "add";
	}

	// ɾ��ѧ��
	public String student_delete() {
		int id = user.getId();
		User u = studentService.findOne(id);
		if(u!=null){
		studentService.delete(u);
		}
		return "delete";
	}

	// �����½���
	public String student_toupdate() {
		int id = user.getId();
		User u = studentService.findOne(id);
		ServletActionContext.getRequest().setAttribute("user", u);
		return "toupdate";
	}

	// ����
	public String student_update() {
		studentService.update(user);
		return "update";
	}
}
