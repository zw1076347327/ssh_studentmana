package com.dao;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.dto.User;

public class AdminDaoImpl extends HibernateDaoSupport implements AdminDao {
	//��ӹ���Ա
	public void add(User user) {
		super.getHibernateTemplate().save(user);
	}
	
	//��ѯ����Ա
	@SuppressWarnings("unchecked")
	public List<User> findAll() {
		return (List<User>)super.getHibernateTemplate().find("from User");
	}
	
	//����id��ѯ����
	public User findOne(int id) {
		return super.getHibernateTemplate().get(User.class, id);
	}
	
	//ɾ������Ա
	public void delete(User u) {
		super.getHibernateTemplate().delete(u);
	}

	
	
}
