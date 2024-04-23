package com.csdj.service.impl;

import com.csdj.mapper.RoleMapper;
import com.csdj.pojo.Role;
import com.csdj.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RoleServiceImpl implements RoleService {
    @Autowired
    private RoleMapper roleMapper;
    @Override
    public Role getRole(String account, String passWord) {
        return roleMapper.getRole(account,passWord);
    }
    @Override
    public List<Role> pageRole() {
        return roleMapper.pageRole();
    }

    @Override
    public List<Role> getRolePhone(String phone) {
        return roleMapper.getRolePhone(phone);
    }

    @Override
    public int insertRole(Role role) {
        return roleMapper.insertRole(role);
    }

    @Override
    public int deleteRole(int id) {
        return roleMapper.deleteRole(id);
    }

    @Override
    public int updateRole(Role role) {
        return roleMapper.updateRole(role);
    }
}
