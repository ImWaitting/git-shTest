package com.csdj.service;

import com.csdj.pojo.LoginLogs;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface LoginLogsService {
    List<LoginLogs> pageLoginLogs();

    LoginLogs getLoginLogsByPhone(@Param("phone") String phone);

    List<LoginLogs> getLoginLogsPhone(@Param("phone") String phone);

    int deleteLoginLogs(int id);

    int addLoginLogs(LoginLogs loginLogs);
}
