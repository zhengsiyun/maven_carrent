package com.zsy.sys.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.zsy.sys.service.RoleService;
import com.zsy.sys.utils.DataGridView;
import com.zsy.sys.utils.ResultObj;
import com.zsy.sys.vo.RoleVo;

@RestController
@RequestMapping("role")
public class RoleController {
	@Autowired
	private RoleService roleService;

	/**
	 * 加载角色列表返回DataGridView
	 */
	@RequestMapping("loadAllRole")
	public DataGridView loadAllRole(RoleVo roleVo) {
		return roleService.queryAllRole(roleVo);
	}

	// 添加角色
	@RequestMapping("addRole")
	public ResultObj addRole(RoleVo roleVo) {
		try {
			roleService.addRole(roleVo);
			return ResultObj.ADD_SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
			return ResultObj.ADD_ERROR;
		}
	}

	// 修改角色
	@RequestMapping("updateRole")
	public ResultObj updateRole(RoleVo roleVo) {
		try {
			roleService.updateRole(roleVo);
			return ResultObj.UPDATE_SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
			return ResultObj.UPDATE_ERROR;
		}
	}

	// 刪除角色
	@RequestMapping("deleteRole")
	public ResultObj deleteRole(RoleVo roleVo) {
		try {
			roleService.deleteRole(roleVo.getRoleid());
			return ResultObj.DELETE_SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
			return ResultObj.DELETE_ERROR;
		}
	}

	// 批量刪除角色
	@RequestMapping("deleteBatchRole")
	public ResultObj deleteBatchRole(RoleVo roleVo) {
		try {
			roleService.deleteBatchRole(roleVo.getIds());
			return ResultObj.DELETE_SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
			return ResultObj.DELETE_ERROR;
		}
	}
	
	//加载角色管理分配菜单的json
	@RequestMapping("initRoleMenuTreeJson")
	public DataGridView initRoleMenuTreeJson(Integer roleid) {
		return roleService.initRoleMenuTreeJson(roleid);
	}
	
	//保存分配的sys_role_menu
	@RequestMapping("saveRoleMenu")
	public ResultObj saveRoleMenu(RoleVo roleVo) {
		try {
			roleService.saveRoleMenu(roleVo);
			return ResultObj.DISPATCH_SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
			return ResultObj.DISPATCH_ERROR;
		}
	}
}
