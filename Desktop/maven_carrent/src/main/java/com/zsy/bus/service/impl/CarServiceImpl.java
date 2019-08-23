package com.zsy.bus.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.zsy.bus.domain.Car;
import com.zsy.bus.mapper.CarMapper;
import com.zsy.bus.service.CarService;
import com.zsy.bus.vo.CarVo;
import com.zsy.sys.constast.SysConstast;
import com.zsy.sys.utils.AppFileUtils;
import com.zsy.sys.utils.DataGridView;
@Service
public class CarServiceImpl implements CarService{
	@Autowired
	private CarMapper carMapper;
	@Override
	public DataGridView queryAllCar(CarVo carVo) {
		Page<Object> page = PageHelper.startPage(carVo.getPage(), carVo.getLimit());
		List<Car> list = carMapper.queryAllCar(carVo);
		return new DataGridView(page.getTotal(), list);
		
	}
	@Override
	public void addCar(CarVo carVo) {
		
	
		carMapper.insertSelective(carVo);
	}
	
	@Override
	public void updateCar(CarVo carVo) {
		carMapper.updateByPrimaryKeySelective(carVo);
		
	}
	
	@Override
	public void deleteCar(String carnumber) {
		//先删除图片
		Car car = carMapper.selectByPrimaryKey(carnumber);
		//如果不是默认图片就删除
		if (!car.getCarimg().equals(SysConstast.DEFAULT_CAR_IMG)) {
			AppFileUtils.deleteFileUsePath(car.getCarimg());
		}
		//根据id删除汽车表里的数据
		carMapper.deleteByPrimaryKey(carnumber);
		
		
	}
	@Override
	public void deleteBatchCar(String[] ids) {
		for (String carid : ids) {
			deleteCar(carid);
		}
		
	}
	@Override
	public Car queryCarByCarNumber(String carnumber) {
		
		return carMapper.selectByPrimaryKey(carnumber);
	}
}
