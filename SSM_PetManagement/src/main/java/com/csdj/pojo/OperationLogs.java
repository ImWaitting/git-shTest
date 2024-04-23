package com.csdj.pojo;

import lombok.Data;

@Data
public class OperationLogs {
    private Integer id;// 操作日志编号
    private String store;//门店
    private String mobilePhone;//手机号
    private String category;//类别
    private String operationTime;//操作时间
    private String operationContext;//操作内容
}
