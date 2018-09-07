<%@ page language="java" pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
  
  <head>
    <meta charset="UTF-8">
    <title>欢迎页面-X-admin2.0</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="./css/font.css">
    <link rel="stylesheet" href="./css/xadmin.css">
   <script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
    <script type="text/javascript" src="./lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="./js/xadmin.js"></script>
    <script type="text/javascript">
    
    </script>
  </head>
  
  <body>
    <div class="x-body">
      <div class="layui-row">
        <form class="layui-form layui-col-md12  layui-form-pane">
           <div class="layui-form-item" id="x-city">
            <label class="layui-form-label">城市选择</label>
            <div class="layui-input-inline">
              <select name="province" lay-filter="province">
                <option value="" id="sheng">请选择省</option>
              </select>
            </div>
            <div class="layui-input-inline">
              <select name="city" lay-filter="city">
                <option value="" id="shi">请选择市</option>
              </select>
            </div>
            <div class="layui-input-inline">
              <select name="area" lay-filter="area">
                <option value="" id="xian">请选择县/区</option>
              </select>
            </div>
            <hr>
            <label class="layui-form-label">详细地址</label>
            <div class="layui-input-inline">
             <input class="layui-input"></input>
            </div>
            <hr>
            <label class="layui-form-label">收货人</label>
            <div class="layui-input-inline">
             <input class="layui-input"></input>
            </div>
            <hr>
            <label class="layui-form-label">电话</label>
            <div class="layui-input-inline">
             <input class="layui-input"></input>
            </div>
            <hr>
            <label class="layui-form-label">标识</label>
            <div class="layui-input-inline">
             <input class="layui-input"></input>
            </div>
          </div>
          <a class="layui-btn">新增</a>
        </form>
      </div>
    </div>
    <script type="text/javascript" src="./js/xcity.js"></script>
    <script>
      layui.use(['form','code'], function(){
        form = layui.form;

        layui.code();

        $('#x-city').xcity('广东','广州市','东山区');

      });
    </script>
    
  </body>

</html>