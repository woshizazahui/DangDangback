package com.action;

import com.opensymphony.xwork2.ActionSupport;
import com.service.GoodsService;

public class GetCount extends ActionSupport{
	private double count;
	private String countString;
	private double d;
	private int pageCount;
	
	public int getPageCount() {
		return pageCount;
	}

	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}

	public double getD() {
		return d;
	}

	public void setD(double d) {
		this.d = d;
	}

	public String getCountString() {
		return countString;
	}

	public void setCountString(String countString) {
		this.countString = countString;
	}
	private GoodsService gs;
	
	public GoodsService getGs() {
		return gs;
	}

	public void setGs(GoodsService gs) {
		this.gs = gs;
	}

	public double getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}
	public String execute(){
		count=gs.getCount();
		double pageCount=Math.ceil(count/5);
		countString=String.format("%.0f", pageCount);
		
		return "success";
	}
}
