package com.zsy.sys.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.zsy.sys.domain.LogInfo;
import com.zsy.sys.mapper.LogInfoMapper;
import com.zsy.sys.mapper.MenuMapper;
import com.zsy.sys.service.LogInfoService;
import com.zsy.sys.utils.DataGridView;
import com.zsy.sys.vo.LogInfoVo;

@Service
public class LogInfoServiceImpl implements LogInfoService{
	@Autowired
	private LogInfoMapper logInfoMapper;
	


	@Override
	public DataGridView queryAllLogInfo(LogInfoVo logInfoVo) {
		Page<Object> page = PageHelper.startPage(logInfoVo.getPage(), logInfoVo.getLimit());
		List<LogInfo> logInfo = logInfoMapper.queryAllLogInfo(logInfoVo);
		return new DataGridView(page.getTotal(), logInfo);
	}
	@Override
	public void addLogInfo(LogInfoVo logInfoVo) {
		logInfoMapper.insertSelective(logInfoVo);
	}
	
	
	@Override
	public void deleteLogInfo(Integer logInfoid) {
		//根据id删除日志表里的数据
		logInfoMapper.deleteByPrimaryKey(logInfoid);
		
		
	}
	@Override
	public void deleteBatchLogInfo(Integer[] ids) {
		for (Integer logInfoid : ids) {
			deleteLogInfo(logInfoid);
		}
		
	}
	
	
}
