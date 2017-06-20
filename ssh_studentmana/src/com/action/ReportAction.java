package com.action;

import java.util.ArrayList;
import java.util.List;

import org.apache.struts2.ServletActionContext;

import com.dto.Report;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.service.ReportService;

public class ReportAction extends ActionSupport implements ModelDriven<Report>{
	private ReportService reportService;
	

	public void setReportService(ReportService reportService) {
		this.reportService = reportService;
	}
	
	private Report report = new Report();		
	public Report getModel() {
		return report;
	}
	

	//����Ա�鿴�ɼ�
	public String list(){
		
		List<Object> list = (List<Object>)reportService.findAll();
		
		ServletActionContext.getRequest().setAttribute("list", list);
		return "list";
	}
	
	//ѧ���鿴�ɼ�
		public String listmy(){
			int id = report.getId();
			List<Report> listmy = reportService.findSprice(id);
			ServletActionContext.getRequest().setAttribute("listmy", listmy);
			return "listmy";
		}
	
	//�ɼ���ӽ���
	public String toaddPage(){
		return "toaddPage";
	}
		
	//��ӳɼ�
	public String add(){
		this.report.setCourse(report.getCourse());
		this.report.setPrice(report.getPrice());
		reportService.add(report);
		return "add";
	}
	
	//ɾ���ɼ�
	public String report_delete(){
		int id = report.getId();
		Report r = reportService.findOne(id);
		reportService.delete(r);
		return "delete";
	}
		
	//�����½���
	public String report_toupdate(){
		int id = report.getId();
		Report r = reportService.findOne(id);
		ServletActionContext.getRequest().setAttribute("report", r);
		return "toupdate";
	}
			
	//���³ɼ�
	public String report_update(){
		reportService.update(report);
		return "update";
	}
}
