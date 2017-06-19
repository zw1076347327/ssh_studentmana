package com.dao;

import java.util.List;


import com.dto.User;

public interface StudentDao {

	int findCount();

	List<User> findPage(int begin, int pageSize);

	void add(User user);

	User findOne(int id);

	void delete(User u);

	void update(User user);

}
