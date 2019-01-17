package com.action;

import static org.hamcrest.CoreMatchers.nullValue;

import com.opensymphony.xwork2.ActionSupport;
import com.service.OrderService;

public class DeleteOrdersByIds  extends ActionSupport{
	private int[] id;
	private OrderService os;
	public int[] getId() {
		return id;
	}
	public void setId(int[] id) {
		this.id = id;
	}
	public OrderService getOs() {
		return os;
	}
	public void setOs(OrderService os) {
		this.os = os;
	}
	public String execute(){
		int length=id.length;
		for(int i=0;i<length;++i){
			os.deleteOrdersById(id[i]);
		}
		
		return "success";
		
	}
	
}
