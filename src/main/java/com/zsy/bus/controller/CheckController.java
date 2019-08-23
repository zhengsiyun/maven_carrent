package com.zsy.bus.controller;

import java.util.Date;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.zsy.bus.domain.Check;
import com.zsy.bus.domain.Rent;
import com.zsy.bus.service.CheckService;
import com.zsy.bus.service.RentService;
import com.zsy.bus.vo.CheckVo;
import com.zsy.bus.vo.RentVo;
import com.zsy.sys.constast.SysConstast;
import com.zsy.sys.utils.DataGridView;
import com.zsy.sys.utils.ResultObj;

@RestController
@RequestMapping("check")
public class CheckController {
	@Autowired
	private CheckService checkService;
	@Autowired
	private RentService rentService;
	/**
	 * 根据出租单号查询出租单信息
	 */
	@RequestMapping("checkRentExist")
	public Rent checkRentExist(String rentid) {
		Rent rent = rentService.queryRentByRentId(rentid);
		return rent;
	}
	
	/**
	 * 根据出租单号加载检查单的数据
	 */
	@RequestMapping("initCheckFormData")
	public Map<String, Object> initCheckFormData(String rentid){
		return checkService.initCheckFormData(rentid);
	}
	
	@RequestMapping("saveCheck")
	public ResultObj saveCheck(CheckVo checkVo) {
			try {
				//设置创建时间
				checkVo.setCreatetime(new Date());
				//设置归还状态
				checkService.addRent(checkVo);
				return ResultObj.ADD_SUCCESS;
			} catch (Exception e) {
				e.printStackTrace();
				return ResultObj.ADD_ERROR;
			}
	}
	//全查询
	@RequestMapping("loadAllCheck")
	public DataGridView loadAllCheck(CheckVo checkVo) {
		return checkService.queryAllCheck(checkVo);
	}
	//修改检查单
	@RequestMapping("updateCheck")
	public ResultObj updateCheck(CheckVo checkVo) {
		try {
			checkService.updateCheck(checkVo);
			return ResultObj.UPDATE_SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
			return ResultObj.UPDATE_ERROR;
		}
	}
}
