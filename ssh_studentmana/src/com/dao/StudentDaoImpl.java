package com.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.DetachedCriteria;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.transaction.annotation.Transactional;

import com.dto.User;

@Transactional
public class StudentDaoImpl extends HibernateDaoSupport implements StudentDao {
	// 查询记录数
	public int findCount() {
		@SuppressWarnings("unchecked")
		List<Object> list = (List<Object>) super.getHibernateTemplate().find(
				"select count(*) from User u where u.role = '学生'");
		// 从list中得带值
		if (list != null && list.size() != 0) {
			Object obj = list.get(0);
			Long lobj = (Long) obj;
			int count = lobj.intValue();
			return count;
		}
		return 0;
	}

	// 分页查询操作
	public List<User> findPage(int begin, int pageSize) {

		/*
		 * SessionFactory sessionFactory =
		 * super.getHibernateTemplate().getSessionFactory(); Session session =
		 * sessionFactory.getCurrentSession(); Query query =
		 * session.createQuery("from User"); query.setFirstResult(begin);
		 * query.setMaxResults(pageSize); List<User> list = query.list();
		 */

		DetachedCriteria criteria = DetachedCriteria.forClass(User.class);
		List<User> list = this.getHibernateTemplate().findByCriteria(criteria,
				begin, pageSize);
		return list;
	}

	// 添加学生
	public void add(User user) {
		super.getHibernateTemplate().save(user);
	}

	// 根据id查询对象
	public User findOne(int id) {
		return super.getHibernateTemplate().get(User.class, id);
	}

	// 删除学生
	public void delete(User u) {
		super.getHibernateTemplate().delete(u);
	}

	// 更新学生
	public void update(User user) {
		super.getHibernateTemplate().update(user);
	}

}
