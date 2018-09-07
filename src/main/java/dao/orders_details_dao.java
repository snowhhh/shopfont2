package dao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import entity.orders_details;


@Repository
public interface orders_details_dao {
	@Insert("insert into orders_details(orders_id,product_id,user_id,count,price,nowprice,comments) value(#{orders_id},#{product_id},#{user_id},#{count},#{price},0,0)")
	public void insert(orders_details o);
	@Select("select orders_details.*,p.fullname pname,p.pics pics,o.code ocode from orders_details inner join product p on orders_details.product_id=p.id inner join orders o on orders_details.orders_id=o.id where orders_details.user_id=#{id} and o.status=1")	
	public List<orders_details> select(int id);
}
