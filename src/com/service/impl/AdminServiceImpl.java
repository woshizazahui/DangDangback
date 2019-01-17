package com.service.impl;

import org.junit.Test;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.dao.AdminMapper;
import com.entity.Admin;
import com.service.AdminService;

public class AdminServiceImpl implements AdminService {
	private SqlSessionTemplate sqlSession;
	
	public SqlSessionTemplate getSqlSession() {
		return sqlSession;
	}

	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public Admin selectAdmin(String name, String password) {
		AdminMapper am=sqlSession.getMapper(AdminMapper.class);
		Admin admin = am.selectByin(name, password);
		return admin;
		
	}
	

}
