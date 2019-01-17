package com.service.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.dao.UserMapper;
import com.entity.User;
import com.service.UserService;

public class UserServiceImpl implements UserService {
	private SqlSessionTemplate sqlSession;
	
	public SqlSessionTemplate getSqlSession() {
		return sqlSession;
	}

	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public List<User> selectUsers(int pageIndex) {
		UserMapper mapper = sqlSession.getMapper(UserMapper.class);
		List<User> selectUsers = mapper.selectUsers(pageIndex);
		return selectUsers;
	}

	@Override
	public void updateUserStatus(int id, String status) {
		UserMapper mapper = sqlSession.getMapper(UserMapper.class);
		
		mapper.updateUserStatus(id, status);
		
	}

}
