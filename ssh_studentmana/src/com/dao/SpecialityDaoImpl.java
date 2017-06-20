package com.dao;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.dto.Speciality;

public class SpecialityDaoImpl extends HibernateDaoSupport implements SpecialityDao{
	//��ѯרҵ
		@SuppressWarnings("unchecked")
		public List<Speciality> findAll() {
			return (List<Speciality>)super.getHibernateTemplate().find("from Speciality");
		}
		
		//���רҵ
		public void add(Speciality speciality) {
			super.getHibernateTemplate().save(speciality);
		}
			
		//����id��ѯ����
		public Speciality findOne(int id) {
			return super.getHibernateTemplate().get(Speciality.class, id);
		}
				
		//ɾ��רҵ
		public void delete(Speciality s) {
			super.getHibernateTemplate().delete(s);
		}

		//����רҵ
		public void update(Speciality speciality) {
			super.getHibernateTemplate().update(speciality);
		}
			
}
