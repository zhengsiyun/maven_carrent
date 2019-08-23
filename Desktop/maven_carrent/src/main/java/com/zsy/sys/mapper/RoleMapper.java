package com.zsy.sys.mapper;

import java.util.List;
import java.util.concurrent.BlockingDeque;

import org.apache.ibatis.annotations.Param;

import com.zsy.sys.domain.Menu;
import com.zsy.sys.domain.Role;

public interface RoleMapper {
    int deleteByPrimaryKey(Integer roleid);

    int insert(Role record);

    int insertSelective(Role record);

    Role selectByPrimaryKey(Integer roleid);

    int updateByPrimaryKeySelective(Role record);

    int updateByPrimaryKey(Role record);
    //查询所有角色
    List<Role> 	queryAllRole(Role role);
    //根据角色id删除sys_role_menu里的数据
    void deleteRoleMenuByRid(Integer roleid);
    //根据角色id删除sys_role_user里的数据
    void deleteRoleUserByRid(Integer roleid);
    
	//保存syys_role_menu表的数据
	void insertRoleMenu(@Param("rid")Integer rid, @Param("mid")Integer mid);
	//根据用户id删除sys_role_user
	void deleteRoleUserByUid(Integer userid);
	//根据用户id查询sys_role_user
	List<Role> queryRoleByUserid(@Param("uid")Integer userid,@Param("available") Integer available);
}