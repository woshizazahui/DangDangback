package com.entity;

import java.util.List;

public class CategoryNew {
	private int id;
	private String category;
	private List<SonCategory> childCategory;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public List<SonCategory> getChildCategory() {
		return childCategory;
	}
	public void setChildCategory(List<SonCategory> childCategory) {
		this.childCategory = childCategory;
	}
	
	
	
}
