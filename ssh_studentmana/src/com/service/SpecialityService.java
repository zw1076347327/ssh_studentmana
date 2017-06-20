package com.service;

import java.util.List;

import com.dto.Speciality;

public interface SpecialityService {
	List<Speciality> findAll();
	
	void add(Speciality speciality);
	
	Speciality findOne(int id);

	void delete(Speciality s);

	void update(Speciality speciality);
}
