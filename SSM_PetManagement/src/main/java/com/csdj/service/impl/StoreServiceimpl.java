package com.csdj.service.impl;

import com.csdj.mapper.StoreMapper;
import com.csdj.pojo.Store;
import com.csdj.service.StoreService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class StoreServiceimpl implements StoreService {
    @Autowired
    private StoreMapper storeMapper;
    @Override
    public List<Store> getStoreList(String storeName) {
        return storeMapper.getStoreList(storeName);
    }

    @Override
    public Store getStoreByCustomerId(int customerId) {
        return storeMapper.getStoreByCustomerId(customerId);
    }

    @Override
    public int addStore(Store store) {return storeMapper.addStore(store);}

    @Override
    public int updateCustomerId(String storeId) {
        return storeMapper.updateCustomerId(storeId);
    }

    @Override
    public int daletebyid(int storeId) {
        return storeMapper.daletebyid(storeId);
    }
}
