package com.zsy.bus.service;

import com.zsy.bus.domain.Car;
import com.zsy.bus.vo.CarVo;
import com.zsy.bus.vo.CarVo;
import com.zsy.sys.utils.DataGridView;

public interface CarService {
	//查询全部租车信息
	DataGridView queryAllCar(CarVo carVo);
	
	/**
	 * 添加汽车
	 * @param carVo
	 */
	void addCar(CarVo carVo);
	/**
	 * 添加汽车
	 * @param carVo
	 */
	void updateCar(CarVo carVo);
	/**
	 * 根据id删除汽车
	 * @param carVo
	 */
	void deleteCar(String carid);
	/**
	 * 批量删除汽车
	 * @param ids
	 */
	void deleteBatchCar(String[] ids);

	Car queryCarByCarNumber(String carnumber);
	
}
