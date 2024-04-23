package com.csdj.service.impl;

import com.csdj.mapper.LoginLogsMapper;
import com.csdj.pojo.LoginLogs;
import com.csdj.service.LoginLogsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LoginLogsImpl implements LoginLogsService {
    @Autowired
    private LoginLogsMapper loginLogsMapper;

    @Override
    public List<LoginLogs> pageLoginLogs() {
        return loginLogsMapper.pageLoginLogs();
    }

    @Override
    public LoginLogs getLoginLogsByPhone(String phone) {
        return loginLogsMapper.getLoginLogsByPhone(phone);
    }


    @Override
    public List<LoginLogs> getLoginLogsPhone(String phone) {
        return loginLogsMapper.getLoginLogsPhone(phone);
    }

    @Override
    public int deleteLoginLogs(int id) {
        return loginLogsMapper.deleteLoginLogs(id);
    }

    @Override
    public int addLoginLogs(LoginLogs loginLogs) {
        return loginLogsMapper.addLoginLogs(loginLogs);
    }
}
