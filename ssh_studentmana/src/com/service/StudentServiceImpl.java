package com.service;

import java.util.List;

import com.dao.StudentDao;
import com.dto.User;
import com.entity.PageBean;

public class StudentServiceImpl implements StudentService {
	private StudentDao studentDao;

	public void setStudentDao(StudentDao studentDao) {
		this.studentDao = studentDao;
	}

	public PageBean listpage(Integer currentPage) {
		PageBean pageBean = new PageBean();
		//��ǰҳ
		pageBean.setCurrentPage(currentPage);
		//�ܼ�¼��
		int totalCount = studentDao.findCount();
		pageBean.setTotalCount(totalCount);
		//ÿҳ��ʾ�ļ�¼��
		int pageSize = 3;
		//
		int totalPage = 0;
		if(totalCount % pageSize == 0){
			totalPage = totalCount % pageSize;
		}else {
			totalPage = totalCount % pageSize + 1;
		}
		pageBean.setTotalPage(totalPage);
		//��ʼλ��
		int begin = (currentPage-1) * pageSize;
		//ÿҳ��¼��list����
		List<User> list = studentDao.findPage(begin,pageSize);
		pageBean.setList(list);
		return pageBean;
	}
}
