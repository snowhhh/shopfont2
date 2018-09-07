package dao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import entity.user;
@Repository
public interface user_dao {
	@Select("select * from user where email=#{email} and password=#{password}")
	public user select(user u);
	@Select("select * from user where id=#{id}")
	public user getByid(int id);
	@Insert("insert into user(email,tel,password,level,amount,status,comments) value(#{email},#{tel},#{password},0,0,0,0)")
	public void insert(user u);
	
}
