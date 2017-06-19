package com.service;

import java.util.List;

import com.dto.User;

public interface AdminService {

	void add(User user);

	List<User> findAll();

	User findOne(int id);

	void delete(User u);

	void update(User user);

	

}
