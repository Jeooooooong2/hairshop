package com.example.hairshop.mapper;

import com.example.hairshop.vo.CustomerVO;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface CustomerMapper {
	// 고객 리스트 조회
	List<CustomerVO> getCustomerList();
	
	// 고객 추가
	void insertCustomer(CustomerVO customerVO);

}
