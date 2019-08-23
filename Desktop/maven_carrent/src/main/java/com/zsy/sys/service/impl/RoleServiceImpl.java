package com.zsy.sys.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.zsy.sys.constast.SysConstast;
import com.zsy.sys.domain.Menu;
import com.zsy.sys.domain.Role;
import com.zsy.sys.mapper.MenuMapper;
import com.zsy.sys.mapper.RoleMapper;
import com.zsy.sys.service.RoleService;
import com.zsy.sys.utils.DataGridView;
import com.zsy.sys.utils.TreeNode;
import com.zsy.sys.vo.RoleVo;

@Service
public class RoleServiceImpl implements RoleService{
	@Autowired
	private RoleMapper roleMapper;
	@Autowired
	private MenuMapper menuMapper;

	@Override
	public List<Role> queryAllRoleForList(RoleVo roleVo) {
		return roleMapper.queryAllRole(roleVo);
	}
	//后面权限完再改
	@Override
	public List<Role> queryRoleByUserIdForList(RoleVo roleVo, Integer userId) {
		
		return roleMapper.queryAllRole(roleVo);
	}
	@Override
	public DataGridView queryAllRole(RoleVo roleVo) {
		Page<Object> page = PageHelper.startPage(roleVo.getPage(), roleVo.getLimit());
		List<Role> role = roleMapper.queryAllRole(roleVo);
		return new DataGridView(page.getTotal(), role);
	}
	@Override
	public void addRole(RoleVo roleVo) {
		roleMapper.insertSelective(roleVo);
	}
	@Override
	public void updateRole(RoleVo roleVo) {
		roleMapper.updateByPrimaryKey(roleVo);
		
	}
	
	@Override
	public void deleteRole(Integer roleid) {
		//根据id删除角色表里的数据
		roleMapper.deleteByPrimaryKey(roleid);
		//根据id删除sys_role_menu表里的数据
		roleMapper.deleteRoleMenuByRid(roleid);
		//根据id删除sys_role_user表里的数据
		roleMapper.deleteRoleUserByRid(roleid);
		
	}
	@Override
	public void deleteBatchRole(Integer[] ids) {
		for (Integer roleid : ids) {
			deleteRole(roleid);
		}
		
	}
	
	@Override
	public DataGridView initRoleMenuTreeJson(Integer roleid) {
		Menu menu = new Menu();
		menu.setAvailable(SysConstast.AVAILABLE_TRUE);
		List<Menu> addMenu = menuMapper.queryAllMenu(menu);
		List<Menu> roleMenu = menuMapper.queryMenuByRoleId(SysConstast.AVAILABLE_TRUE,roleid);
		List<TreeNode> nodes = new ArrayList<>();
		for (Menu menu2 : addMenu) {
			String checkArr = SysConstast.CODE_ZERO+"";
			for (Menu menu3 : roleMenu) {
				if (menu2.getId()==menu3.getId()) {
					checkArr = SysConstast.CODE_ONE+"";
					break;
				}
			}
			Integer id = menu2.getId();
			Integer pid = menu2.getPid();
			String title = menu2.getTitle();
			Boolean spread = menu2.getSpread() == SysConstast.SPREAD_TRUE?true:false;
			nodes.add(new TreeNode(id, pid, title, spread, checkArr));
		}
		return new DataGridView(nodes);
	}
	@Override
	public void saveRoleMenu(RoleVo roleVo) {
		Integer rid = roleVo.getRoleid();
		Integer[] ids = roleVo.getIds();
		//根据rid删除sys_role_menu里面的所有数据
		roleMapper.deleteRoleMenuByRid(rid);
		for (Integer mid : ids) {
			roleMapper.insertRoleMenu(rid,mid);
		}
		
	}
}
