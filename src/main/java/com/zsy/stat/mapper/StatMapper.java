package com.zsy.stat.mapper;

import java.util.List;

import com.zsy.stat.domain.BaseEntity;

public interface StatMapper {
	/**
	 * 查询客户地区的数据
	 */
	 List<BaseEntity> queryCustomerAreaStat();
	 /**
	  * 查询业务员的年度业绩
	  * @param year
	  * @return
	  */
	List<BaseEntity> queryOpernameYearGradeStat(String year);
	/**
	 * 查询业务员年度销售额
	 * @param year
	 * @return
	 */
	List<Double> queryCompanyYearGradeStat(String year);
}
