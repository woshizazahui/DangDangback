package com.service;

import java.util.List;

import com.entity.Goods;

public interface GoodsService {
	List<Goods> selectGoods(int pageIndex);
	boolean  updateStatus(int id,String status);
	Goods selectGoodsById(int id);
	int getCount();
	void updateGoodsById(Goods good);
	void insertGoods(Goods g);
}
