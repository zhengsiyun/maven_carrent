package com.zsy.sys.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.DigestUtils;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.zsy.sys.constast.SysConstast;
import com.zsy.sys.domain.Role;
import com.zsy.sys.domain.User;
import com.zsy.sys.mapper.RoleMapper;
import com.zsy.sys.mapper.UserMapper;
import com.zsy.sys.service.UserService;
import com.zsy.sys.utils.DataGridView;
import com.zsy.sys.vo.UserVo;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private UserMapper userMapper;
	@Autowired
	private RoleMapper roleMapper;
	@Override
	public User login(UserVo userVo) {
		String pwd = DigestUtils.md5DigestAsHex(userVo.getPwd().getBytes());
		userVo.setPwd(pwd);
		return userMapper.login(userVo);
	}

	@Override
	public DataGridView queryAllUser(UserVo userVo) {
		Page<Object> page = PageHelper.startPage(userVo.getPage(), userVo.getLimit());
		List<User> data = userMapper.queryAllUser(userVo);
		return new DataGridView(page.getTotal(), data);
	}

	@Override
	public void addUser(UserVo userVo) {
		//设置密码
		userVo.setPwd(DigestUtils.md5DigestAsHex(SysConstast.USER_DEFAULT_PWD.getBytes()));
		//设置用户类型
		userVo.setType(SysConstast.USER_TYPE_NORMAL);
		userMapper.insertSelective(userVo);
		
	}

	@Override
	public void updateUser(UserVo userVo) {
		userMapper.updateByPrimaryKeySelective(userVo);
		
	}

	@Override
	public void deleteUser(Integer userid) {
		//删除用户
		userMapper.deleteByPrimaryKey(userid);
		//删除sys_role_user表里的数据
		roleMapper.deleteRoleUserByUid(userid);
		
	}

	@Override
	public void deleteBatchUser(Integer[] ids) {
		for (Integer uid : ids) {
			deleteUser(uid);
		}
		
	}

	@Override
	public void resetUserPwd(Integer userid) {
		User user = new User();
		user.setUserid(userid);
		//设置默认密码
		user.setPwd(DigestUtils.md5DigestAsHex(SysConstast.USER_DEFAULT_PWD.getBytes()));
		//更新
		userMapper.updateByPrimaryKeySelective(user);
		
	}

	@Override
	public DataGridView initRoleUser(UserVo userVo) {
		Role role = new Role();
		role.setAvailable(SysConstast.AVAILABLE_TRUE);
		//1.查询所有可用角色
		List<Role> allRole = roleMapper.queryAllRole(role);
		//2.根据用户id查询已知角色
		List<Role> queryRole = roleMapper.queryRoleByUserid(userVo.getUserid(),SysConstast.AVAILABLE_TRUE);
		List<Map<String, Object>> data = new ArrayList<Map<String,Object>>();
		for (Role r1 : allRole) {
			Boolean LAY_CHECKED = false;
			for(Role r2: queryRole) {
				if (r1.getRoleid()==r2.getRoleid()) {
					LAY_CHECKED= true;
				}
			}
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("roleid", r1.getRoleid());
			map.put("rolename", r1.getRolename());
			map.put("roledesc", r1.getRoledesc());
			map.put("LAY_CHECKED", LAY_CHECKED);
			data.add(map);
		}
		return new DataGridView(data);
	}

	@Override
	public void saveUserRole(UserVo userVo) {
		Integer userid = userVo.getUserid();
		Integer[] roleIds = userVo.getIds();
		
		if (roleIds!=null&&roleIds.length>0) {
			for (Integer rid : roleIds) {
				userMapper.insertUserRole(userid,rid);
			}
		}
		
	}
}
