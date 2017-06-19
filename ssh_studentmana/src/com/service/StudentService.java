package com.service;

import com.dto.User;
import com.entity.PageBean;

public interface StudentService {

	PageBean listpage(Integer currentPage);

	void add(User user);

	User findOne(int id);

	void delete(User u);

	void update(User user);

}
