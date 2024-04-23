package com.csdj.mapper;

import com.csdj.pojo.OperationLogs;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface OperationLogsMapper {
    List<OperationLogs> pageOperationLogs();

    List<OperationLogs> getOperationLogsPhone(@Param("phone") String phone);

    int deleteOperationLogs(@Param("id") int id);

    int addOperationLogs(OperationLogs operationLogs);
}
