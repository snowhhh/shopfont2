package service;

import java.util.List;

import entity.product;
import entity.shopcar;
import utils.SearchInfo;

public interface shopcar_service {
	public List<shopcar> select(int id);
	public void insert(shopcar s);
	public void delete(int id);
	public void ddelete(shopcar s);
	public void add(shopcar s);
}
