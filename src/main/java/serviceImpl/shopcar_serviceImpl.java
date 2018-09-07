package serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.shopcar_dao;
import entity.shopcar;
import service.shopcar_service;
@Service
public class shopcar_serviceImpl implements shopcar_service{
	@Autowired
	shopcar_dao dao;
	public List<shopcar> select(int id) {
		// TODO Auto-generated method stub
		return dao.select(id);
	}
	public void insert(shopcar s) {
	dao.insert(s);	
	}
	public void delete(int id) {
	dao.delete(id);
	}
	public void add(shopcar s) {
		dao.add(s);	
	}
	public void ddelete(shopcar s) {
		dao.ddelete(s);
		
	}
}
