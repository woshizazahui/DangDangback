package com.service;

import java.util.List;

import com.entity.Category;
import com.entity.CategoryNew;
import com.entity.FatherCategory;
import com.entity.SonCategory;
import com.entity.TwoCategory;

public interface CategoryService {
	 List<TwoCategory> selecTwoCategories();
	 List<String> selectCategory(int id);
	 List<SonCategory> selectCategoryByid(int id);
	 List<CategoryNew> selectCategories();
	 void insertCategory(Category c);
	 List<Category> selectCategories(int pageIndex);
	 int getMaxPage();
	 Category selectCategoryById(int id);
	 void updateCategory(Category c);
	 List<Category> selectCategory();
	 void updateCategoryById(Category c);
	 void deleteCategoryById(int id);
}
