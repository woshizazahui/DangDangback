package com.action;

import static org.hamcrest.CoreMatchers.nullValue;

import java.util.List;

import com.entity.Goods;

import com.opensymphony.xwork2.ActionSupport;
import com.service.GoodsService;

public class QueryBooksAction extends ActionSupport{
	private List<Goods> goods;
	private String pageIndex;
	private int pageIndexN;
	
	public int getPageIndexN() {
		return pageIndexN;
	}

	public void setPageIndexN(int pageIndexN) {
		this.pageIndexN = pageIndexN;
	}

	private GoodsService gs;
	
	
	public List<Goods> getGoods() {
		return goods;
	}

	public void setGoods(List<Goods> goods) {
		this.goods = goods;
	}

	public GoodsService getGs() {
		return gs;
	}

	public void setGs(GoodsService gs) {
		this.gs = gs;
	}

	public String getPageIndex() {
		return pageIndex;
	}

	public void setPageIndex(String pageIndex) {
		this.pageIndex = pageIndex;
	}

	public String execute(){
		pageIndexN=Integer.parseInt(pageIndex);
		goods = gs.selectGoods(pageIndexN);
		return "success";
	}
	
	
}
