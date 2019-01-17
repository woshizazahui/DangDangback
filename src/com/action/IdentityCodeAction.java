package com.action;

import java.io.IOException;
import java.io.PrintWriter;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.util.ValueStack;

public class IdentityCodeAction extends ActionSupport{
	 public String execute() throws IOException{
		 ValueStack valueStack = ActionContext.getContext().getValueStack();
		 String code=valueStack.findString("#session.checkcode");
		 String userCode=ServletActionContext.getRequest().getParameter("code");
		 String result="";
		 if(userCode!=null&&userCode.equals(code)){
			 result= "1";
		 }else {
			result="0";
		}
		 PrintWriter out=ServletActionContext.getResponse().getWriter();
		 out.print(result);
		 return null;
	 }
}
