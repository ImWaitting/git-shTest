package com.csdj.mapper;

import com.csdj.pojo.Store;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface StoreMapper  {
    List<Store> getStoreList(String storeName);
    Store getStoreByCustomerId(int customerId);
    int addStore(Store store);
    int updateCustomerId(String storeId);
    int daletebyid(int storeId);
}
