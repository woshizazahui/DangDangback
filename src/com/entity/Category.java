package com.entity;

public class Category {
    private Short id;

    private String category;

    private Short parentid;

    private Short store;

    
	public Short getId() {
        return id;
    }

    public void setId(Short id) {
        this.id = id;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category == null ? null : category.trim();
    }

    public Short getParentid() {
        return parentid;
    }

    public void setParentid(Short parentid) {
        this.parentid = parentid;
    }

    public Short getStore() {
        return store;
    }

    public void setStore(Short store) {
        this.store = store;
    }

	@Override
	public String toString() {
		return "Category [id=" + id + ", category=" + category + ", parentid=" + parentid + ", store=" + store
				+ ", getId()=" + getId() + ", getCategory()=" + getCategory() + ", getParentid()=" + getParentid()
				+ ", getStore()=" + getStore() + ", getClass()=" + getClass() + ", hashCode()=" + hashCode()
				+ ", toString()=" + super.toString() + "]";
	}
    
}