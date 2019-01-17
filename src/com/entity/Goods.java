package com.entity;

import java.math.BigDecimal;

public class Goods {
    private Short id;

    private String name;

    private String coverurl;

    private String author;

    private String publish;

    private String description;

    private BigDecimal originalprice;

    private BigDecimal discountprice;

    private String state;

    private Short store;

    private Short salecount;

    private Short recommendstate;

    private String evalution;

    private Short categoryid;
    
    private Category category;
    

    public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public Short getId() {
        return id;
    }

    public void setId(Short id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getCoverurl() {
        return coverurl;
    }

    public void setCoverurl(String coverurl) {
        this.coverurl = coverurl == null ? null : coverurl.trim();
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author == null ? null : author.trim();
    }

    public String getPublish() {
        return publish;
    }

    public void setPublish(String publish) {
        this.publish = publish == null ? null : publish.trim();
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description == null ? null : description.trim();
    }

    public BigDecimal getOriginalprice() {
        return originalprice;
    }

    public void setOriginalprice(BigDecimal originalprice) {
        this.originalprice = originalprice;
    }

    public BigDecimal getDiscountprice() {
        return discountprice;
    }

    public void setDiscountprice(BigDecimal discountprice) {
        this.discountprice = discountprice;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state == null ? null : state.trim();
    }

    public Short getStore() {
        return store;
    }

    public void setStore(Short store) {
        this.store = store;
    }

    public Short getSalecount() {
        return salecount;
    }

    public void setSalecount(Short salecount) {
        this.salecount = salecount;
    }

    public Short getRecommendstate() {
        return recommendstate;
    }

    public void setRecommendstate(Short recommendstate) {
        this.recommendstate = recommendstate;
    }

    public String getEvalution() {
        return evalution;
    }

    public void setEvalution(String evalution) {
        this.evalution = evalution == null ? null : evalution.trim();
    }

    public Short getCategoryid() {
        return categoryid;
    }

    public void setCategoryid(Short categoryid) {
        this.categoryid = categoryid;
    }

	@Override
	public String toString() {
		return "Goods [id=" + id + ", name=" + name + ", coverurl=" + coverurl + ", author=" + author + ", publish="
				+ publish + ", description=" + description + ", originalprice=" + originalprice + ", discountprice="
				+ discountprice + ", state=" + state + ", store=" + store + ", salecount=" + salecount
				+ ", recommendstate=" + recommendstate + ", evalution=" + evalution + ", categoryid=" + categoryid
				+ ", category=" + category + ", getCategory()=" + getCategory() + ", getId()=" + getId()
				+ ", getName()=" + getName() + ", getCoverurl()=" + getCoverurl() + ", getAuthor()=" + getAuthor()
				+ ", getPublish()=" + getPublish() + ", getDescription()=" + getDescription() + ", getOriginalprice()="
				+ getOriginalprice() + ", getDiscountprice()=" + getDiscountprice() + ", getState()=" + getState()
				+ ", getStore()=" + getStore() + ", getSalecount()=" + getSalecount() + ", getRecommendstate()="
				+ getRecommendstate() + ", getEvalution()=" + getEvalution() + ", getCategoryid()=" + getCategoryid()
				+ ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString()
				+ "]";
	}

	

	
    
}