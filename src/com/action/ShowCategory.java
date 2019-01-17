package com.action;

import java.util.List;

import com.entity.Category;
import com.opensymphony.xwork2.ActionSupport;
import com.service.CategoryService;

public class ShowCategory extends ActionSupport{
	private int pageIndex;
	private int maxPage;
	private List<Category> category;
	private CategoryService cs;
	public int getPageIndex() {
		return pageIndex;
	}
	public void setPageIndex(int pageIndex) {
		this.pageIndex = pageIndex;
	}
	public int getMaxPage() {
		return maxPage;
	}
	public void setMaxPage(int maxPage) {
		this.maxPage = maxPage;
	}
	public List<Category> getCategory() {
		return category;
	}
	public void setCategory(List<Category> category) {
		this.category = category;
	}
	public CategoryService getCs() {
		return cs;
	}
	public void setCs(CategoryService cs) {
		this.cs = cs;
	}
	public String execute(){
		//根据页数查询类别
		category=cs.selectCategories(pageIndex);
		
		//查询总页数
		double count=cs.getMaxPage();
		maxPage=(int)Math.ceil(count/5);
		
		return "success";
	
	}
	
}
