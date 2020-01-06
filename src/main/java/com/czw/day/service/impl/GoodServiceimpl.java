package com.czw.day.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.czw.day.domian.Good;
import com.czw.day.mapper.GoodMapper;
import com.czw.day.service.GoodService;
@Service
public class GoodServiceimpl implements GoodService{
	@Resource
	private GoodMapper mapper;
	public List<Good> list(Good good) {
		// TODO Auto-generated method stub
		return mapper.list(good);
	}
	
}
