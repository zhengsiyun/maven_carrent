package com.zsy.sys.service;

import java.util.List;

import com.zsy.sys.domain.User;
import com.zsy.sys.utils.DataGridView;
import com.zsy.sys.vo.UserVo;

public interface UserService{
	//用户登陆
	User login(UserVo userVo);
	

	/**
	 * 查询所有用户
	 * @param userVo
	 * @return
	 */
	DataGridView queryAllUser(UserVo userVo);
	/**
	 * 添加用户
	 * @param userVo
	 */
	void addUser(UserVo userVo);
	/**
	 * 修改用户
	 * @param userVo
	 */
	void updateUser(UserVo userVo);
	/**
	 * 根据id删除用户
	 * @param userVo
	 */
	void deleteUser(Integer userid);
	/**
	 * 批量删除用户
	 * @param ids
	 */
	void deleteBatchUser(Integer[] ids);
	/**
	 * 重置密码
	 * @param userid
	 */
	void resetUserPwd(Integer userid);


	DataGridView initRoleUser(UserVo userVo);


	void saveUserRole(UserVo userVo);
}
