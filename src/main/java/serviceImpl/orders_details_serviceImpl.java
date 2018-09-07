package serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.orders_details_dao;
import entity.orders_details;
import service.orders_details_service;
@Service
public class orders_details_serviceImpl implements orders_details_service{
@Autowired
orders_details_dao dao;
	public void insert(orders_details o) {
		dao.insert(o);	
	}
	public List<orders_details> select(int id) {
		// TODO Auto-generated method stub
		return dao.select(id);
	}
}
