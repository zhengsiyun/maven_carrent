package com.zsy.bus.mapper;

import java.util.List;

import com.zsy.bus.domain.Rent;
import com.zsy.sys.domain.Role;

public interface RentMapper {
    int deleteByPrimaryKey(String rentid);

    int insert(Rent record);

    int insertSelective(Rent record);

    Rent selectByPrimaryKey(String rentid);

    int updateByPrimaryKeySelective(Rent record);

    int updateByPrimaryKey(Rent record);
    //查询所有出租单
    List<Rent> queryAllRent(Rent rent);
}