package com.service;

import java.util.List;

import com.dao.AdminDao;
import com.dto.User;
import com.entity.Admin;

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

	public User findOne(int id) {
		return adminDao.findOne(id);
	}

	public void delete(User u) {
		adminDao.delete(u);
	}

	
	
}
