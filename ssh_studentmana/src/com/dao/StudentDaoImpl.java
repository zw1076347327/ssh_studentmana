package com.dao;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.DetachedCriteria;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.transaction.annotation.Transactional;

import com.dto.User;

@Transactional
public class StudentDaoImpl extends HibernateDaoSupport implements StudentDao {
	// ��ѯ��¼��
	public int findCount() {
		@SuppressWarnings("unchecked")
		List<Object> list = (List<Object>) super.getHibernateTemplate().find(
				"select count(*) from User u where u.role = 'ѧ��'");
		// ��list�еô�ֵ
		if (list != null && list.size() != 0) {
			Object obj = list.get(0);
			Long lobj = (Long) obj;
			int count = lobj.intValue();
			return count;
		}
		return 0;
	}

	// ��ҳ��ѯ����
	public List<User> findPage(final int begin, final int pageSize) {
		@SuppressWarnings("unchecked")
		List<User> list = (List) getHibernateTemplate().execute(
				new HibernateCallback() {
					// ����HibernateTemplate().execute�ѻص��ķ�ʽʹ�ã�����Ҫ�ر�session
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						// ʹ��session
						Query query = session
								.createQuery("from User u where u.role = 'ѧ��'");
						query.setFirstResult(begin);
						query.setMaxResults(pageSize);
						return query.list();
					}
				});

		// DetachedCriteria criteria = DetachedCriteria.forClass(User.class);
		// List<User> list =
		// this.getHibernateTemplate().findByCriteria(criteria,begin, pageSize);

		return list;
	}

	// ���ѧ��
	public void add(User user) {
		super.getHibernateTemplate().save(user);
	}

	// ����id��ѯ����
	public User findOne(int id) {
		return super.getHibernateTemplate().get(User.class, id);
	}

	// ɾ��ѧ��
	public void delete(User u) {
		super.getHibernateTemplate().delete(u);
	}

	// ����ѧ��
	public void update(User user) {
		super.getHibernateTemplate().update(user);
	}

}
