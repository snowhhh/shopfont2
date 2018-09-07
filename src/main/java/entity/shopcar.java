package entity;

public class shopcar {
int id;
int user_id;
int product_id;
int count;
String pname;
String pics;
double price;
String ids;
String counts;
int pid;
String cids;
String prices;


public String getPic() {
	if(pics.length()<2)return null;
	String [] pic=pics.split(",");
	if(pic.length>0)
	return pic[0];
	else return null;
}








public String getPrices() {
	return prices;
}








public void setPrices(String prices) {
	this.prices = prices;
}








public int getPid() {
	return pid;
}

public String getCids() {
	return cids;
}








public void setCids(String cids) {
	this.cids = cids;
}








public void setPid(int pid) {
	this.pid = pid;
}

public String getCounts() {
	return counts;
}



public void setCounts(String counts) {
	this.counts = counts;
}

public String getIds() {
	return ids;
}



public void setIds(String ids) {
	this.ids = ids;
}

public double getPrice() {
	return price;
}
public void setPrice(double price) {
	this.price = price;
}

public String getPics() {
	return pics;
}
public void setPics(String pics) {
	this.pics = pics;
}
public String getPname() {
	return pname;
}
public void setPname(String pname) {
	this.pname = pname;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public int getUser_id() {
	return user_id;
}
public void setUser_id(int user_id) {
	this.user_id = user_id;
}
public int getProduct_id() {
	return product_id;
}
public void setProduct_id(int product_id) {
	this.product_id = product_id;
}
public int getCount() {
	return count;
}
public void setCount(int count) {
	this.count = count;
}

}
