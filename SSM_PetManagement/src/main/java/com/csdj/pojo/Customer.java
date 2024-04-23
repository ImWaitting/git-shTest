package com.csdj.pojo;

import lombok.Data;

@Data
public class Customer {
    private Integer customerId;//客户编号
    private String nickName;//昵称
    private String studentNo;//学号
    private String contact;//联系人
    private String weChat;//微信号
    private String IDcard;//身份证
    private String mobilePhone;//手机号
    private String status;//状态
    private String sex;//性别
    private String account;//账号
    private String passWord;//密码
    private String createTime;//添加时间
}