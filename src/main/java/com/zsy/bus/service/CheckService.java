package com.zsy.bus.service;

import java.util.Map;

import com.zsy.bus.vo.CheckVo;
import com.zsy.sys.utils.DataGridView;

public interface CheckService {
	/**
	 * 根据出租单号加载检查单的数据
	 * @param rentid
	 * @return
	 */
	Map<String, Object> initCheckFormData(String rentid);

	void addRent(CheckVo checkVo);
	
	DataGridView queryAllCheck(CheckVo checkVo);

	void updateCheck(CheckVo checkVo);
}
