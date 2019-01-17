package com.service;

import java.util.List;

import com.entity.Order;

public interface OrderService {
	List<Order> selectAllOrders();
	List<Order> selectByOrderId(String orderid);
	void deleteOrdersById(int id);
}
