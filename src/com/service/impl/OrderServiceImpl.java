package com.service.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.dao.OrderMapper;
import com.entity.Order;
import com.service.OrderService;

public class OrderServiceImpl implements OrderService {
	private SqlSessionTemplate sqlSession;
	
	public SqlSessionTemplate getSqlSession() {
		return sqlSession;
	}

	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public List<Order> selectAllOrders() {
		OrderMapper mapper = sqlSession.getMapper(OrderMapper.class);
		List<Order> selectAllOrders = mapper.selectAllOrders();
		return selectAllOrders;
	}

	@Override
	public List<Order> selectByOrderId(String orderid) {
	OrderMapper mapper = sqlSession.getMapper(OrderMapper.class);
	List<Order> selectByOrderId = mapper.selectByOrderId(orderid);
		return selectByOrderId;
	}

	@Override
	public void deleteOrdersById(int id) {
	OrderMapper mapper = sqlSession.getMapper(OrderMapper.class);
	mapper.deleteByPrimaryKey(id);
	}

}
