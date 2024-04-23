package com.csdj.service.impl;

import com.csdj.mapper.ProductMapper;
import com.csdj.pojo.OperationLogs;
import com.csdj.pojo.Product;
import com.csdj.service.OperationLogsService;
import com.csdj.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.Optional;

@Service
public class ProductServiceimpl implements ProductService {
    @Autowired
    private ProductMapper productMapper;
    @Autowired
    private OperationLogsService operationLogsService;


    @Override
    public List<Product> getProducts(String productName) {
        return productMapper.getProducts(productName);
    }

    @Override
    public Product getProductById(int productId) {
        return productMapper.getProductById(productId);
    }
    
    @Override
    public int addProduct(Product product) {
        return productMapper.addProduct(product);
    }

    @Transactional
    @Override
    public int updateProductbyid(String status,int productId) {
        productMapper.updateProductbyid(status,productId);
        OperationLogs operationLogs=new OperationLogs();
        Product product=productMapper.getProductById(productId);
        operationLogs.setStore(product.getStore().getStoreName());
        operationLogs.setCategory("发布商品");
        operationLogs.setOperationContext("发布商品:"+product.getProductName());
        operationLogs.setMobilePhone(product.getStore().getCustomer().getMobilePhone());
        return operationLogsService.addOperationLogs(operationLogs);
    }
    @Transactional
    @Override
    public int deletebyid(int productId) {
        OperationLogs operationLogs=new OperationLogs();
        Product product=productMapper.getProductById(productId);
        operationLogs.setStore(product.getStore().getStoreName());
        operationLogs.setCategory("删除商品");
        operationLogs.setOperationContext("删除商品:"+product.getProductName());
        operationLogs.setMobilePhone(product.getStore().getCustomer().getMobilePhone());
        productMapper.deletebyid(productId);
        return operationLogsService.addOperationLogs(operationLogs);
    }
}
