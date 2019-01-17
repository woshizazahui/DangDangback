package com.dao;

import java.util.List;

import com.entity.Order;

public interface OrderMapper {
    void  deleteByPrimaryKey(Integer  id);

    int insert(Order record);

    int insertSelective(Order record);

    Order selectByOrderId(Short id);

    int updateByPrimaryKeySelective(Order record);

    int updateByPrimaryKey(Order record);
    
    List<Order> selectAllOrders();
    
    List<Order> selectByOrderId(String orderid);
}