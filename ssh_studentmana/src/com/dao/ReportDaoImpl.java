package com.dao;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.dto.Report;
import com.dto.User;

public class ReportDaoImpl extends HibernateDaoSupport implements ReportDao{
	//管理员查询成绩
	@SuppressWarnings("unchecked")
	public List<Object> findAll() {
//		return (List<Object>)super.getHibernateTemplate().find("select u.id, u.uname, r.course, r.price from User u, Report r where u.id = r.user.id");
		return (List<Object>)super.getHibernateTemplate().find("from Report");
	}
	
	//学生查询成绩
	@SuppressWarnings("unchecked")
	public List<Report> findSprice(int id) {
		return (List<Report>)super.getHibernateTemplate().find("from Report r where r.user.id=?",id);
	}
			
	//添加成绩
	public void add(Report report) {
		super.getHibernateTemplate().save(report);
	}
				
	//根据id查询对象
	public Report findOne(int id) {
		Report report = super.getHibernateTemplate().get(Report.class,id);
		return report;
	}
					
	//删除成绩
	public void delete(Report r) {
		super.getHibernateTemplate().delete(r);
	}

	//更新成绩
	public void update(Report report) {
		super.getHibernateTemplate().update(report);
	}
				
}
