package dao;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import entity.product;
import utils.SearchInfo;

@Repository
public interface list_dao {
	@Select("select * from product where parentid=#{id}")
	public List<product> select();
}
