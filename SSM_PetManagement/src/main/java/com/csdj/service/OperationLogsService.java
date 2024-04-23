package com.csdj.service;

import com.csdj.pojo.OperationLogs;

import java.util.List;

public interface OperationLogsService {
    List<OperationLogs> pageOperationLogs();

    List<OperationLogs> getOperationLogsPhone(String phone);

    int deleteOperationLogs(int id);

    int addOperationLogs(OperationLogs operationLogs);
}
