package com.zsy.sys.service;

import java.util.List;

import com.zsy.sys.domain.Role;
import com.zsy.sys.utils.DataGridView;
import com.zsy.sys.vo.RoleVo;

public interface RoleService {
	/**
	 * 查询所有角色
	 */
	List<Role> queryAllRoleForList(RoleVo roleVo);
	
	/**
	 * 根据用户id查询可用角色
	 */
	public List<Role> queryRoleByUserIdForList(RoleVo roleVo,Integer userId);
	/**
	 * 查询所有角色
	 * @param roleVo
	 * @return
	 */
	DataGridView queryAllRole(RoleVo roleVo);
	/**
	 * 添加角色
	 * @param roleVo
	 */
	void addRole(RoleVo roleVo);
	/**
	 * 修改角色
	 * @param roleVo
	 */
	void updateRole(RoleVo roleVo);
	/**
	 * 根据id删除角色
	 * @param roleVo
	 */
	void deleteRole(Integer roleid);
	/**
	 * 批量删除角色
	 * @param ids
	 */
	void deleteBatchRole(Integer[] ids);
	/**
	 * 加载角色管理分配菜单的json
	 * @param roleid
	 * @return
	 */
	DataGridView initRoleMenuTreeJson(Integer roleid);

	void saveRoleMenu(RoleVo roleVo);
}
