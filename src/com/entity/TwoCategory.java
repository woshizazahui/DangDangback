package com.entity;

public class TwoCategory {
	private int id;
	private String category;
	private int parentId;
	private String parentCategory;
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
	public int getParentId() {
		return parentId;
	}
	public void setParentId(int parentId) {
		this.parentId = parentId;
	}
	public String getParentCategory() {
		return parentCategory;
	}
	public void setParentCategory(String parentCategory) {
		this.parentCategory = parentCategory;
	}
	@Override
	public String toString() {
		return "TwoCategory [id=" + id + ", category=" + category + ", parentId=" + parentId + ", parentCategory="
				+ parentCategory + ", getId()=" + getId() + ", getCategory()=" + getCategory() + ", getParentId()="
				+ getParentId() + ", getParentCategory()=" + getParentCategory() + ", getClass()=" + getClass()
				+ ", hashCode()=" + hashCode() + ", toString()=" + super.toString() + "]";
	}
	
}
