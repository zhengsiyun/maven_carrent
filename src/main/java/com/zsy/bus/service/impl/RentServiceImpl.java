package com.zsy.bus.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.zsy.bus.domain.Car;
import com.zsy.bus.domain.Rent;
import com.zsy.bus.mapper.CarMapper;
import com.zsy.bus.mapper.RentMapper;
import com.zsy.bus.service.RentService;
import com.zsy.bus.vo.RentVo;
import com.zsy.sys.constast.SysConstast;
import com.zsy.sys.domain.Role;
import com.zsy.sys.utils.DataGridView;
@Service
public class RentServiceImpl implements RentService{
	@Autowired
	private RentMapper rentMapper;
	@Autowired
	private CarMapper carMapper;
	@Override
	public void addRent(RentVo rentVo) {
		rentMapper.insertSelective(rentVo);
		//更改车辆的出租状态
		Car car = new Car();
		car.setCarnumber(rentVo.getCarnumber());
		car.setIsrenting(SysConstast.RENT_CAR_TRUE);
		carMapper.updateByPrimaryKeySelective(car);
	}
	@Override
	public DataGridView queryAllRent(RentVo rentVo) {
		Page<Object> page = PageHelper.startPage(rentVo.getPage(), rentVo.getLimit());
		List<Rent> data = rentMapper.queryAllRent(rentVo);
		return new DataGridView(page.getTotal(), data);
	}
	@Override
	public void updateRent(RentVo rentVo) {
		rentMapper.updateByPrimaryKeySelective(rentVo);
		
	}
	@Override
	public void deleteRent(String rentid) {
		//更改汽车的状态
		Rent rent = rentMapper.selectByPrimaryKey(rentid);
		Car car = new Car();
		car.setCarnumber(rent.getCarnumber());
		car.setIsrenting(SysConstast.RENT_CAR_FALSE);
		carMapper.updateByPrimaryKeySelective(car);
		//删除出租单
		rentMapper.deleteByPrimaryKey(rentid);
		
		
	}
	@Override
	public Rent queryRentByRentId(String rentid) {
		return rentMapper.selectByPrimaryKey(rentid);
	}

}
