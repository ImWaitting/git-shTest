package com.csdj.mapper;

import com.csdj.pojo.LoginLogs;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface LoginLogsMapper {
    List<LoginLogs> pageLoginLogs();

    LoginLogs getLoginLogsByPhone(@Param("phone") String phone);

    List<LoginLogs> getLoginLogsPhone(@Param("phone") String phone);

    int deleteLoginLogs(@Param("id") int id);

    int addLoginLogs(LoginLogs loginLogs);
}
