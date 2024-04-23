package com.csdj.service;

import com.csdj.pojo.Store;

import java.util.List;

public interface StoreService {
    List<Store> getStoreList(String storeName);
    Store getStoreByCustomerId(int customerId);
    int addStore(Store store);
    int updateCustomerId(String storeId);
    int daletebyid(int storeId);
}
