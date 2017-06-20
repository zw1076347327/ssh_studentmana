package Test;

import java.util.List;

import org.junit.Test;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.dto.Report;

public class TestHql extends HibernateDaoSupport{
	@Test
	public void test(){
		ClassPathXmlApplicationContext ctx = new ClassPathXmlApplicationContext("applicationContext.xml");
		List<Report> list = this.getHibernateTemplate().find("from Report r where r.user.id=?",1);
		for(Report l : list){
			System.out.println(l.getId()+"__"+l.getCourse()+"__"+l.getPrice());
		}
	}
}
