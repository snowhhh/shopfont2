package controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import entity.address;
import entity.user;
import service.address_service;
import service.product_service;
import service.type_service;
import service.user_service;
import utils.SearchInfo;
import utils.jsonInfo;

@Controller
public class login_controller {
	@Autowired
	user_service service;
	@Autowired
	product_service pservice;
	@Autowired
	type_service tervice;
	@Autowired
	user_service uservice;
	@Autowired
	address_service aservice;
	@RequestMapping("login")
	public String detail(ModelMap m,user u,String txt,SearchInfo info,HttpSession session) {
		u=service.select(u);
		m.put("ulist", u);
		session.setAttribute("user", u);
		if(u!=null) {
			return indexx(m, txt, info, u);
		}
		else {
			return "login";
		}
	}
	@RequestMapping("index")
	public String indexx(ModelMap m,String txt,SearchInfo info,user u) {	
		
		if(txt==null) {
			txt="";
		}
		String where="";
		where=" where product.fullname like '%"+txt+"%'"; 
		info.setWhere(where);
		m.put("search", info);		
		m.put("list", tervice.select());
		m.put("slist", tervice.sselect());
		m.put("plist", pservice.select(info));
	return "index";
	}
	@RequestMapping("indexx")
	public String indexxx(ModelMap m,String txt,SearchInfo info,user u) {	
		
		if(txt==null) {
			txt="";
		}
		String where="";
		where=" where product.fullname like '%"+txt+"%'"; 
		info.setWhere(where);
		m.put("search", info);		
		m.put("slist", tervice.sselect());
		m.put("info", pservice.select(info));
	return "list";
	}
	@RequestMapping("adduser")
	public @ResponseBody jsonInfo insert(ModelMap m,user u) {	
		service.insert(u);
		return new jsonInfo(1,"注册成功");
	}
	@RequestMapping("userinfo")
	public void userinfo(ModelMap m,int id) {
		m.put("user", uservice.getByid(id));
	}
	@RequestMapping("addcity")
	public @ResponseBody jsonInfo addcity(address a) {	
		aservice.addcity(a);
		return new jsonInfo(1,"地址添加成功");
	}
}
