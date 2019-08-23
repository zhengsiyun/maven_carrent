package com.zsy.bus.controller;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.zsy.bus.domain.Car;
import com.zsy.bus.service.CarService;
import com.zsy.bus.vo.CarVo;
import com.zsy.sys.constast.SysConstast;
import com.zsy.sys.utils.AppFileUtils;
import com.zsy.sys.utils.DataGridView;
import com.zsy.sys.utils.ResultObj;

@RestController
@RequestMapping("car")
public class CarController {
	@Autowired
	private CarService carService;

	/**
	 * 加载汽车列表返回DataGridView
	 */
	@RequestMapping("loadAllCar")
	public DataGridView loadAllCar(CarVo carVo) {
		return carService.queryAllCar(carVo);
	}

	// 添加汽车
	@RequestMapping("addCar")
	public ResultObj addCar(CarVo carVo) {
		try {
			carVo.setCreatetime(new Date());
			//如果不是默认图片就去掉图片的_temp的后缀
			if (!carVo.getCarimg().equals(SysConstast.DEFAULT_CAR_IMG)) {
				String filePath = AppFileUtils.updateFileName(carVo.getCarimg(), SysConstast.FILE_UPLOAD_TEMP);
				carVo.setCarimg(filePath);
			}
			carService.addCar(carVo);
			return ResultObj.ADD_SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
			return ResultObj.ADD_ERROR;
		}
	}

	// 修改汽车
	@RequestMapping("updateCar")
	public ResultObj updateCar(CarVo carVo) {
		try {
			String carimg = carVo.getCarimg();
			if (carimg.endsWith(SysConstast.FILE_UPLOAD_TEMP)) {
				String filePath = AppFileUtils.updateFileName(carVo.getCarimg(), SysConstast.FILE_UPLOAD_TEMP);
				carVo.setCarimg(filePath);
				//把原来的删除
				Car car = carService.queryCarByCarNumber(carVo.getCarnumber());
				AppFileUtils.removeFileByPath(car.getCarimg());
			}
			carService.updateCar(carVo);
			return ResultObj.UPDATE_SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
			return ResultObj.UPDATE_ERROR;
		}
	}

	// 刪除汽车
	@RequestMapping("deleteCar")
	public ResultObj deleteCar(CarVo carVo) {
		try {
			carService.deleteCar(carVo.getCarnumber());
			return ResultObj.DELETE_SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
			return ResultObj.DELETE_ERROR;
		}
	}

	// 批量刪除汽车
	@RequestMapping("deleteBatchCar")
	public ResultObj deleteBatchCar(CarVo carVo) {
		try {
			carService.deleteBatchCar(carVo.getIds());
			return ResultObj.DELETE_SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
			return ResultObj.DELETE_ERROR;
		}
	}
	
}
