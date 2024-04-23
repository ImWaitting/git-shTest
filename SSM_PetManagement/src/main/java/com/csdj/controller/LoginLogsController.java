package com.csdj.controller;

import com.csdj.pojo.LoginLogs;
import com.csdj.service.LoginLogsService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class LoginLogsController {
    @Autowired
    private LoginLogsService loginLogsService;

    @RequestMapping("/pageLoginLogs")
    public String pageLoginLogs(Integer pageNo, HttpSession session) {
        if (pageNo == null){
            pageNo = 1;
        }
        int pageSize = 10;
        PageHelper.startPage(pageNo , pageSize);
        List<LoginLogs> loginLogs = loginLogsService.pageLoginLogs();
        PageInfo<LoginLogs> pageInfo = new PageInfo<>(loginLogs);
        session.setAttribute("pageinfoLoginLogs",pageInfo);
        return "background/loginLogs";
    }

    @RequestMapping("/getPageLoginLogs")
    @ResponseBody
    public String getLoginLogsPhone(Integer pageNo, String phone, HttpSession session) {
        String result = "";
        if(pageNo == null){
            pageNo = 1;
        }
        int pageSize = 10;
        PageHelper.startPage(pageNo,pageSize);
        List<LoginLogs> loginLogs= loginLogsService.getLoginLogsPhone(phone);
        PageInfo<LoginLogs> pageInfo = new PageInfo<>(loginLogs);
        //判断查询用户对象是否为空
        if(loginLogs != null){
            result = "1";
            session.setAttribute("pageinfoLoginLogs",pageInfo);
        }else{
            result = "0";
        }
        return  result;
    }

    @RequestMapping("/deleteLogionLogs")
    @ResponseBody
    public int deleteLogionLogs(int id){
        return loginLogsService.deleteLoginLogs(id);
    }
}
