package service;

import java.util.List;

import entity.orders_details;

public interface orders_details_service {
	public void insert(orders_details o);
	public List<orders_details> select(int id);
}
