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
		//当前页
		pageBean.setCurrentPage(currentPage);
		//总记录数
		int totalCount = studentDao.findCount();
		pageBean.setTotalCount(totalCount);
		//每页显示的记录数
		int pageSize = 3;
		//
		int totalPage = 0;
		if(totalCount % pageSize == 0){
			totalPage = totalCount % pageSize;
		}else {
			totalPage = totalCount % pageSize + 1;
		}
		pageBean.setTotalPage(totalPage);
		//开始位置
		int begin = (currentPage-1) * pageSize;
		//每页记录的list集合
		List<User> list = studentDao.findPage(begin,pageSize);
		pageBean.setList(list);
		return pageBean;
	}
}
