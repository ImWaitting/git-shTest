package com.csdj.controller;

import com.csdj.pojo.LoginLogs;
import com.csdj.pojo.Role;
import com.csdj.service.LoginLogsService;
import com.csdj.service.RoleService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/Role")
public class RoleController {
    @Autowired
    private RoleService roleService;
    @Autowired
    private LoginLogsService loginLogsService;

    @RequestMapping("/login")
    public String getRole(HttpSession session,String account, String passWord){
        Role role=roleService.getRole(account,passWord);
        if(role!=null){
            LoginLogs loginLogs=new LoginLogs();
            loginLogs.setName(role.getName());
            loginLogs.setMobliePhone(role.getMobilePhone());
            loginLogs.setEmail(role.getEmail());
            //获取地址
            try {
                InetAddress ip=InetAddress.getLocalHost();
                loginLogs.setIpAddress(ip.getHostAddress());
            } catch (UnknownHostException e) {
                throw new RuntimeException(e);
            }
            loginLogs.setRole(role.getRole());
            //获取当前时间
            // 获取当前时间
            LocalDateTime currentTime = LocalDateTime.now();
            // 创建日期时间格式化器
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
            // 使用格式化器将当前时间转换为字符串
            String formattedTime = currentTime.format(formatter);
            loginLogs.setLoginTime(formattedTime);
            //获取上次时间
            LoginLogs oldLoginLogs=loginLogsService.getLoginLogsByPhone(role.getMobilePhone());
            if(oldLoginLogs!=null){
                loginLogs.setLastLoginTime(oldLoginLogs.getLoginTime());
            }else {
                loginLogs.setLastLoginTime(formattedTime);
            }
            loginLogsService.addLoginLogs(loginLogs);
            session.setAttribute("loginInfo",loginLogs);
            session.setAttribute("role",roleService.getRole(account,passWord));
            return "background/main";
        }else {
            session.setAttribute("result","账号或密码错误！");
            return "background/login";
        }
    }

    @RequestMapping("/pageRole")
    public String pageRole(Integer pageNo,HttpSession session) {
        if(pageNo == null){
            pageNo = 1;
        }
        int pageSize = 10;
        PageHelper.startPage(pageNo,pageSize);
        List<Role> roleList=roleService.pageRole();
        PageInfo<Role> pageInfo = new PageInfo<>(roleList);
        session.setAttribute("pageInfo",pageInfo);
        return "background/role";
    }

    @RequestMapping("/getRolePhone")
    @ResponseBody
    public String getRolePhone(Integer pageNo, String phone, HttpSession session) {
        String result = "";
        if(pageNo == null){
            pageNo = 1;
        }
        int pageSize = 10;
        PageHelper.startPage(pageNo,pageSize);
        List<Role> roleList=roleService.getRolePhone(phone);
        PageInfo<Role> pageInfo = new PageInfo<>(roleList);
        //判断查询用户对象是否为空
        if(roleList != null){
            result = "1";
            session.setAttribute("pageInfo",pageInfo);
        }else{
            result = "0";
        }
        return  result;
    }

    @RequestMapping("/insertRole")
    @ResponseBody
    public int insertRole(Role role) {
        //获取当前时间
        SimpleDateFormat simpleDateFormat=new SimpleDateFormat("yyyy-MM-dd");
        Date date=new Date();
        String formattedDate=simpleDateFormat.format(date);
        role.setCreateTime(formattedDate);
        return roleService.insertRole(role);
    }

    @RequestMapping("/deleteRole")
    @ResponseBody
    public int deleteRole(int id){
        return roleService.deleteRole(id);
    }

    @RequestMapping("/updateRole")
    @ResponseBody
    public int updateRole(Role role){
        return roleService.updateRole(role);
    }
}
