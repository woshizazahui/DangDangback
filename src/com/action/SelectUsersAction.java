package com.action;

import java.util.List;

import com.entity.User;
import com.opensymphony.xwork2.ActionSupport;
import com.service.UserService;

public class SelectUsersAction extends ActionSupport{
	private int pageIndex;
	private List<User> users;
	private UserService us;
	
	public UserService getUs() {
		return us;
	}

	public void setUs(UserService us) {
		this.us = us;
	}

	public List<User> getUsers() {
		return users;
	}

	public void setUsers(List<User> users) {
		this.users = users;
	}

	public int getPageIndex() {
		return pageIndex;
	}

	public void setPageIndex(int pageIndex) {
		this.pageIndex = pageIndex;
	}
	public String execute(){
		pageIndex=1;
		this.users = us.selectUsers(pageIndex);
		return "success";
	}
	
}
