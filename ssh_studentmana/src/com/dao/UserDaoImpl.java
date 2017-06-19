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

	/*public List<User> queryUserList(User user){
		Map<String, Object> map = new HashMap<String, Object>();
		if(user!=null){
			map.put("uname", user.getUname());
			map.put("pwd", user.getPwd());
		}
		return (List<User>) user;
		
	}
*/
	

	

	

	
}
