package com.dao;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.dto.User;

public class AdminDaoImpl extends HibernateDaoSupport implements AdminDao {

	public void add(User user) {
		super.getHibernateTemplate().save(user);
	}

	@SuppressWarnings("unchecked")
	public List<User> findAll() {
		return (List<User>)super.getHibernateTemplate().find("from User");
	}

	
	
}
