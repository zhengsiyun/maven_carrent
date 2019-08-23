package com.zsy.sys.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.zsy.sys.constast.SysConstast;
import com.zsy.sys.domain.Menu;
import com.zsy.sys.domain.User;
import com.zsy.sys.service.MenuService;
import com.zsy.sys.utils.DataGridView;
import com.zsy.sys.utils.ResultObj;
import com.zsy.sys.utils.TreeNode;
import com.zsy.sys.utils.TreeNodeBuilder;
import com.zsy.sys.utils.WebUtils;
import com.zsy.sys.vo.MenuVo;

@RestController
@RequestMapping("menu")
public class MenuController {
	@Autowired
	private MenuService menuService;
	
	@RequestMapping("loadIndexLeftMenuJson")
	public List<TreeNode> loadIndexLeftMenuJson(MenuVo menuVo){
		//得到当前用户对象
		User user = (User) WebUtils.getHttpSession().getAttribute("user");
		List<Menu> list = null;
		menuVo.setAvailable(SysConstast.AVAILABLE_TRUE);
		if (user.getType()==SysConstast.USER_TYPE_SUPER) {
			list = menuService.queryAllMenuForList(menuVo);
		}else {
			list= menuService.queryMenuByUserIdForList(menuVo, user.getUserid());
		}
		List<TreeNode> nodes = new ArrayList<>();
		for (Menu menu : list) {
			Integer id=menu.getId();
			Integer pid=menu.getPid();
			String title=menu.getTitle();
			String icon=menu.getIcon();
			String href=menu.getHref();
			Boolean spread=menu.getSpread()==SysConstast.SPREAD_TRUE?true:false;
			String target=menu.getTarget();
			nodes.add(new TreeNode(id, pid, title, icon, href, spread, target));
		}
		return TreeNodeBuilder.builder(nodes,1);
	}
	
	/**
	 * 加载左边的菜单树
	 */
	@RequestMapping("loadMenuManagerLeftTreeJson")
	public DataGridView loadMenuManagerLeftTreeJson(MenuVo menuVo) {
		//只查询可用的
		menuVo.setAvailable(SysConstast.AVAILABLE_TRUE);
		List<Menu> list = menuService.queryAllMenuForList(menuVo);
		List<TreeNode> nodes = new ArrayList<>();
		//把list集合里的数据放入nodes
		for (Menu menu : list) {
			Integer id=menu.getId();
			Integer pid=menu.getPid();
			String title=menu.getTitle();
			String icon=menu.getIcon();
			String href=menu.getHref();
			Boolean spread=menu.getSpread()==SysConstast.SPREAD_TRUE?true:false;
			String target=menu.getTarget();
			nodes.add(new TreeNode(id, pid, title, icon, href, spread, target));
		}
		return new DataGridView(nodes);
	}
	/**
	 * 加载菜单列表返回DataGridView
	 */
	@RequestMapping("loadAllMenu")
	public DataGridView loadAllMenu(MenuVo menuVo) {
		return menuService.queryAllMenu(menuVo);
	}
	
	//添加菜单
	@RequestMapping("addMenu")
	public ResultObj addMenu(MenuVo menuVo) {
		try {
			menuService.addMenu(menuVo);
			return ResultObj.ADD_SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
			return ResultObj.ADD_ERROR;
		}
	}
	
	//修改菜单
	@RequestMapping("updateMenu")
	public ResultObj updateMenu(MenuVo menuVo) {
		try {
			menuService.updateMenu(menuVo);
			return ResultObj.UPDATE_SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
			return ResultObj.UPDATE_ERROR;
		}
	}
	//查询当前页面是否有子菜单
	@RequestMapping("checkMenuHasChildren")
	public ResultObj checkMenuHasChildren(MenuVo menuVo) {
		//根据pid查询菜单数量
		Integer code = menuService.queryMenuByPid(menuVo.getId());
		if (code>0) {
			return ResultObj.STATUS_TRUE;
		}else {
			return ResultObj.STATUS_FALSE;
		}
	}
	
	
	//刪除菜单
	@RequestMapping("deleteMenu")
	public ResultObj deleteMenu(MenuVo menuVo) {
		try {
			menuService.deleteMenu(menuVo);
			return ResultObj.DELETE_SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
			return ResultObj.DELETE_ERROR;
		}
	}
	
	
}
