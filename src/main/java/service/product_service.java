package service;

import java.util.List;

import entity.product;
import utils.SearchInfo;

public interface product_service {
	public List<product> select(SearchInfo info);
	public product getById(int id);
	public List<product> getBytype(int id);
}
