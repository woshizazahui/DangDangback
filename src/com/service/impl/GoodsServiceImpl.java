package com.service.impl;

import java.util.List;

import org.junit.Test;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.dao.GoodsMapper;
import com.entity.Goods;
import com.service.GoodsService;

public class GoodsServiceImpl implements GoodsService {
	private SqlSessionTemplate sqlSession;
	
	public SqlSessionTemplate getSqlSession() {
		return sqlSession;
	}

	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public List<Goods> selectGoods(int pageIndex) {
		GoodsMapper goodsMapper=sqlSession.getMapper(GoodsMapper.class);
		List<Goods> lists = goodsMapper.selectGoodsByPageIndex(pageIndex);
		return lists;
	}
	
	@Test
	public void test(){
		ApplicationContext ac=new ClassPathXmlApplicationContext("applicationContext.xml");
		sqlSession=(SqlSessionTemplate)ac.getBean("sqlSession");
		GoodsMapper goodsMapper=sqlSession.getMapper(GoodsMapper.class);
		Goods selectByPrimaryKey = goodsMapper.selectByPrimaryKey(4);
		System.out.println(selectByPrimaryKey);
	}

	@Override
	public boolean  updateStatus(int id, String status) {
		GoodsMapper mapper = sqlSession.getMapper(GoodsMapper.class);
		try{
			mapper.updateStatus(id, status);
			return true;
		}catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		
	}

	@Override
	public Goods selectGoodsById(int d) {

		GoodsMapper mapper = sqlSession.getMapper(GoodsMapper.class);
		Goods good=mapper.selectByPrimaryKey(d);
		return good;
	}

	@Override
	public int getCount() {
		GoodsMapper mapper = sqlSession.getMapper(GoodsMapper.class);
		int count = mapper.getCount();
		return count;
	}

	@Override
	public void updateGoodsById(Goods good) {
		if(good!=null){
		GoodsMapper mapper=sqlSession.getMapper(GoodsMapper.class);
		mapper.updateByPrimaryKey(good);
		}
	
	}

	@Override
	public void insertGoods(Goods g) {
		GoodsMapper mapper = sqlSession.getMapper(GoodsMapper.class);
		if(g!=null){
			mapper.insertGoods(g);
		}
		
	}

}
