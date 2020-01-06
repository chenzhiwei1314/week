package com.czw.day.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.czw.day.domian.Good;
import com.czw.day.service.GoodService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
public class GoodController {
	@Resource
	private GoodService service;
	//请求路径
	@RequestMapping("list")
	public String list(@RequestParam(defaultValue = "1")int pageNum,Good good,Model model) {
		//分页
		PageHelper.startPage(pageNum, 3);
		List<Good> list=service.list(good);
		PageInfo<Good> pageInfo = new PageInfo<Good>(list);
		//传值
		model.addAttribute("list", list);
		//传分页值
		model.addAttribute("pg", pageInfo);
		model.addAttribute("good", good);
		//返回list
		return "list";
	}
	//跳转页面
	@RequestMapping("add")
	public String add() {
		return "add";
	}
}
