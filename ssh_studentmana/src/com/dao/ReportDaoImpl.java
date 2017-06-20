package com.dao;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.dto.Report;
import com.dto.User;

public class ReportDaoImpl extends HibernateDaoSupport implements ReportDao{
	//����Ա��ѯ�ɼ�
	@SuppressWarnings("unchecked")
	public List<Object> findAll() {
//		return (List<Object>)super.getHibernateTemplate().find("select u.id, u.uname, r.course, r.price from User u, Report r where u.id = r.user.id");
		return (List<Object>)super.getHibernateTemplate().find("from Report");
	}
	
	//ѧ����ѯ�ɼ�
	@SuppressWarnings("unchecked")
	public List<Report> findSprice(int id) {
		return (List<Report>)super.getHibernateTemplate().find("from Report r where r.user.id=?",id);
	}
			
	//��ӳɼ�
	public void add(Report report) {
		super.getHibernateTemplate().save(report);
	}
				
	//����id��ѯ����
	public Report findOne(int id) {
		Report report = super.getHibernateTemplate().get(Report.class,id);
		return report;
	}
					
	//ɾ���ɼ�
	public void delete(Report r) {
		super.getHibernateTemplate().delete(r);
	}

	//���³ɼ�
	public void update(Report report) {
		super.getHibernateTemplate().update(report);
	}
				
}
