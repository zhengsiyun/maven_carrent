package com.zsy.bus.service;

import java.util.List;

import com.zsy.bus.domain.Customer;
import com.zsy.bus.vo.CustomerVo;
import com.zsy.bus.vo.RentVo;
import com.zsy.sys.utils.DataGridView;

public interface CustomerService {
	
	/**
	 * 查询所有顾客
	 * @param customerVo
	 * @return
	 */
	DataGridView queryAllCustomer(CustomerVo customerVo);
	/**
	 * 添加顾客
	 * @param customerVo
	 */
	void addCustomer(CustomerVo customerVo);
	/**
	 * 添加顾客
	 * @param customerVo
	 */
	void updateCustomer(CustomerVo customerVo);
	/**
	 * 根据id删除顾客
	 * @param customerVo
	 */
	void deleteCustomer(String customerid);
	/**
	 * 批量删除顾客
	 * @param ids
	 */
	void deleteBatchCustomer(String[] ids);
	/**
	 * 根据身份证号查询顾客是否存在
	 * @param identity
	 * @return
	 */
	Customer checkCustomerExist(String identity);
	/**
	 * 查询并导出所有顾客
	 * @param customerVo
	 * @return
	 */
	List<Customer> queryAllCustomerForList(CustomerVo customerVo);
	Customer queryCustomerByIdentity(String identity);

	
	
}
