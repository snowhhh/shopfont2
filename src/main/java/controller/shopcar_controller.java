package controller;


import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import entity.orders;
import entity.orders_details;
import entity.shopcar;
import service.address_service;
import service.orders_details_service;
import service.orders_service;
import service.shopcar_service;

import utils.SearchInfo;
import utils.jsonInfo;
@Controller
public class shopcar_controller {
	@Autowired
	shopcar_service service;
	@Autowired
	orders_service oervice;
	@Autowired
	address_service aservice;
	@Autowired
	orders_details_service dservice;
	@RequestMapping("shopcar")
	public void index(ModelMap m,String txt,SearchInfo info,int id) {
		m.put("alist", aservice.select(id));
		m.put("list",service.select(id));	
	}
	@RequestMapping("delete")
	public @ResponseBody jsonInfo delete(int id) {
		service.delete(id);
		return new jsonInfo(1, "成功");
	}
	@RequestMapping("sum")
	public @ResponseBody jsonInfo add(shopcar s,orders o,orders_details r) {
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String a=String.valueOf(new Date().getTime());
		o.setDate(df.format(new Date()));
		o.setCode(a);
		service.ddelete(s);
		oervice.insert(o);
		int oid=oervice.selectIdentity();
		String [] ids=s.getIds().split(",");
		String [] counts=s.getCounts().split(",");
		String [] prices=s.getPrices().split(",");
		ArrayList<Integer> idd=new ArrayList<Integer>();
		ArrayList<Integer> count=new ArrayList<Integer>();
		ArrayList<Double> price=new ArrayList<Double>();
		for(String string:ids) {
			idd.add(Integer.valueOf(string));
		}
		for(String string:counts) {
			count.add(Integer.valueOf(string));
		}
	for(String string:prices) {
			price.add(Double.valueOf(string));
		}
		for(int i=0;i<idd.size();i++) {
			r.setOrders_id(oid);
			r.setCount(count.get(i));
			r.setProduct_id(idd.get(i));
			r.setUser_id(o.getUser_id());
			r.setPrice(price.get(i));
//			System.out.println(price.get(i));
			dservice.insert(r);		
		}
	

		return new jsonInfo(1, "成功");
	}
}
