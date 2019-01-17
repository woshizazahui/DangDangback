package com.action;

import java.io.PrintWriter;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.service.UserService;
import com.util.SendMessageUtil;

public class SendMessage  extends ActionSupport{
	private String nickname;
	private String phone;
	private String message;
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}

	public String execute() throws Exception{
     	message="尊敬的"+nickname+","+message;
		SendMessageUtil.sendmessage(phone, message);
		String result="";
		PrintWriter  out= ServletActionContext.getResponse().getWriter();
		
		if(SendMessageUtil.sendSmsResponse.getCode()!=null&&SendMessageUtil.sendSmsResponse.getCode().equals("OK")){
				result="true";
				out.print(result);
			return null;
		}else{
				result="false";
				out.print(result);
				return null;
		}
	
	}
	
}
