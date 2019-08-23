package com.zsy.bus.mapper;

import java.util.List;

import com.zsy.bus.domain.Car;

public interface CarMapper {
    int deleteByPrimaryKey(String carnumber);

    int insert(Car record);

    int insertSelective(Car record);

    Car selectByPrimaryKey(String carnumber);

    int updateByPrimaryKeySelective(Car record);

    int updateByPrimaryKey(Car record);
    //查询所有汽车信息
    List<Car> queryAllCar(Car car);
}