package com.zsy.sys.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.zsy.sys.service.UserService;
import com.zsy.sys.utils.DataGridView;
import com.zsy.sys.utils.ResultObj;
import com.zsy.sys.vo.UserVo;

@RestController
@RequestMapping("user")
public class UserController {
	@Autowired
	private UserService userService;

	/**
	 * 加载用户列表返回DataGridView
	 */
	@RequestMapping("loadAllUser")
	public DataGridView loadAllUser(UserVo userVo) {
		return userService.queryAllUser(userVo);
	}

	// 添加用户
	@RequestMapping("addUser")
	public ResultObj addUser(UserVo userVo) {
		try {
			userService.addUser(userVo);
			return ResultObj.ADD_SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
			return ResultObj.ADD_ERROR;
		}
	}

	// 修改用户
	@RequestMapping("updateUser")
	public ResultObj updateUser(UserVo userVo) {
		try {
			userService.updateUser(userVo);
			return ResultObj.UPDATE_SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
			return ResultObj.UPDATE_ERROR;
		}
	}

	// 刪除用户
	@RequestMapping("deleteUser")
	public ResultObj deleteUser(UserVo userVo) {
		try {
			userService.deleteUser(userVo.getUserid());
			return ResultObj.DELETE_SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
			return ResultObj.DELETE_ERROR;
		}
	}

	// 批量刪除用户
	@RequestMapping("deleteBatchUser")
	public ResultObj deleteBatchUser(UserVo userVo) {
		try {
			userService.deleteBatchUser(userVo.getIds());
			return ResultObj.DELETE_SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
			return ResultObj.DELETE_ERROR;
		}
	}

	// 重置密码
	@RequestMapping("resetUserPwd")
	public ResultObj resetUserPwd(UserVo userVo) {
		try {
			userService.resetUserPwd(userVo.getUserid());
			return ResultObj.RESET_SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
			return ResultObj.RESET_ERROR;
		}
	}

	// 加载角色菜单的初始化
	@RequestMapping("initUserRole")
	public DataGridView initUserRole(UserVo userVo) {
		return userService.initRoleUser(userVo);
	}

	// 重置密码
	@RequestMapping("saveUserRole")
	public ResultObj saveUserRole(UserVo userVo) {
		try {
			userService.saveUserRole(userVo);
			return ResultObj.DISPATCH_SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
			return ResultObj.DISPATCH_ERROR;
		}
	}

}
