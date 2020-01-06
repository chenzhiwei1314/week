package com.czw.day.mapper;

import java.util.List;

import com.czw.day.domian.Good;

public interface GoodMapper {

	//查询方法
	List<Good> list(Good good);

}
