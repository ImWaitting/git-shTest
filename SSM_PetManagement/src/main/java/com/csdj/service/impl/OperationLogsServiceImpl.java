package com.csdj.service.impl;

import com.csdj.mapper.OperationLogsMapper;
import com.csdj.pojo.OperationLogs;
import com.csdj.service.OperationLogsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OperationLogsServiceImpl implements OperationLogsService {
    @Autowired
    private OperationLogsMapper operationLogsMapper;
    @Override
    public List<OperationLogs> pageOperationLogs() {
        return operationLogsMapper.pageOperationLogs();
    }

    @Override
    public List<OperationLogs> getOperationLogsPhone(String phone) {
        return operationLogsMapper.getOperationLogsPhone(phone);
    }

    @Override
    public int deleteOperationLogs(int id) {
        return operationLogsMapper.deleteOperationLogs(id);
    }

    @Override
    public int addOperationLogs(OperationLogs operationLogs) {
        return operationLogsMapper.addOperationLogs(operationLogs);
    }
}
