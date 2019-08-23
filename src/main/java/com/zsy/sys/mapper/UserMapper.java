package com.zsy.sys.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.zsy.sys.domain.User;

public interface UserMapper {
    int deleteByPrimaryKey(Integer userid);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer userid);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
    //登录
    User login(User user);
    
    //查询所有用户
    List<User> queryAllUser(User user);
    //添加sys_role_user
	void insertUserRole(@Param("uid")Integer uid, @Param("rid")Integer rid);
}