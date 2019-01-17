package com.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.entity.Category;
import com.opensymphony.xwork2.ActionSupport;
import com.service.CategoryService;

import net.sf.json.JSONArray;

public class SelectFatherCategories extends ActionSupport {
	private CategoryService cs;

	public CategoryService getCs() {
		return cs;
	}

	public void setCs(CategoryService cs) {
		this.cs = cs;
	}
	public String execute() throws IOException{
		List<Category> selectCategory = cs.selectCategory();
		JSONArray fromObject = JSONArray.fromObject(selectCategory);
		String result=fromObject.toString();
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		out.print(result);
		return null;
	}
}
