package dao;

import java.util.List;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import entity.type;
@Repository
public interface type_dao {
		@Select("select * from type where parentid=0")
		public List<type> select();		
		@Select("select * from type where parentid<>0")
		public List<type> sselect();	
	}
