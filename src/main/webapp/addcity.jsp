<%@ page language="java" pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html>
<head>
<meta name="keywords" content="甜爱，SweetLove,甜品，甜点，生日蛋糕，冰淇淋，冰品"/>
<meta name="description" content="甜爱网上商城是专注于甜品销售、进口的网站，各种甜品、甜点齐全，还有解暑的各种冰品任顾客挑选，让他们感受到爱的温馨。">
<meta charset="utf-8">
<title>我的甜品，你的爱~</title>
<link rel="shortcut icon" href="images/logo_01.png">
<link rel="stylesheet" href="css/userinfo.css">
<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
</head>

<script type="text/javascript">
$(function(){


	$(".save").on("click",function(){
		var zone=$(".zone").val();
		var addr=$(".addr").val();
		var name=$(".name").val();
		var tel=$(".tel").val();
		var status=$(".status").val();
		var id=${sessionScope.user.id};
		$.post("addcity",{user_id:id,zone:zone,addr:addr,name:name,tel:tel,status:status},function(res){
			alert(res.text);
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
            
            <a href="orders?id=${sessionScope.user.id}">我的订单</a>
            <a href="shopcar?id=${sessionScope.user.id}" class="shoppingCar">
            	<i></i>
            	<span>购物车（0）</span>
            </a>
        </ol>
    </div>
    <ul>
    	<a href="index.html"><li></li></a>
        <ol>
            <li><a href="index.html">首页</a></li>
            <li><a href="#">西式甜品</a></li>
            <li><a >港式甜品</a></li>
            <li><a href="#">中式甜品</a></li>
            <li><a href="#">日式甜品</a></li>   
        </ol>
    </ul>
</div>
<!--内容-->
<div id="contentCon">
	<div class="left">
    	<div></div>
        <p>晨曦夏夜</p>
        <span></span>
        <ul>
        	<li><a  href="userinfo?id=${sessionScope.user.id}">个人信息</a></li>
            <li><a href="orders?id=${sessionScope.user.id}">我的订单</a></li>
            <li><a href="shopcar?id=${sessionScope.user.id}">我的购物车</a></li>
            <li><a class="my">地址添加</a></li>
        </ul>
    </div>
    <div class="right">
    	<ul>
    		<p>基本资料</p>
            <span></span>
        </ul>
        <div>              
            <ol>
                <li >地区</li>
                <li >详细地址</li>
                <li>收货人</li>
                <li>电话</li>
                <li>标识</li>
            </ol>
            <ul>
           <li> <input style="height: 23px;width: 300px" class="zone"></input></li>
            <li> <input style="height: 23px;width: 300px" class="addr"></input></li>
             <li> <input style="height: 23px;width: 300px" class="name"></input></li>
              <li> <input style="height: 23px;width: 300px" class="tel"></input></li>
               <li> <input style="height: 23px;width: 300px" class="status"></input></li>
            	
               
            </ul>         
        </div> 
         <a class="save">保存</a>      
    </div>
    
</div>
<!--页脚-->
<div id="footCon">
	<ul>
    	<li>
        	<div class="cold"></div>
            <span></span>
            <ol>
            	<h2>18小时低温</h2>
            	<p>全程冷链配送</p>
            </ol>
        </li>
        <li>
        	<div class="wuxiu"></div>
            <span></span>
            <ol>
            	<h2>7*24小时营业</h2>
            	<p>全年无休</p>
            </ol>
        </li>
        <li>
        	<div class="baoyou"></div>
            <span></span>
            <ol>
            	<h2>满88包邮</h2>
            	<p>次日送达</p>
            </ol>
        </li>
    </ul>
    <ol>
    	<li>
        	<i></i>
            <a href="index.com">www.sweetlove.com</a>
            <div>
            	<a href="http://www.weibo.com" class="weibo"></a>
                <a href="http://wx.qq.com" class="weixin"></a>
            </div>
        </li>
        <ul>
        	<li class="text01">
            	<p>关于甜爱</p>
                <span></span>
                <a href="#">媒体报道</a>
                <a href="#">知识产权</a>
                <a href="#">加入我们</a>
            </li>
            <li>
            	<p>帮助中心</p>
                <span></span>
                <a href="#">购物指南</a>
                <a href="#">订单管理</a>
                <a href="#">常见问题</a>
            </li>
            <li>
            	<p>服务支持</p>
                <span></span>
                <a href="#">服务保障</a>
                <a href="#">用户协议</a>
                <a href="#">售后服务</a>
            </li>
            <li>
            	<p>商业合作</p>
                <span></span>
                <a href="#">集合采购</a>
                <a href="#">品牌合作</a>
                <a href="#">媒体合作</a>
            </li>
        </ul>
        <div>
        	<p>联系我们</p>
            <h2>400-8888-000</h2>
            <span>24小时服务热线</span>
            <a href="#">在线客服</a>
        </div>
    </ol>
    <div></div>
    <li>
        <p>Copyright © 2016 sweetlove.com Inc.All Rights Reserved. 北京甜爱食品有限公司</p>
        <span>版权所有 京ICP备14049645号-1 增值电信业务经营许可证：京ICP证160100号</span>
    </li>
</div>
</body>
</html>
