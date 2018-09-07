package service;

import java.util.List;


import entity.user;

public interface user_service {
	public user select(user u);
	public user getByid(int id);
	public void insert(user u);
}
