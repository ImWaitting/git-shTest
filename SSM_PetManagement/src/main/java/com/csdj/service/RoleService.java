package com.csdj.service;

import com.csdj.pojo.Role;

import java.util.List;

public interface RoleService {
    Role getRole(String account, String passWord);

    List<Role> pageRole();

    List<Role> getRolePhone(String phone);

    int insertRole(Role role);

    int deleteRole(int id);

    int updateRole(Role role);
}
