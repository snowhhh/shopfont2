<%@ page language="java" pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html>
<head>
<meta name="keywords" content="甜爱，SweetLove,甜品，甜点，生日蛋糕，冰淇淋，冰品" />
<meta name="description"
	content="甜爱网上商城是专注于甜品销售、进口的网站，各种甜品、甜点齐全，还有解暑的各种冰品任顾客挑选，让他们感受到爱的温馨。">
<meta charset="utf-8">
<title>我的甜品，你的爱~</title>
<link rel="shortcut icon" href="img/logo_01.png">
<link rel="stylesheet" href="css/shoppingCar.css">
<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/carts.css">

</head>
<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
<script type="text/javascript">
$(function(){
	$(".delBtn").on("click",function(){
		var id=$(event.target).attr("myid");
		var target=$(event.target).parents(".order_lists");
		if(confirm("确认删除？")){
			$.post("delete",{id:id},function(res){
				if(res.status>0){
					target.remove();
					alert(res.text);		
				}
			},"json");		
		}
		});	
	
	
	
	function alljs(){
		$(".son_check").each(function(){
			
			if($(this).prop("checked")){
				$(event.target).parents(".order_lists").remove();
			}
			});
	}
	
	
	
	$(".sum").on("click",function(){
		var ids=[];	
		var user_id;
		var amount;
		var counts=[];
		var cids=[];
		var prices=[];
		var address=$(".address").val();
		$(".son_check").each(function(){					
			if($(this).prop("checked")){
				var id;
				var count;
				var cid;
				var price;
				id=$(this).attr("uid");	
				user_id=$(this).attr("user_id");
				amount=$(this).attr("amount");
				count=$(this).attr("count");
				cid=$(this).attr("cid")
				price=$(this).attr("price")
				ids.push(id);
				counts.push(count);	
				cids.push(cid);
				prices.push(price);
			}
			});
		var num=ids.toString();
		var countss=counts.toString();
		var cidss=cids.toString();
		var pricess=prices.toString();
		$.post("sum",{ids:num,user_id:user_id,amount:amount,address_id:address,counts:countss,cids:cidss,prices:pricess},function(sum){
			if(sum.status>0){
				$(".son_check").each(function(){					
					if($(this).prop("checked")){
						$(this).parents(".order_lists").remove();
					}
					});			
				alert(sum.text);
				$("#num").text("0");
				$(".total_text").text("0");
			}
		},"json");
	});	
	});
	
	

