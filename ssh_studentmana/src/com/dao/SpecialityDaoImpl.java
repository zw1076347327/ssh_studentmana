package com.dao;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.dto.Speciality;

public class SpecialityDaoImpl extends HibernateDaoSupport implements SpecialityDao{
	//查询专业
		@SuppressWarnings("unchecked")
		public List<Speciality> findAll() {
			return (List<Speciality>)super.getHibernateTemplate().find("from Speciality");
		}
		
		//添加专业
		public void add(Speciality speciality) {
			super.getHibernateTemplate().save(speciality);
		}
			
		//根据id查询对象
		public Speciality findOne(int id) {
			return super.getHibernateTemplate().get(Speciality.class, id);
		}
				
		//删除专业
		public void delete(Speciality s) {
			super.getHibernateTemplate().delete(s);
		}

		//更新专业
		public void update(Speciality speciality) {
			super.getHibernateTemplate().update(speciality);
		}
			
}
