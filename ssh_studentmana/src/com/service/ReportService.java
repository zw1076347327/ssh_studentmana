package com.service;

import java.util.List;

import com.dto.Report;

public interface ReportService {
	
	List<Object> findAll();
	
	List<Report> findSprice(int id);
	
	void add(Report report);
	
	Report findOne(int id);

	void delete(Report r);

	void update(Report report);

	
}
