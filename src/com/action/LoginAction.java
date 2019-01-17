package com.action;

import static org.hamcrest.CoreMatchers.nullValue;

import javax.servlet.ServletContext;

import org.apache.struts2.ServletActionContext;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.entity.Admin;
import com.entity.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.util.ValueStack;
import com.service.AdminService;

public class LoginAction  extends ActionSupport{
	private Admin  admin;
	private AdminService as;
	private String code;
	

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public AdminService getAs() {
		return as;
	}

	public void setAs(AdminService as) {
		this.as = as;
	}

	public Admin getAdmin() {
		return admin;
	}

	public void setAdmin(Admin admin) {
		this.admin = admin;
	}

	public String execute(){
		
 		ValueStack valueStack = ActionContext.getContext().getValueStack();
 		String sessionCode=valueStack.findString("#session.checkcode");
 		System.out.println(sessionCode);
 		Admin selectAdmin = as.selectAdmin(admin.getUsername(),admin.getPassword());
 		if(selectAdmin!=null){
 			if(code.equals(sessionCode)){
 				 //判断管理员是普通管理员还是1超级管理员
 				System.out.println("成功登陆");
 				if(selectAdmin.getPower()==0){
 					 //普通管理员
 					valueStack.setValue("#session.admin", selectAdmin);
 					return "ordinary";
 					
 				}
 				else {
 					 //超级管理员
 					valueStack.setValue("#session.admin", selectAdmin);
 					return "super";
 				}
 			}
 			return "error";
 		}
 		return "error";
		
	}
	
	
	
}
