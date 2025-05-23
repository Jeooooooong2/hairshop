package com.example.hairshop.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.hairshop.service.CustomerService;
import com.example.hairshop.vo.CustomerVO;


@Controller
public class CustomerController {
	
@Autowired
private CustomerService customerService;
	// 고객 리스트 조회
	@GetMapping("/customer/getCustomerList")
	public String getCustomerList(Model model) {
		List<CustomerVO> customerList = customerService.getCustomerList();
        model.addAttribute("customerList", customerList);
        return "customer/customerList";
    }
	
	// 고객 추가 페이지
	@GetMapping("/customer/addCustomer")
	public String showAddForm() {
	    return "customer/addCustomer";
	}
	@PostMapping("/customer/addCustomer")
	public String addCustomer(CustomerVO customerVO) {
	    customerService.insertCustomer(customerVO);
	    return "redirect:/customer/getCustomerList";
	}

	
}
