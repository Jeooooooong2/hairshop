package com.example.hairshop.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CustomerController {
	// 페이지 이동
	@GetMapping("/customer/getCustomerList") 
	public String getCustomerList() {
		return "customer/customerList"; 
	}
}
