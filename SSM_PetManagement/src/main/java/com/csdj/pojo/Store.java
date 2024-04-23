package com.csdj.pojo;

import lombok.Data;

@Data
public class Store {
    private Integer storeId;//店铺编号
    private Customer customer;//店铺所属客户
    private String storeName;//店铺名称
    private String status;//状态
    private String address;//地址
    private String sellCategory;//销售类别
}
