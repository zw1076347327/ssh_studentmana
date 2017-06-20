package com.dao;

import java.util.List;

import com.dto.Report;

public interface ReportDao {
	List<Object> findAll();
	
	List<Report> findSprice(int id);
	
	void add(Report report);
	
	Report findOne(int id);

	void delete(Report r);
	
	void update(Report report);
}
