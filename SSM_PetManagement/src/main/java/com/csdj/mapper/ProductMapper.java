package com.csdj.mapper;

import com.csdj.pojo.Product;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Optional;

@Mapper
public interface ProductMapper {
    List<Product> getProducts(String productName);
    Product getProductById(@Param("productId") int productId);
    int addProduct(Product product);
    int updateProductbyid(@Param("status") String status,@Param("productId") int productId);
    int deletebyid(int productId);
}
