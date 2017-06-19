package com.service;

import java.util.List;

import com.dao.AdminDao;
import com.dto.User;

public class AdminServiceImpl implements AdminService {
	private AdminDao adminDao;

	public void setAdminDao(AdminDao adminDao) {
		this.adminDao = adminDao;
	}

	public void add(User user) {
		adminDao.add(user);
	}

	public List<User> findAll() {
		return  adminDao.findAll();
	}

	
	
}
