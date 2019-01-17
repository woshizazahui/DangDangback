package com.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.entity.Goods;

public interface GoodsMapper {
    int deleteByPrimaryKey(Short id);

    int insert(Goods record);

    int insertSelective(Goods record);

    Goods selectByPrimaryKey(int id);

    int updateByPrimaryKeySelective(Goods record);

    int updateByPrimaryKey(Goods record);
    
    List<Goods> selectGoodsByPageIndex(@Param("pageIndex") int pageIndex);
    
    void updateStatus(@Param("id")int id,@Param("status")String status);
    
    int getCount();
    
    void updateGoods(Goods g);
    
    void insertGoods(Goods g);
   
    
}