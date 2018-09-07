package dao;

import java.util.List;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import entity.product;
import utils.SearchInfo;
@Repository
public interface product_dao {
		@Select("select * from product ${where}")
		public List<product> select(SearchInfo info);
		@Select("select * from product where id=#{id}")
		public product getById(int id);
		@Select("select * from product where type_id=#{id}")
		public List<product> getBytype(int id);
	}
