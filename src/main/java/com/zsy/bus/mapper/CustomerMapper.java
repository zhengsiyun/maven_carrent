package com.zsy.bus.mapper;

import java.util.List;

import com.zsy.bus.domain.Customer;

public interface CustomerMapper {
    int deleteByPrimaryKey(String customerid);

    int insert(Customer record);

    int insertSelective(Customer record);

    Customer selectByPrimaryKey(String identity);

    int updateByPrimaryKeySelective(Customer record);

    int updateByPrimaryKey(Customer record);
    
    //查询全部顾客信息
    List<Customer> queryAllCustomer(Customer customer);	
}