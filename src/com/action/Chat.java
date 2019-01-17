package com.action;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.util.RobotUtil;

public class Chat  extends ActionSupport{
	private String context;

	public String getContext() {
		return context;
	}

	public void setContext(String context) {
		this.context = context;
	}
	public String execute() throws IOException {
			ServletActionContext.getRequest().setCharacterEncoding("UTF-8");
			HttpServletResponse response = ServletActionContext.getResponse();
			response.setContentType("application/json;charset=UTF-8");
			String chat=RobotUtil.chat(context);
			response.getWriter().print(chat);
			return null;
	}
}
