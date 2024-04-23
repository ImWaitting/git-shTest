package com.csdj.mapper;

import com.csdj.pojo.Role;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface RoleMapper {
    Role getRole(@Param("account") String account,@Param("passWord") String passWord);

    List<Role> pageRole();

    List<Role> getRolePhone(@Param("phone") String phone);

    int insertRole(Role role);

    int deleteRole(@Param("id") int id);

    int updateRole(Role role);
}
