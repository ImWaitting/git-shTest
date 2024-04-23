package com.csdj.controller;

import com.csdj.pojo.Customer;
import com.csdj.service.CustomerService;
import com.csdj.service.StoreService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class CustomerController {
    @Autowired
    private CustomerService customerService;
    @Autowired
    private StoreService storeService;

    @RequestMapping(value = "/customerInfo1")
    public ModelAndView saleInfo1(Integer pageNo,String mobilePhone){
        ModelAndView modelAndView = new ModelAndView();
        if(pageNo == null){
            pageNo = 1;
        }
        int pageSize = 10;
        PageHelper.startPage(pageNo,pageSize);
        List<Customer>  customers = customerService.getAllCustomer(mobilePhone);
        PageInfo<Customer> pageInfo = new PageInfo<>(customers);
        modelAndView.addObject("pageInfo",pageInfo);
        modelAndView.setViewName("receptiondesk/Customer");
        return  modelAndView;
    }
    @RequestMapping(value = "/customerInfo")
    public ModelAndView saleInfo(Integer pageNo,String mobilePhone){
        ModelAndView modelAndView = new ModelAndView();
        if(pageNo == null){
            pageNo = 1;
        }
        int pageSize = 10;
        PageHelper.startPage(pageNo,pageSize);
        List<Customer>  customers = customerService.getAllCustomer(mobilePhone);
        PageInfo<Customer> pageInfo = new PageInfo<>(customers);
        modelAndView.addObject("pageInfo",pageInfo);
        modelAndView.setViewName("background/Customer");
        return  modelAndView;
    }
    @RequestMapping(value = "/addCustomer")
    @ResponseBody
    public int  addCustomer(Customer customer){
        int row = customerService.addCustomer(customer);
        return row;
    }
    @RequestMapping(value = "/deleteCustomerbyid")
    @ResponseBody
    public int deleteCustomerbyid(int id){
        int row = customerService.deleteCustomerbyid(id);
        return row;
    }
    @RequestMapping(value = "/updateCustomer")
    @ResponseBody
    public  int updateCustomer(Customer customer){
        int row = customerService.updateCustomer(customer);
        return row;
    }

    //修改客户信息
    @RequestMapping(value = "/updateCustomerInfo")
    public String updateCustomerInfo(String passWord2, HttpSession session) {
        Customer customer=(Customer) session.getAttribute("customer");
        if(passWord2!=null){
            customer.setPassWord(passWord2);
        }
        int row = customerService.updateCustomerInfo(customer);
        if (row>0){
            session.setAttribute("customer",customerService.getCustomerByAccountAndPassWord(customer.getAccount(),customer.getPassWord()));
            session.setAttribute("message","修改成功");
        }else {
            session.setAttribute("message","修改失败");
        }
        return "receptiondesk/customer";
    }

    @RequestMapping("/register")
    public String register(@Param("nickName") String nickName, @Param("account") String account, @Param("passWord") String passWord,HttpSession session) {
        Customer customer = new Customer();
        customer.setNickName(nickName);
        customer.setAccount(account);
        customer.setPassWord(passWord);
        int row =customerService.addCustomer(customer);
        if(row>0){
            session.setAttribute("registerResult", "注册成功");
        }else {
            session.setAttribute("registerResult", "注册失败");
        }
        return "receptiondesk/login";
    }

    @RequestMapping("/login")
    @ResponseBody
    public String login( String account,String passWord, HttpSession session) {
        String result = "";
        Customer customer = customerService.getCustomerByAccountAndPassWord(account, passWord);
        //判断查询用户对象是否为空
        if (customer != null) {
            result = "1";
            session.setAttribute("customer", customer);
            session.setAttribute("store",storeService.getStoreByCustomerId(customer.getCustomerId()));
        } else {
            result = "0";
        }
        return result;
    }

    // 实名认证
    @RequestMapping(value = "/realNameAuthentication")
    public String realNameAuthentication(String IDcard ,String realName, Integer customerId,HttpSession session) {
        String message = "";
        int row = customerService.realNameAuthentication(IDcard,realName,customerId);
        if (row>0){
            Customer customer=(Customer) session.getAttribute("customer");
            session.setAttribute("customer",customerService.getCustomerByAccountAndPassWord(customer.getAccount(),customer.getPassWord()));
            session.setAttribute("message","实名认证成功");
        }else {
            session.setAttribute("message","实名认证失败");
        }
        return "receptiondesk/customer";

    }
}
