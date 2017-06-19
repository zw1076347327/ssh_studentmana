package com.dao;

import java.util.List;

import com.dto.User;

public interface AdminDao {

	void add(User user);

	List<User> findAll();

}
