package com.zsy.sys.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.zsy.sys.domain.Menu;
import com.zsy.sys.mapper.MenuMapper;
import com.zsy.sys.service.MenuService;
import com.zsy.sys.utils.DataGridView;
import com.zsy.sys.vo.MenuVo;

@Service
public class MenuServiceImpl implements MenuService{
	@Autowired
	private MenuMapper menuMapper;

	@Override
	public List<Menu> queryAllMenuForList(MenuVo menuVo) {
		return menuMapper.queryAllMenu(menuVo);
	}
	//后面权限完再改
	@Override
	public List<Menu> queryMenuByUserIdForList(MenuVo menuVo, Integer userId) {
		
		return menuMapper.queryMenuByUserId(menuVo.getAvailable(),userId);
	}
	@Override
	public DataGridView queryAllMenu(MenuVo menuVo) {
		Page<Object> page = PageHelper.startPage(menuVo.getPage(), menuVo.getLimit());
		List<Menu> menu = menuMapper.queryAllMenu(menuVo);
		return new DataGridView(page.getTotal(), menu);
	}
	@Override
	public void addMenu(MenuVo menuVo) {
		menuMapper.insertSelective(menuVo);
	}
	@Override
	public void updateMenu(MenuVo menuVo) {
		menuMapper.updateByPrimaryKey(menuVo);
		
	}
	@Override
	public Integer queryMenuByPid(Integer id) {
		
		return menuMapper.queryMenuByPid(id);
	}
	@Override
	public void deleteMenu(MenuVo menuVo) {
		//根据id删除菜单表里的数据
		menuMapper.deleteByPrimaryKey(menuVo.getId());
		//根据id删除sys_role_user表里的数据
		menuMapper.deleteRoleMenuByMid(menuVo.getId());
		
	}
}
