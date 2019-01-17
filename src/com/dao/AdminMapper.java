package com.dao;

import org.apache.ibatis.annotations.Param;

import com.entity.Admin;

public interface AdminMapper {
    int deleteByPrimaryKey(Short id);

    int insert(Admin record);

    int insertSelective(Admin record);

    Admin selectByPrimaryKey(Short id);

    int updateByPrimaryKeySelective(Admin record);

    int updateByPrimaryKey(Admin record);
    
    Admin selectByin(@Param(value="name")String name,@Param(value="password")String password);
}