</script>
<body>
	<!--页头-->
	<div id="headCon">
		<div>
			<p>我的甜品 你的爱~</p>
			<ol>
			<c:if test="${sessionScope.user!=null}">
			<a href="orders?id=${sessionScope.user.id}">我的订单</a>
			<a href="shopcar?id=${sessionScope.user.id}" class="shoppingCar">
			<span>购物车</span>
            </a>
			</c:if>
				
            	
            	
			</ol>
		</div>
		<ul>
			<a href="index.html"><li></li></a>
			<p>我的购物车</p>
			<ol>
				<li>
					<div class="my">
						<img src="img/shopCar_08.png">
					</div>
					<p class="red">我的购物车</p>
				</li>
				
				<li class="pay">
					<div class="pay">
						<img src="img/shopCar_11.png">
					</div>
					<p>支付</p>
					
					</li>
		
			</ol>
		</ul>
	</div>
	<!--内容-->
	<div id="contentCon">
		<ul>
			<li>
				<p>我的商品（5）</p> <span></span>
			</li>
			<p>优惠（2）</p>
		</ul>
		<section class="cartMain">
			<div class="cartMain_hd">
				<ul class="order_lists cartTop">
					<li class="list_chk">
						<!--所有商品全选--> <input type="checkbox" id="all" class="whole_check">
						<label for="all"></label> 全选
					</li>
					<li class="list_con">商品信息</li>
					<li class="list_info">商品参数</li>
					<li class="list_price">单价（元）</li>
					<li class="list_amount">数量</li>
					<li class="list_sum">小计（元）</li>
					<li class="list_op">操作</li>
				</ul>
			</div>

			<div class="cartBox">
				<div class="shop_info">
				
				</div>
				<div class="order_content">
					<c:forEach items="${requestScope.list }" var="r" >
						<ul class="order_lists" >
							<li class="list_chk"><input type="checkbox" uid="${r.pid}" cid="${r.id}" user_id="${r.user_id}" amount="${r.price*r.count}" count="${r.count}" price="${r.price}"
								id="checkbox_${r.id}" class="son_check"> <label
								for="checkbox_${r.id}"></label></li>
							<li class="list_con">
								<div class="list_img">
									<a href="javascript:;"><img src="${r.pic}" alt=""></a>
								</div>
								<div class="list_text">
									<a href="detail?id=${r.pid}">${r.pname} <br>2017新品&nbsp;&nbsp;冰淇淋+小蛋糕
									</a>
								</div>
							</li>
							<li class="list_info">
								<p>净含量：250克</p>
								<p>规&nbsp;&nbsp;&nbsp;&nbsp;格：中杯</p>
							</li>
							<li class="list_price">
								<p class="price">￥${r.price}</p>
							</li>
							<li class="list_amount">
								<div class="amount_box">
									<a href="javascript:;" class="reduce reSty" aid="${r.id}">-</a> <input
										type="text" value="${r.count}" class="sum"> <a
										href="javascript:;" class="plus">+</a>
								</div>
							</li>
							<li class="list_sum">
								<p class="sum_price">￥${r.price*r.count}</p>
							</li>
							<li class="list_op">
								<p class="del">
									<a class="delBtn" myid="${r.id}">移除商品</a>
								</p>
							</li>
						</ul>
					</c:forEach>	
				</div>
			</div>

			
			<!--底部-->
			<div class="bar-wrapper">
			<div class="bar-left" style="position: absolute; top: 10px"  >
		
			<b style="font-size:x-large; font-family: STHupo;height: 41px ">收货地址:</b>
				
					<select class="address" style="height: 30px; width: 200px">
					<c:forEach items="${requestScope.alist}" var="a">
					<option value="${a.id}" style="height: 30px">${a.zone}</option>
					</c:forEach>
					</select>
						
			</div>
				<div class="bar-right">
					<div class="piece">
						已选商品<strong class="piece_num" id="num">0</strong>件
					</div>
					<div class="totalMoney">
						共计: <strong class="total_text">0.00</strong>
					</div>
					<div class="calBtn">
						<a  class="sum">结算</a>
					</div>
				</div>
			</div>
		</section>


		<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
		<script src="js/carts.js"></script>
	</div>
	<!--页脚-->
	<div id="footCon">
		<ul>
			<li>
				<div class="cold"></div> <span></span>
				<ol>
					<h2>18小时低温</h2>
					<p>全程冷链配送</p>
				</ol>
			</li>
			<li>
				<div class="wuxiu"></div> <span></span>
				<ol>
					<h2>7*24小时营业</h2>
					<p>全年无休</p>
				</ol>
			</li>
			<li>
				<div class="baoyou"></div> <span></span>
				<ol>
					<h2>满88包邮</h2>
					<p>次日送达</p>
				</ol>
			</li>
		</ul>
		<ol>
			<li><i></i> <a href="index.html">www.sweetlove.com</a>
				<div>
					<a href="http://www.weibo.com" class="weibo"></a> <a
						href="http://wx.qq.com" class="weixin"></a>
				</div></li>
			<ul>
				<li class="text01">
					<p>关于甜爱</p> <span></span> <a href="#">媒体报道</a> <a href="#">知识产权</a>
					<a href="#">加入我们</a>
				</li>
				<li>
					<p>帮助中心</p> <span></span> <a href="#">购物指南</a> <a href="#">订单管理</a>
					<a href="#">常见问题</a>
				</li>
				<li>
					<p>服务支持</p> <span></span> <a href="#">服务保障</a> <a href="#">用户协议</a>
					<a href="#">售后服务</a>
				</li>
				<li>
					<p>商业合作</p> <span></span> <a href="#">集合采购</a> <a href="#">品牌合作</a>
					<a href="#">媒体合作</a>
				</li>
			</ul>
			<div>
				<p>联系我们</p>
				<h2>400-8888-000</h2>
				<span>24小时服务热线</span> <a href="#">在线客服</a>
			</div>
		</ol>
		<div></div>
		<li>
			<p>Copyright © 2016 sweetlove.com Inc.All Rights Reserved.
				北京甜爱食品有限公司</p> <span>版权所有 京ICP备14049645号-1
				增值电信业务经营许可证：京ICP证160100号</span>
		</li>
	</div>
</body>
</html>
