package com.csdj.pojo;

import lombok.Data;

@Data
public class Role {
    private Integer userId;//用户id
    private String name;//姓名
    private String email;//邮箱
    private String mobilePhone;//手机号
    private String status;//状态
    private String role;//角色
    private String account;//账号
    private String passWord;//密码
    private String createTime;//创建时间
}
