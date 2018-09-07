package service;

import entity.orders;

public interface orders_service {
	public void insert(orders o);
	public int selectIdentity();
}
