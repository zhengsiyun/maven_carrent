package com.zsy.stat.service;

import java.util.List;

import com.fasterxml.jackson.databind.deser.Deserializers.Base;
import com.zsy.stat.domain.BaseEntity;

public interface StatService {
	/**
	 * 查询客户地区的数据
	 * @return
	 */
	List<BaseEntity> loadCustomerAreaStatList();
	/**
	 * 查询业务员年度销售额
	 * @param year
	 * @return
	 */
	List<BaseEntity> loadOpernameYearGradeStatList(String year);
	/**
	 * 查询公司年度信息
	 * @param year
	 * @return
	 */
	List<Double> loadCompanyGradeStatList(String year);
}
