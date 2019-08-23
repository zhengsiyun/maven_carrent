package com.zsy.bus.service.impl;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.zsy.bus.domain.Car;
import com.zsy.bus.domain.Check;
import com.zsy.bus.domain.Customer;
import com.zsy.bus.domain.Rent;
import com.zsy.bus.mapper.CarMapper;
import com.zsy.bus.mapper.CheckMapper;
import com.zsy.bus.mapper.CustomerMapper;
import com.zsy.bus.mapper.RentMapper;
import com.zsy.bus.service.CheckService;
import com.zsy.bus.vo.CheckVo;
import com.zsy.sys.constast.SysConstast;
import com.zsy.sys.domain.User;
import com.zsy.sys.utils.DataGridView;
import com.zsy.sys.utils.RandomUtils;
import com.zsy.sys.utils.WebUtils;
@Service
public class CheckServiceImpl implements CheckService{
	@Autowired
	private CheckMapper checkMapper;
	@Autowired
	private CustomerMapper customerMapper;
	@Autowired
	private RentMapper rentMapper;
	@Autowired
	private CarMapper carMapper;
	@Override
	public Map<String, Object> initCheckFormData(String rentid) {
		//查询出租单
		Rent rent = rentMapper.selectByPrimaryKey(rentid);
		//查询客户
		Customer customer = customerMapper.selectByPrimaryKey(rent.getIdentity());
		//查询车辆
		Car car = carMapper.selectByPrimaryKey(rent.getCarnumber());
		//组装check
		Check check = new Check();
		check.setCheckid(RandomUtils.createRandomStringUseTime(SysConstast.CAR_ORDER_JC));
		check.setRentid(rentid);
		check.setCheckdate(new Date());
		User user = (User) WebUtils.getHttpSession().getAttribute("user");
		check.setOpername(user.getRealname());
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("rent", rent);
		map.put("customer", customer);
		map.put("car", car);
		map.put("check", check);
		return map;
	}
	@Override
	public void addRent(CheckVo checkVo) {
		checkMapper.insertSelective(checkVo);
		//更改出租单的状态
		Rent rent = rentMapper.selectByPrimaryKey(checkVo.getRentid());
		rent.setRentflag(SysConstast.RENT_BACK_TRUE);
		rentMapper.updateByPrimaryKeySelective(rent);
		//更改汽车的状态
		Car car = new Car();
		car.setCarnumber(rent.getCarnumber());
		car.setIsrenting(SysConstast.RENT_CAR_FALSE);
		carMapper.updateByPrimaryKeySelective(car);
		
	}
	@Override
	public DataGridView queryAllCheck(CheckVo checkVo) {
		Page<Object> page = PageHelper.startPage(checkVo.getPage(),checkVo.getLimit());
		List<Check> data = checkMapper.queryAllCheck(checkVo);
		return new DataGridView(page.getTotal(),data);
	}
	@Override
	public void updateCheck(CheckVo checkVo) {
		checkMapper.updateByPrimaryKeySelective(checkVo);
	}

}
