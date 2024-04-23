package com.csdj.service;

import com.csdj.pojo.Product;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Optional;

public interface ProductService {
    List<Product> getProducts(String productName);
    Product getProductById(int productId);
    int addProduct(Product product);
    int updateProductbyid(String status, int productId);
    int deletebyid(int productId);

}
