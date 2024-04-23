package com.csdj.pojo;

import lombok.Data;

@Data
public class Product {
    private Integer productId;//商品id
    private Store store;//门店
    private String productName;//商品名称
    private Integer price;//商品价格
    private String image;//商品图片
    private String status;//商品状态
    private String description;//商品简介
}
