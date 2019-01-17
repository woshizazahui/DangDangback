package com.action;

import com.entity.Goods;
import com.service.GoodsService;

public class SelectByIdAction {
	private Goods goods;
	private String id;
	private GoodsService gs;
	
	public String getId() {
		return id;
	}

	public void setId(String idParam) {
		this.id = idParam;
	}

	public GoodsService getGs() {
		return gs;
	}

	public void setGs(GoodsService gs) {
		this.gs = gs;
	}

	public Goods getGoods() {
		return goods;
	}

	public void setGoods(Goods goods) {
		this.goods = goods;
	}
	public String execute(){
		int goodId=Integer.parseInt(id);
		goods=gs.selectGoodsById(goodId);
		return "success";
	}
	
}
