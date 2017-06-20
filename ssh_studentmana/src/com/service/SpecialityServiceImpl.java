package com.service;

import java.util.List;

import com.dao.SpecialityDao;
import com.dto.Speciality;

public class SpecialityServiceImpl implements SpecialityService {
	private SpecialityDao specialityDao;

	public void setSpecialityDao(SpecialityDao specialityDao) {
		this.specialityDao = specialityDao;
	}
	
	public List<Speciality> findAll() {
		return  specialityDao.findAll();
	}
	
	public void add(Speciality speciality) {
		specialityDao.add(speciality);
	}
	
	public Speciality findOne(int id) {
		return specialityDao.findOne(id);
	}

	public void delete(Speciality s) {
		specialityDao.delete(s);
	}
	
	public void update(Speciality speciality) {
		specialityDao.update(speciality);
	}
}
