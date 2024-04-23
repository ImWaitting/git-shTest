package com.csdj.service;

import com.csdj.pojo.Customer;
import org.apache.ibatis.annotations.Param;

import java.util.List;
public interface CustomerService {
    List<Customer> getAllCustomer(@Param("mobilePhone") String mobilePhone);
    int addCustomer(Customer customer);
    int deleteCustomerbyid(int id);
    int updateCustomer(Customer customer);
    Customer getCustomerByAccountAndPassWord( String account, String passWord);
    int updateCustomerInfo(Customer customer);
    int realNameAuthentication( String IDcard,String realName, Integer customerId);
}
