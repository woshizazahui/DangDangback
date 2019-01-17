package com.action;

import com.service.CategoryService;

public class DeleteCategoryById {
	private int id;
	private CategoryService cs;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public CategoryService getCs() {
		return cs;
	}
	public void setCs(CategoryService cs) {
		this.cs = cs;
	}
	public String execute(){
		cs.deleteCategoryById(id);
		return "success";
	}
}
