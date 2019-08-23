package com.zsy.bus.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.zsy.bus.domain.Customer;
import com.zsy.bus.mapper.CustomerMapper;
import com.zsy.bus.service.CustomerService;
import com.zsy.bus.vo.CustomerVo;
import com.zsy.sys.utils.DataGridView;

@Service
public class CustomerServiceImpl implements CustomerService{
	@Autowired
	private CustomerMapper customerMapper;
	


	@Override
	public DataGridView queryAllCustomer(CustomerVo customerVo) {
		Page<Object> page = PageHelper.startPage(customerVo.getPage(), customerVo.getLimit());
		List<Customer> customers = customerMapper.queryAllCustomer(customerVo);
		return new DataGridView(page.getTotal(), customers);
	}
	@Override
	public void addCustomer(CustomerVo customerVo) {
		//customerVo.setCreatetime(new Date());
		customerMapper.insertSelective(customerVo);
	}
	
	@Override
	public void updateCustomer(CustomerVo customerVo) {
		customerMapper.updateByPrimaryKeySelective(customerVo);
		
	}
	
	@Override
	public void deleteCustomer(String customerid) {
		//根据id删除顾客表里的数据
		customerMapper.deleteByPrimaryKey(customerid);
		
		
	}
	@Override
	public void deleteBatchCustomer(String[] ids) {
		for (String customerid : ids) {
			deleteCustomer(customerid);
		}
		
	}
	@Override
	public Customer checkCustomerExist(String identity) {
		
		return customerMapper.selectByPrimaryKey(identity);
	}
	@Override
	public List<Customer> queryAllCustomerForList(CustomerVo customerVo) {
		
		return customerMapper.queryAllCustomer(customerVo);
	}
	@Override
	public Customer queryCustomerByIdentity(String identity) {
		return customerMapper.selectByPrimaryKey(identity);
	}
	
	
	
}
