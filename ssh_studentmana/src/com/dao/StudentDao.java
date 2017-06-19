package com.dao;

import java.util.List;


import com.dto.User;

public interface StudentDao {

	int findCount();

	List<User> findPage(int begin, int pageSize);

}
