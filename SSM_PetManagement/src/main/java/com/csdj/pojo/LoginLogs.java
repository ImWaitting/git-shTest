package com.csdj.pojo;


import lombok.Data;

@Data
public class LoginLogs {
    private Integer id;//序号
    private String name;//姓名
    private String mobliePhone;//手机号
    private String email;//邮箱
    private String ipAddress;//ip地址
    private String loginTime;//登录时间
    private String role;//角色
    private String lastLoginTime;//上次登录时间
}
