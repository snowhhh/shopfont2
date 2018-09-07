package dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import entity.product;
import entity.shopcar;
import utils.SearchInfo;
@Repository
public interface shopcar_dao {
	@Select("select shopcar.*,p.fullname pname,p.pics pics,p.price price,p.id pid from shopcar inner join product p on shopcar.product_id=p.id where user_id=#{id}")
	public List<shopcar> select(int id);
	@Insert("insert into shopcar(user_id,product_id,count) value(#{user_id},#{product_id},#{count})")
	public void insert(shopcar s);
	@Delete("delete from shopcar where id=#{id}")
	public void delete(int id);
	@Delete("delete from shopcar where id in (${cids})")
	public void ddelete(shopcar s);
	@Update("update shopcar  set count=#{count} where id=#{id}")
	public void add(shopcar s);
}
