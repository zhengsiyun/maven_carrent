package com.zsy.bus.controller;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.zsy.bus.domain.Customer;
import com.zsy.bus.service.CustomerService;
import com.zsy.bus.service.RentService;
import com.zsy.bus.vo.CustomerVo;
import com.zsy.bus.vo.RentVo;
import com.zsy.sys.constast.SysConstast;
import com.zsy.sys.domain.User;
import com.zsy.sys.utils.DataGridView;
import com.zsy.sys.utils.RandomUtils;
import com.zsy.sys.utils.ResultObj;
import com.zsy.sys.utils.WebUtils;

@RestController
@RequestMapping("rent")
public class RentController {
	@Autowired
	private RentService rentService;
	@Autowired
	private CustomerService customerService;
	
	/**
	 * 查询顾客是否存在
	 * @param rentVo
	 * @return
	 */
	@RequestMapping("checkCustomerExist")
	public ResultObj checkCustomerExist(RentVo rentVo) {
		Customer customer = customerService.checkCustomerExist(rentVo.getIdentity());
		if (null!=customer) {
			return ResultObj.STATUS_TRUE;
		}else {
			return ResultObj.STATUS_FALSE;
		}
	}
	
	/**
	 * 初始化出租单的表单数据
	 */
	@RequestMapping("initRentForm")
	public RentVo initRentForm(RentVo rentVo) {
		//生成出租单号
		rentVo.setRentid(RandomUtils.createRandomStringUseTime(SysConstast.CAR_ORDER_CZ));
		//设置起租时间
		rentVo.setBegindate(new Date());
		
		User user = (User) WebUtils.getHttpSession().getAttribute("user");
		//设置操作员
		rentVo.setOpername(user.getRealname());
		return rentVo;
	}
	
	@RequestMapping("saveRent")
	public ResultObj saveRent(RentVo rentVo) {
			try {
				//设置创建时间
				rentVo.setCreatetime(new Date());
				//设置归还状态
				rentVo.setRentflag(SysConstast.RENT_BACK_FALSE);
				rentService.addRent(rentVo);
				return ResultObj.ADD_SUCCESS;
			} catch (Exception e) {
				e.printStackTrace();
				return ResultObj.ADD_ERROR;
			}
	}
	
	@RequestMapping("loadAllRent")
	public DataGridView loadAllRent(RentVo rentVo) {
			return rentService.queryAllRent(rentVo);
	}
	
	// 修改出租单
		@RequestMapping("updateRent")
		public ResultObj updateRent(RentVo rentVo) {
			try {
				rentService.updateRent(rentVo);
				return ResultObj.UPDATE_SUCCESS;
			} catch (Exception e) {
				e.printStackTrace();
				return ResultObj.UPDATE_ERROR;
			}
		}

		// 刪除出租单
		@RequestMapping("deleteRent")
		public ResultObj deleteRent(RentVo rentVo) {
			try {
				rentService.deleteRent(rentVo.getRentid());
				return ResultObj.DELETE_SUCCESS;
			} catch (Exception e) {
				e.printStackTrace();
				return ResultObj.DELETE_ERROR;
			}
		}

}
