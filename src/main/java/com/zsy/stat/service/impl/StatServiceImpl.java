package com.zsy.stat.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zsy.stat.domain.BaseEntity;
import com.zsy.stat.mapper.StatMapper;
import com.zsy.stat.service.StatService;
@Service
public class StatServiceImpl implements StatService{
	@Autowired
	private StatMapper statMapper;
	@Override
	public List<BaseEntity> loadCustomerAreaStatList() {
		
		return statMapper.queryCustomerAreaStat();
	}
	@Override
	public List<BaseEntity> loadOpernameYearGradeStatList(String year) {
		
		return this.statMapper.queryOpernameYearGradeStat(year);
	}
	@Override
	public List<Double> loadCompanyGradeStatList(String year) {
		
		return statMapper.queryCompanyYearGradeStat(year);
	}

}
