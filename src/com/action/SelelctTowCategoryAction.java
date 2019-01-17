package com.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.json.JsonArray;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.entity.TwoCategory;
import com.opensymphony.xwork2.ActionSupport;
import com.service.CategoryService;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import oracle.net.ns.AcceptPacket;

public class SelelctTowCategoryAction  extends ActionSupport{
	private List<TwoCategory> list;
	private CategoryService sc;
	private String result;
	
	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}


	public void setSc(CategoryService sc) {
		this.sc = sc;
	}

	public List<TwoCategory> getList() {
		return list;
	}

	public void setList(List<TwoCategory> list) {
		this.list = list;
	}
	public String execute() throws IOException{
		System.out.println(sc);
		list=sc.selecTwoCategories();
		JSONArray json=JSONArray.fromObject(list);//将list转化为json对象
		result=json.toString();//用于页面来接受
		
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setCharacterEncoding("utf-8");
		PrintWriter out=response.getWriter();
		out.print(result);
		return null;
	}
	
}
