package com.dao;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.dto.User;

public class AdminDaoImpl extends HibernateDaoSupport implements AdminDao {
	//添加管理员
	public void add(User user) {
		super.getHibernateTemplate().save(user);
	}
	
	//查询管理员
	@SuppressWarnings("unchecked")
	public List<User> findAll() {
		return (List<User>)super.getHibernateTemplate().find("from User");
	}
	
	//根据id查询对象
	public User findOne(int id) {
		return super.getHibernateTemplate().get(User.class, id);
	}
	
	//删除管理员
	public void delete(User u) {
		super.getHibernateTemplate().delete(u);
	}

	
	
}
