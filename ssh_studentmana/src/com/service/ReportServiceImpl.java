package com.service;

import java.util.List;

import com.dao.ReportDao;
import com.dto.Report;

public class ReportServiceImpl implements ReportService{
	private ReportDao reportDao;

	public void setReportDao(ReportDao reportDao) {
		this.reportDao = reportDao;
	}
	
	public List<Object> findAll() {
		return  reportDao.findAll();
	}
	
	public List<Report> findSprice(int id) {
		return  reportDao.findSprice(id);
	}
	
	public void add(Report report) {
		reportDao.add(report);
	}
	
	public Report findOne(int id) {
		return reportDao.findOne(id);
	}

	public void delete(Report r) {
		reportDao.delete(r);
	}
	
	public void update(Report report) {
		reportDao.update(report);
	}
}
