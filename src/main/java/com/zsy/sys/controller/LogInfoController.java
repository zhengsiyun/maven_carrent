package com.zsy.sys.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.zsy.sys.service.LogInfoService;
import com.zsy.sys.utils.DataGridView;
import com.zsy.sys.utils.ResultObj;
import com.zsy.sys.vo.LogInfoVo;

@RestController
@RequestMapping("logInfo")
public class LogInfoController {
	@Autowired
	private LogInfoService logInfoService;

	/**
	 * 加载日志列表返回DataGridView
	 */
	@RequestMapping("loadAllLogInfo")
	public DataGridView loadAllLogInfo(LogInfoVo logInfoVo) {
		return logInfoService.queryAllLogInfo(logInfoVo);
	}

	// 刪除日志
	@RequestMapping("deleteLogInfo")
	public ResultObj deleteLogInfo(LogInfoVo logInfoVo) {
		try {
			logInfoService.deleteLogInfo(logInfoVo.getId());
			return ResultObj.DELETE_SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
			return ResultObj.DELETE_ERROR;
		}
	}

	// 批量刪除日志
	@RequestMapping("deleteBatchLogInfo")
	public ResultObj deleteBatchLogInfo(LogInfoVo logInfoVo) {
		try {
			logInfoService.deleteBatchLogInfo(logInfoVo.getIds());
			return ResultObj.DELETE_SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
			return ResultObj.DELETE_ERROR;
		}
	}
	
	
}
