package serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.product_dao;
import entity.product;
import service.product_service;
import utils.SearchInfo;


@Service
public class product_serviceImpl implements product_service {
	@Autowired
	product_dao dao;

	public List<product> select(SearchInfo info) {
		return dao.select(info);
	}
public product getById(int id) {		
		return dao.getById(id);
	}
public List<product> getBytype(int id) {
	return dao.getBytype(id);
}

}
