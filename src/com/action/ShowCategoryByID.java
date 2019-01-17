package com.action;

import com.entity.Category;
import com.opensymphony.xwork2.ActionSupport;
import com.service.CategoryService;

public class ShowCategoryByID extends ActionSupport{
	private int id;
	private Category category;
	private CategoryService cs;
	
	public CategoryService getCs() {
		return cs;
	}
	public void setCs(CategoryService cs) {
		this.cs = cs;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	public String execute(){
		System.out.println(id);
		category=cs.selectCategoryById(id);
		System.out.println(category);
		return "success";
	}
}
