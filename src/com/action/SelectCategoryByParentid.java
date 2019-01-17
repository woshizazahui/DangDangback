package com.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.entity.Category;
import com.entity.SonCategory;
import com.service.CategoryService;

import net.sf.json.JSONArray;

public class SelectCategoryByParentid {
	private int parentid;
	private CategoryService cs;

	public CategoryService getCs() {
		return cs;
	}

	public void setCs(CategoryService cs) {
		this.cs = cs;
	}

	public int getParentid() {
		return parentid;
	}

	public void setParentid(int parentid) {
		this.parentid = parentid;
	}

	public String execute() throws IOException{
		List<SonCategory> list=cs.selectCategoryByid(parentid);
		JSONArray fromObject = JSONArray.fromObject(list);
		String result=fromObject.toString();
		System.out.println(parentid);
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		out.print(result);
		return null;
	}
}
