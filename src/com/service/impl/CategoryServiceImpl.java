package com.service.impl;

import java.util.List;

import org.junit.Test;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.dao.CategoryMapper;
import com.entity.Category;
import com.entity.CategoryNew;
import com.entity.SonCategory;
import com.entity.TwoCategory;
import com.service.CategoryService;

public class CategoryServiceImpl implements CategoryService {
	private SqlSessionTemplate sqlSession;
	
	public SqlSessionTemplate getSqlSession() {
		return sqlSession;
	}

	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public List<TwoCategory> selecTwoCategories() {
		CategoryMapper mapper = sqlSession.getMapper(CategoryMapper.class);
		List<TwoCategory> selecTwoCategory = mapper.selecTwoCategory();
		return selecTwoCategory;
	}
	@Test
	public void test(){
		ApplicationContext ac=new ClassPathXmlApplicationContext("applicationContext.xml");
		sqlSession =(SqlSessionTemplate) ac.getBean("sqlSession");
		CategoryMapper mapper = sqlSession.getMapper(CategoryMapper.class);
		List<SonCategory> selecTwoCategory = mapper.selectCategoryByParentId(12);
		for(SonCategory s:selecTwoCategory){
			System.out.println(s);
		}
	}

	

	@Override
	public List<String> selectCategory(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<SonCategory> selectCategoryByid(int id) {
		CategoryMapper mapper = sqlSession.getMapper(CategoryMapper.class);
		List<SonCategory> selectCategoryByParentId = mapper.selectCategoryByParentId(id);
		return selectCategoryByParentId;
	}

	@Override
	public List<CategoryNew> selectCategories() {
		CategoryMapper mapper = sqlSession.getMapper(CategoryMapper.class);
		List<CategoryNew> selectCategoryNews = mapper.selectCategoryNews();
		return selectCategoryNews;
	}

	@Override
	public void insertCategory(Category c) {
		CategoryMapper mapper = sqlSession.getMapper(CategoryMapper.class);
		mapper.insert(c);
	}

	@Override
	public List<Category> selectCategories(int pageIndex) {
		CategoryMapper mapper = sqlSession.getMapper(CategoryMapper.class);
		List<Category> selectCategories = mapper.selectCategories(pageIndex);
		return selectCategories;
	}

	@Override
	public int getMaxPage() {
		CategoryMapper mapper = sqlSession.getMapper(CategoryMapper.class);
		int maxPage = mapper.getMaxPage();
		return maxPage;
	}

	@Override
	public void updateCategory(Category c) {
		CategoryMapper mapper = sqlSession.getMapper(CategoryMapper.class);
		mapper.updateByPrimaryKey(c);
		
	}

	@Override
	public Category selectCategoryById(int id) {
		CategoryMapper mapper = sqlSession.getMapper(CategoryMapper.class);
		Category selectByPrimaryKey = mapper.selectByPrimaryKey(id);
		return selectByPrimaryKey;
	}

	@Override
	public List<Category> selectCategory() {
		CategoryMapper mapper = sqlSession.getMapper(CategoryMapper.class);
		List<Category> selectFatherCategories = mapper.selectFatherCategories();
		return selectFatherCategories;
	}

	@Override
	public void  updateCategoryById(Category c) {
		CategoryMapper mapper = sqlSession.getMapper(CategoryMapper.class);
        mapper.updateByPrimaryKey(c);

	}

	@Override
	public void deleteCategoryById(int id) {
		CategoryMapper mapper = sqlSession.getMapper(CategoryMapper.class);
		mapper.deleteByPrimaryKey(id);
		
	}

	
}
