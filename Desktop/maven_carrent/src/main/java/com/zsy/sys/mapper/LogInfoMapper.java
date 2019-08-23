package com.zsy.sys.mapper;

import java.util.List;

import com.zsy.sys.domain.LogInfo;

public interface LogInfoMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(LogInfo record);

    int insertSelective(LogInfo record);

    LogInfo selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(LogInfo record);

    int updateByPrimaryKey(LogInfo record);
    
    //查询全部日志
    List<LogInfo> queryAllLogInfo(LogInfo logInfo);
}