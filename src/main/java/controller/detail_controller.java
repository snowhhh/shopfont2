package controller;


import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import entity.shopcar;
import entity.type;
import entity.user;
import service.product_service;
import service.shopcar_service;
import service.type_service;
import service.user_service;
import utils.SearchInfo;
import utils.jsonInfo;


@Controller

public class detail_controller {
	@Autowired
	type_service tervice;
	@Autowired
	product_service pservice;
	@Autowired
	user_service uservice;
	@Autowired
	shopcar_service service;
	
	@RequestMapping("detail")
	public String detail(ModelMap m,Integer id,SearchInfo info) {		
		m.put("info", pservice.getById(id));
		m.put("plist", pservice.select(info));
		return "detail";
	}
	
	
	@RequestMapping("addcar")
	public @ResponseBody jsonInfo insert(shopcar s,SearchInfo info,HttpServletRequest req) {
		user u=(user) (req.getSession().getAttribute("user"));
		service.insert(s);
		return new jsonInfo(1, "添加成功");
	}

	@RequestMapping("edit")
	public String edit(int id,ModelMap m) {
		m.put("info", pservice.getById(id));
		
		return "redirect:detail";
	}
	@RequestMapping("list")
	public void list(int id,ModelMap m) {
		m.put("info", pservice.getBytype(id));			
	}

}
