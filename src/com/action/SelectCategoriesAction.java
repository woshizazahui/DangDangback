package com.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.entity.CategoryNew;
import com.opensymphony.xwork2.ActionSupport;
import com.service.CategoryService;

import net.sf.json.JSONArray;

public class SelectCategoriesAction extends ActionSupport{
	private List<CategoryNew> lists;
	private CategoryService cs;
	public List<CategoryNew> getLists() {
		return lists;
	}
	public void setLists(List<CategoryNew> lists) {
		this.lists = lists;
	}
	public CategoryService getCs() {
		return cs;
	}
	public void setCs(CategoryService cs) {
		this.cs = cs;
	}
	public String execute() throws IOException{
		lists=cs.selectCategories();
		JSONArray fromObject = JSONArray.fromObject(lists);
		String result=fromObject.toString();
		System.out.println(result);
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		out.print(result);
		return null;
	}
}
