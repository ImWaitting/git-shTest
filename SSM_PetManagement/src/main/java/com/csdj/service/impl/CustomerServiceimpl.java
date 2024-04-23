package com.csdj.service.impl;

import com.csdj.mapper.CustomerMapper;
import com.csdj.pojo.Customer;
import com.csdj.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class CustomerServiceimpl implements CustomerService {
    @Autowired
    private CustomerMapper customerMapper;

    @Override
    public List<Customer> getAllCustomer(String mobilePhone) {
        return customerMapper.getAllCustomer(mobilePhone);
    }

    @Override
    public int addCustomer(Customer customer) {
        return customerMapper.addCustomer(customer);
    }

    @Override
    public int deleteCustomerbyid(int id) {
        return customerMapper.deleteCustomerbyid(id);
    }

    @Override
    public int updateCustomer(Customer customer) {
        return customerMapper.updateCustomer(customer);
    }

    @Override
    public Customer getCustomerByAccountAndPassWord(String account, String passWord) {
        return customerMapper.getCustomerByAccountAndPassWord(account,passWord);
    }

    @Override
    public int updateCustomerInfo(Customer customer) {
        return customerMapper.updateCustomerInfo(customer);
    }

    @Override
    public int realNameAuthentication(String IDcard, String realName, Integer customerId) {
        return customerMapper.realNameAuthentication(IDcard,realName,customerId);
    }
}
