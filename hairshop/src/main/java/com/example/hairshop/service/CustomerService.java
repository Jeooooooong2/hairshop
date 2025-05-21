package com.example.hairshop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.hairshop.mapper.CustomerMapper;
import com.example.hairshop.vo.CustomerVO;

@Service
public class CustomerService {

	@Autowired
    private CustomerMapper customerMapper;

    public List<CustomerVO> getCustomerList() {
        return customerMapper.getCustomerList();
    }

}
