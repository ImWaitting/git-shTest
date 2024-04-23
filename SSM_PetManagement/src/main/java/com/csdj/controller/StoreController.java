package com.csdj.controller;

import com.csdj.pojo.Store;
import com.csdj.service.StoreService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class StoreController {
    @Autowired
    private StoreService storeService;
    @RequestMapping(value = "/getstore")
    public ModelAndView getStoreList(Integer pageNo,String storeName){
        ModelAndView modelAndView = new ModelAndView();
        if(pageNo == null){
            pageNo = 1;
        }
        int pageSize = 10;
        PageHelper.startPage(pageNo,pageSize);
        List<Store> stores = storeService.getStoreList(storeName);
        PageInfo<Store> pageInfo = new PageInfo<>(stores);
        modelAndView.addObject("pageInfo",pageInfo);
        modelAndView.setViewName("background/store");
        return  modelAndView;
    }
    @RequestMapping(value = "/addstore")
    public String addStore(Store store, HttpSession session){
        store.setStatus("申请中");
        int row = storeService.addStore(store);
        if (row > 0){
            session.setAttribute("addResult","注册成功，等待管理员审核");
        }else {
            session.setAttribute("addResult","注册失败，请重新注册");
        }
        return "receptiondesk/index";
    }
    @RequestMapping(value = "/updatestore")
    @ResponseBody
    public int updateCustomerId(String storeId){
        int row = storeService.updateCustomerId(storeId);
        return row;
    }
    @RequestMapping(value = "/deletestore")
    @ResponseBody
    public int deleteStorebyid(int storeId){
        int row =  storeService.daletebyid(storeId);
        return row;

    }
}
