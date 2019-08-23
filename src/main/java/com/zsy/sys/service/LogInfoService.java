package com.zsy.sys.service;

import com.zsy.sys.utils.DataGridView;
import com.zsy.sys.vo.LogInfoVo;

public interface LogInfoService {
	
	/**
	 * 查询所有日志
	 * @param logInfoVo
	 * @return
	 */
	DataGridView queryAllLogInfo(LogInfoVo logInfoVo);
	/**
	 * 添加日志
	 * @param logInfoVo
	 */
	void addLogInfo(LogInfoVo logInfoVo);
	
	/**
	 * 根据id删除日志
	 * @param logInfoVo
	 */
	void deleteLogInfo(Integer logInfoid);
	/**
	 * 批量删除日志
	 * @param ids
	 */
	void deleteBatchLogInfo(Integer[] ids);
	
}
