package com.zsy.sys.service;

import com.zsy.sys.domain.New;
import com.zsy.sys.utils.DataGridView;
import com.zsy.sys.vo.NewVo;

public interface NewService {
	
	/**
	 * 查询所有新闻
	 * @param newVo
	 * @return
	 */
	DataGridView queryAllNew(NewVo newVo);
	/**
	 * 添加新闻
	 * @param newVo
	 */
	void addNew(NewVo newVo);
	/**
	 * 添加新闻
	 * @param newVo
	 */
	void updateNew(NewVo newVo);
	/**
	 * 根据id删除新闻
	 * @param newVo
	 */
	void deleteNew(Integer newid);
	/**
	 * 批量删除新闻
	 * @param ids
	 */
	void deleteBatchNew(Integer[] ids);
	New queryNewsById(Integer id);
	
}
