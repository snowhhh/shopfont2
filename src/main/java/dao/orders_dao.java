package dao;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import entity.orders;



@Repository
public interface orders_dao {
	@Insert("insert into orders(date,code,amount,nowamount,address_id,user_id,status,assessstatus,comments) value(#{date},#{code},#{amount},#{nowamount},#{address_id},#{user_id},1,0,0)")
	public void insert(orders o);
	@Select("select @@identity AS 'identity'")
	public int selectIdentity();
}
