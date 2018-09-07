package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import entity.user;
import service.orders_details_service;
import utils.SearchInfo;

@Controller
public class orders_controller {
	@Autowired
	orders_details_service service;
	@RequestMapping("orders")
	public void orders(ModelMap m,int id) {
		m.put("olist", service.select(id));
	}

}
