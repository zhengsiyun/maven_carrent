<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>个人资料--layui后台管理模板 2.0</title>
	<meta name="renderer" content="webkit">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<meta name="apple-mobile-web-app-status-bar-style" content="black">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="format-detection" content="telephone=no">
	<link rel="stylesheet" href="${ctx}/resources/layui/css/layui.css" media="all" />
	<link rel="stylesheet" href="${ctx}/resources/css/public.css" media="all" />
</head>
<body class="childrenBody">
<form class="layui-form layui-row">
	
	<div class="layui-col-md6 layui-col-xs12" id="searchFrm"> 
		<div class="layui-form-item">
			<label class="layui-form-label">用户名</label>
			<div class="layui-input-block">
				<input type="hidden" name="userid">
				<input type="text"  name="loginname" value="${user.loginname }"  class="layui-input layui-disabled">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">身份证号</label>
			<div class="layui-input-block">
				<input type="text" name="identity" value="${user.identity }" disabled class="layui-input layui-disabled">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">真实姓名</label>
			<div class="layui-input-block">
				<input type="text" name="realname" value="${user.realname }" placeholder="请输入真实姓名" lay-verify="required" class="layui-input realName">
			</div>
		</div>
		<div class="layui-form-item" pane="">
			<label class="layui-form-label">性别</label>
			<div class="layui-input-block userSex">
				<input type="radio" name="sex" value="${user.sex }=='1'?'<font color=blue>男</font>':'<font color=red>女</font>'" title="男" checked="checked" >
				<input type="radio" name="sex" value="${user.sex }=='1'?'<font color=blue>男</font>':'<font color=red>女</font>'" title="女">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">地址</label>
			<div class="layui-input-block">
				<input type="tel" name="address" value="${user.address }" placeholder="请输入地址"  class="layui-input userPhone">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">手机号</label>
			<div class="layui-input-block">
				<input type="tel" name="phone" value="${user.phone }" placeholder="请输入手机号" lay-verify="phone" class="layui-input userPhone">
			</div>
		</div>
		
		
		<div class="layui-form-item">
			<label class="layui-form-label">职位</label>
			<div class="layui-input-block">
				<input type="tel" name="position" value="${user.position }" placeholder="请输入职位" class="layui-input userPhone">
			</div>
		</div>
		<div  class="layui-form-item" style="text-align: center;">
		  <div class="layui-input-block" >
		      <button type="button" class="layui-btn layui-btn-normal  layui-icon layui-icon-search" id="doSearch">提交</button>
		      <button type="reset" class="layui-btn layui-btn-warm  layui-icon layui-icon-refresh">重置</button>
		    </div>
		 </div>
		
	</div>
</form>
<script type="text/javascript" src="${ctx}/resources/layui/layui.js"></script>
<script type="text/javascript" src="${ctx}/resources/userInfo.js"></script>
<script type="text/javascript" src="${ctx}/resources/js/cacheUserInfo.js"></script>
<script type="text/javascript">
	$("#doSearch").click(function(){
		var params=$("#searchFrm").serialize();
	
		url:"${ctx}/user/updateUser.action?"+params
	
	});
</script>
</body>
</html>