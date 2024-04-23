package com.csdj.controller;

import com.csdj.pojo.OperationLogs;
import com.csdj.service.OperationLogsService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class OperationLogsController {
    @Autowired
    private OperationLogsService operationLogsService;

    @RequestMapping("/pageOperationLogs")
    public String pageOperationLogs(Integer pageNo, HttpSession session) {
        if(pageNo == null){
            pageNo = 1;
        }
        int pageSize = 10;
        PageHelper.startPage(pageNo,pageSize);
        List<OperationLogs> operationLogs=operationLogsService.pageOperationLogs();
        PageInfo<OperationLogs> pageInfo = new PageInfo<>(operationLogs);
        session.setAttribute("pageInfo",pageInfo);
        return "background/operationLogs";
    }

    @RequestMapping("/getOperationLogsPhone")
    @ResponseBody
    public String getOperationLogsPhone(Integer pageNo, String phone, HttpSession session) {
        String result = "";
        if(pageNo == null){
            pageNo = 1;
        }
        int pageSize = 10;
        PageHelper.startPage(pageNo,pageSize);
        List<OperationLogs> operationLogs=operationLogsService.getOperationLogsPhone(phone);
        PageInfo<OperationLogs> pageInfo = new PageInfo<>(operationLogs);
        //判断查询用户对象是否为空
        if(operationLogs != null){
            result = "1";
            session.setAttribute("pageInfo",pageInfo);
        }else{
            result = "0";
        }
        return  result;
    }

    @RequestMapping("/deleteOperationLogs")
    @ResponseBody
    public int deleteOperationLogs(int id){
        return operationLogsService.deleteOperationLogs(id);
    }
}
