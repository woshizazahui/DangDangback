package com.action;

import com.opensymphony.xwork2.ActionSupport;
import com.service.UserService;

public class UpdateUserStatusAction  extends ActionSupport{
	private int id;
	private String status;
	private UserService us;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public UserService getUs() {
		return us;
	}
	public void setUs(UserService us) {
		this.us = us;
	}
	public String execute(){
		us.updateUserStatus(id, status);
		return "success";
	}
	
	
}
