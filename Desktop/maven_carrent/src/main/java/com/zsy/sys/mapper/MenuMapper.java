package com.zsy.sys.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.zsy.sys.domain.Menu;
import com.zsy.sys.utils.ResultObj;

public interface MenuMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Menu record);

    int insertSelective(Menu record);

    Menu selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Menu record);

    int updateByPrimaryKey(Menu record);
    
    //查询所有菜单
    List<Menu> queryAllMenu(Menu menu);
    //根据id查询是否有子菜单
	Integer queryMenuByPid(Integer id);
	//根据菜单id删除sys_role_menu里的数据
	void deleteRoleMenuByMid(Integer mid);
	//根据角色id查询角色下的所有菜单
	List<Menu> queryMenuByRoleId(@Param("available")Integer available, @Param("rid")Integer rid);
	//根据用户id查询所有菜单
	List<Menu> queryMenuByUserId(@Param("available")Integer available, @Param("uid")Integer userId);
	
	
}