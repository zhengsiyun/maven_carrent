package com.zsy.sys.mapper;

import java.util.List;

import com.zsy.sys.domain.New;

public interface NewMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(New record);

    int insertSelective(New record);

    New selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(New record);

    int updateByPrimaryKey(New record);
    
    //查询全部新闻
    List<New> queryAllNew(New news);
}