package com.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.dto.User;

public class UserDaoImpl extends HibernateDaoSupport implements UserDao {

	public User login(User user) {
		
		String hql = "from User u where u.uname=? and u.pwd =? and u.role=?";
		List<User> list =super.getHibernateTemplate().find(hql, user.getUname(),user.getPwd(),user.getRole());
		if(list != null && list.size() != 0){
			return list.get(0);
		}else{
			return null;
		}
	}

	
	

	

	

	
}
