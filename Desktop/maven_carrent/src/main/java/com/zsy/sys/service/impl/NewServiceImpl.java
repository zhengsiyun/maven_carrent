package com.zsy.sys.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.zsy.sys.domain.New;
import com.zsy.sys.mapper.NewMapper;
import com.zsy.sys.service.NewService;
import com.zsy.sys.utils.DataGridView;
import com.zsy.sys.vo.NewVo;

@Service
public class NewServiceImpl implements NewService{
	@Autowired
	private NewMapper newMapper;
	


	@Override
	public DataGridView queryAllNew(NewVo newVo) {
		Page<Object> page = PageHelper.startPage(newVo.getPage(), newVo.getLimit());
		List<New> news = newMapper.queryAllNew(newVo);
		return new DataGridView(page.getTotal(), news);
	}
	@Override
	public void addNew(NewVo newVo) {
		newMapper.insertSelective(newVo);
	}
	
	@Override
	public void updateNew(NewVo newVo) {
		newMapper.updateByPrimaryKeySelective(newVo);
		
	}
	
	@Override
	public void deleteNew(Integer newid) {
		//根据id删除新闻表里的数据
		newMapper.deleteByPrimaryKey(newid);
		
		
	}
	@Override
	public void deleteBatchNew(Integer[] ids) {
		for (Integer newid : ids) {
			deleteNew(newid);
		}
		
	}
	@Override
	public New queryNewsById(Integer id) {
		
		return newMapper.selectByPrimaryKey(id);
	}
	
	
	
}
