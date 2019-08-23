package com.zsy.bus.service;

import com.zsy.bus.domain.Rent;
import com.zsy.bus.vo.RentVo;
import com.zsy.sys.utils.DataGridView;

public interface RentService {

	void addRent(RentVo rentVo);

	DataGridView queryAllRent(RentVo rentVo);

	void updateRent(RentVo rentVo);

	void deleteRent(String rentid);
	
	Rent queryRentByRentId(String rentid);
}
