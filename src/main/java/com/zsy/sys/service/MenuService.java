package com.zsy.sys.service;

import java.util.List;

import com.zsy.sys.domain.Menu;
import com.zsy.sys.utils.DataGridView;
import com.zsy.sys.vo.MenuVo;

public interface MenuService {
	/**
	 * 查询所有菜单
	 */
	List<Menu> queryAllMenuForList(MenuVo menuVo);
	
	/**
	 * 根据用户id查询可用菜单
	 */
	public List<Menu> queryMenuByUserIdForList(MenuVo menuVo,Integer userId);

	DataGridView queryAllMenu(MenuVo menuVo);

	void addMenu(MenuVo menuVo);

	void updateMenu(MenuVo menuVo);

	Integer queryMenuByPid(Integer id);

	void deleteMenu(MenuVo menuVo);
	

}
