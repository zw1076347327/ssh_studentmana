package com.action;

import java.util.List;

import org.apache.struts2.ServletActionContext;

import com.dto.Speciality;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.service.SpecialityService;
import com.service.StudentService;

public class SpecialityAction extends ActionSupport implements ModelDriven<Speciality>{
	private SpecialityService specialityService;

	public void setSpecialityService(SpecialityService specialityService) {
		this.specialityService = specialityService;
	}
	
	private Speciality speciality = new Speciality();		
	public Speciality getModel() {
		return speciality;
	}
	
	//查看专业
	public String list(){
		List<Speciality> list = specialityService.findAll();
		ServletActionContext.getRequest().setAttribute("list", list);
		return "list";
	}
	
	//专业添加界面
	public String toaddPage(){
		return "toaddPage";
	}
		
	//添加专业
	public String add(){
		this.speciality.setUname(speciality.getUname());
		this.speciality.setSpeciality(speciality.getSpeciality());
		this.speciality.setTeacher(speciality.getTeacher());
		specialityService.add(speciality);
		return "add";
	}
	
	//删除专业
	public String speciality_delete(){
		int id = speciality.getId();
		Speciality s = specialityService.findOne(id);
		specialityService.delete(s);
		return "delete";
	}
		
	//到更新界面
	public String speciality_toupdate(){
		int id = speciality.getId();
		Speciality s = specialityService.findOne(id);
		ServletActionContext.getRequest().setAttribute("speciality", s);
		return "toupdate";
	}
			
	//更新专业
	public String speciality_update(){
		specialityService.update(speciality);
		return "update";
	}
}
