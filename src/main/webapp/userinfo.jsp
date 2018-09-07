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
</head>



<link rel="stylesheet" href="css/layer.css">
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
<script src="jq/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="js/layer.js"></script>

<script type="text/javascript">
function info() {
	layer.open({
	  	type: 2,
	  	area: ['500px', '600px'],
	  	fixed: false, //不固定
	  	maxmin: false,
	  	content:"city.jsp",
	});	
}

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
            <li><a >西式甜品</a></li>
            <li><a >港式甜品</a></li>
            <li><a >中式甜品</a></li>
            <li><a>日式甜品</a></li>   
        </ol>
    </ul>
</div>
<!--内容-->
<div id="contentCon">
	<div class="left">
    	<div></div>
        <p >晨曦夏夜</p>
        <span></span>
        <ul>
        	<li><a class="my">个人信息</a></li>
            <li><a href="orders?id=${sessionScope.user.id}">我的订单</a></li>
            <li><a href="shopcar?id=${sessionScope.user.id}">我的购物车</a></li>
            <li><a href="addcity.jsp">地址添加</a></li>
        </ul>
    </div>
    <div class="right">
    	<ul>
    		<p>基本资料</p>
            <span></span>
        </ul>
        <div>
            <ol>
                <li>用 户 I D</li>
                <li>账&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;号</li>

                <li>手机号码</li>
                <li>会员等级</li>
            </ol>
            <ul>
            	<p>${requestScope.user.id}</p>
                <p>${requestScope.user.email}</p>
                <p>${requestScope.user.tel}</p>
                <p>${requestScope.user.level}</p>
               
            </ul>
        </div>
     
        
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
