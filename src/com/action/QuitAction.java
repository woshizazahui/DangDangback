package com.action;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class QuitAction extends ActionSupport {
	public String execute(){
		HttpSession session = ServletActionContext.getRequest().getSession();
		session.removeAttribute("admin");
		return "success";
		
	}
}
