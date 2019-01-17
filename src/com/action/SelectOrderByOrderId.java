package com.action;

import java.util.List;

import com.entity.Order;
import com.opensymphony.xwork2.ActionSupport;
import com.service.OrderService;

public class SelectOrderByOrderId extends ActionSupport{
	private String ordernum;
	private List<Order> orders;
	private OrderService os;
	public String getOrdernum() {
		return ordernum;
	}
	public void setOrdernum(String ordernum) {
		this.ordernum = ordernum;
	}
	public List<Order> getOrders() {
		return orders;
	}
	public void setOrders(List<Order> orders) {
		this.orders = orders;
	}
	public OrderService getOs() {
		return os;
	}
	public void setOs(OrderService os) {
		this.os = os;
	}
	public String execute(){
	
		if(ordernum!=null){
		orders=os.selectByOrderId(ordernum);
		return "success";
		}
		return null;
		
	}
	
}
