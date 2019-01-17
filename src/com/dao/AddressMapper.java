package com.dao;

import com.entity.Address;

public interface AddressMapper {
    int deleteByPrimaryKey(Short id);

    int insert(Address record);

    int insertSelective(Address record);

    Address selectByPrimaryKey(Short id);

    int updateByPrimaryKeySelective(Address record);

    int updateByPrimaryKey(Address record);
}