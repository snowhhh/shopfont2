package serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.user_dao;
import entity.user;
import service.user_service;
@Service
public class user_serviceImpl implements user_service{
	@Autowired
	user_dao dao;
	public user select(user u) {
		// TODO Auto-generated method stub
		return dao.select(u);
	}
	public user getByid(int id) {
		// TODO Auto-generated method stub
		return dao.getByid(id);
	}
	public void insert(user u) {
		// TODO Auto-generated method stub
		dao.insert(u);
	}

}
