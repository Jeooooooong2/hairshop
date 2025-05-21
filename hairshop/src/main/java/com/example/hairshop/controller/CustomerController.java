package com.example.hairshop.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.example.hairshop.service.CustomerService;
import com.example.hairshop.vo.CustomerVO;


@Controller
public class CustomerController {
	
@Autowired
private CustomerService customerService;

	@GetMapping("/customer/getCustomerList")
	public String getCustomerList(Model model) {
		List<CustomerVO> customerList = customerService.getCustomerList();
        model.addAttribute("customerList", customerList);
        return "customer/customerList";
    }
}
