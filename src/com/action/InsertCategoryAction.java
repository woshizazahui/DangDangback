package com.action;

import com.entity.Category;
import com.opensymphony.xwork2.ActionSupport;
import com.service.CategoryService;

public class InsertCategoryAction extends ActionSupport{
	private Category category;
	private CategoryService cs;
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	public CategoryService getCs() {
		return cs;
	}
	public void setCs(CategoryService cs) {
		this.cs = cs;
	}
	public String execute(){
		if(category!=null){
		cs.insertCategory(category);
			return "success";
		}
		return null;	
	}
	
	
}
