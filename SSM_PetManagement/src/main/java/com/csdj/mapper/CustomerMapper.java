package com.csdj.mapper;

import com.csdj.pojo.Customer;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface CustomerMapper {
    List<Customer> getAllCustomer(@Param("mobilePhone") String mobilePhone);
    int addCustomer(Customer customer);
    int deleteCustomerbyid(int id);
    int updateCustomer(Customer customer);
    Customer getCustomerByAccountAndPassWord( @Param("account") String account, @Param("passWord") String passWord);
    int updateCustomerInfo(Customer customer);
    int realNameAuthentication(@Param("IDcard") String IDcard,@Param("contact")String realName, @Param("customerId") Integer customerId);
}
