package com.action;

import java.util.List;

import com.entity.Order;
import com.opensymphony.xwork2.ActionSupport;
import com.service.OrderService;

public class SelectAllOrders extends ActionSupport{
	private List<Order> orders;
	private OrderService os;
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
		orders=os.selectAllOrders();
		return "success";
	}
}
