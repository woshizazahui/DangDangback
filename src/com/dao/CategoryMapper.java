package com.dao;

import java.util.List;

import com.entity.Category;
import com.entity.CategoryNew;
import com.entity.FatherCategory;
import com.entity.SonCategory;
import com.entity.TwoCategory;

public interface CategoryMapper {
    int deleteByPrimaryKey(int id);

    int insert(Category record);

    int insertSelective(Category record);

    Category selectByPrimaryKey(int id);

    int updateByPrimaryKeySelective(Category record);

    int updateByPrimaryKey(Category record);
    
    List<TwoCategory> selecTwoCategory();
    
    List<SonCategory> selectCategoryByParentId(int id);
    
    List<CategoryNew> selectCategoryNews();
    
    List<SonCategory> selectSonCategoryByid(int id);
    
    List<Category> selectCategories(int pageIndex);
    
    int getMaxPage();
    FatherCategory selectCategory(int parentid);
    
    List<Category> selectFatherCategories();
    
 
    
	
}