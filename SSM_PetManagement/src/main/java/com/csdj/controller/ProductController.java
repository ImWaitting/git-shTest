package com.csdj.controller;

import com.csdj.pojo.Product;
import com.csdj.pojo.Store;
import com.csdj.service.ProductService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import jakarta.servlet.ServletContext;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import java.io.File;
import java.io.IOException;
import java.util.List;

@Controller
public class ProductController {
    @Autowired
    private ProductService productService;
    @RequestMapping(value = "/product")
    public ModelAndView getProducts(Integer pageNo,String productName){
        ModelAndView mv = new ModelAndView();
        if(pageNo == null){
            pageNo = 1;
        }
        int pageSize = 10;
        PageHelper.startPage(pageNo,pageSize);
        List<Product>  products = productService.getProducts(productName);
        PageInfo<Product> pageInfo = new PageInfo<>(products);
        mv.addObject("pageInfo",pageInfo);
        mv.setViewName("background/Product");
        return mv;
    }
    @RequestMapping(value = "/product1")
    public ModelAndView getProducts(Integer pageNo, HttpServletRequest request){
        ModelAndView mv = new ModelAndView();
        if(pageNo == null){
            pageNo = 1;
        }
        int pageSize = 8;
        PageHelper.startPage(pageNo,pageSize);
        String productname = request.getParameter("search");
        List<Product>  products = productService.getProducts(productname);
        PageInfo<Product> pageInfo = new PageInfo<>(products);
        mv.addObject("pageInfo",pageInfo);
        mv.setViewName("receptiondesk/shop");
        return mv;
    }
    @RequestMapping(value = "/productById")
    public String getProductsById(Integer productId, HttpServletRequest request, HttpSession session){
        Integer id = Integer.valueOf(request.getParameter("Id"));
        //int id = 2;
        Product  products = productService.getProductById(id);
        if (products != null){
            session.setAttribute("products",products);
            return "receptiondesk/cart";
        }
        return "receptiondesk/shop";
    }

    @RequestMapping("/updatestatus")
    @ResponseBody
    public int updateProductbyid(Integer productId){
        String  status = "正常";
        int row = productService.updateProductbyid(status,productId);
        return row;
    }

    @RequestMapping("/deleteProductbyid")
    @ResponseBody
    public int deleteProductbyid(Integer productId) {
        int row=productService.deletebyid(productId);
        return row;
    }

    //使用springmvc封装上传文件
    @RequestMapping("/addProduct")
    public String testUp(HttpSession session, MultipartFile ufile,Integer storeId, String productName, Integer price, String description) throws
            IOException {
        //获取上传的文件的文件名
        String fileName = ufile.getOriginalFilename();
        //处理文件重名问题
//        String hzName = fileName.substring(fileName.lastIndexOf("."));
//        fileName = UUID.randomUUID().toString() + hzName;
        //获取服务器中photo目录的路径
        ServletContext servletContext = session.getServletContext();
        String photoPath = servletContext.getRealPath("images/product");
        File file = new File(photoPath);
        if(!file.exists()){
            file.mkdir();
        }
        String finalPath = photoPath + File.separator + fileName;
        Product product = new Product();
        Store store=new Store();
        store.setStoreId(storeId);
        product.setImage("static/images/product/"+fileName);
        product.setStore(store);
        product.setProductName(productName);
        product.setPrice(price);
        product.setStatus("发布中");
        product.setDescription(description);
        System.out.println(product);
        //实现上传功能
        ufile.transferTo(new File(finalPath));
        int row=productService.addProduct(product);
        if(row>0){
            session.setAttribute("addResult","申请成功，等待管理员审核");
        }else {
            session.setAttribute("addResult","申请失败，请重新申请");
        }
        return "receptiondesk/index";
    }
}
