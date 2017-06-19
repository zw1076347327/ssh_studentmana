package com.service;

import java.util.List;

import com.dao.UserDao;
import com.dto.User;

public class UserServiceImpl implements UserService{
	private UserDao userDao;

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}


	public User login(User user) {
		return userDao.login(user);
	}


	/*public List<User> queryUserList(User user) {
		return userDao.queryUserList(user);
	}

*/	

	


}
