<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="main.jsp" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登陆界面</title>
</head>
<body>
	<nav class="navbar navbar-inverse navbar-fixed-top" >
	  <div class="container" >
	  	  	<div class="navbar-header">
	  			<a class="navbar-brand" href="#">
	  				<img style="height:30px;width:30px" alt="Brand" src="images/mark.jpg">
	  			</a>
	  		</div>
	    	<p class="navbar-text">医疗保险系统 </p>
	    	<p class="navbar-text navbar-right">请登录</p>
	  </div>
	</nav>
	<div class="container">
		
		<form class="form-horizontal" style="margin-top:200px;margin-left:150px;border:3px solid #333" 
		action="login" method="POST">
		  <div class="form-group" style="margin-top:20px">
		    <label for="username" class="col-sm-2 control-label">用户编号</label>
		    <div class="col-sm-5">
		      <input type="text" class="form-control" id="userid" name="id" placeholder="用户编号">
		    </div>
		  </div>
		  <div class="form-group">
		    <label for="password" class="col-sm-2 control-label">密码</label>
		    <div class="col-sm-5">
		      <input type="password" class="form-control" id="password" name="password" placeholder="密码">
		    </div>
		  </div>
		  <div class="form-group">
		  	<div class="col-sm-offset-2 col-sm-10">
		  		<label class="radio-inline">
					<input type="radio" name="userRole" id="superRole" value="0"> 医疗机构
				</label>
		  		<label class="radio-inline">
					<input type="radio" name="userRole" id="adminRole" value="1"> 投保对象
				</label>
				<label class="radio-inline">
				  <input type="radio" name="userRole" id="ordinaryRole" value="2" checked> 医保中心
				</label>
		  	</div>
		  </div>
		  <div class="form-group">
		    <div class="col-sm-offset-2 col-sm-10">
		      <div class="checkbox">
		        <label>
		          <input type="checkbox"> 记住我
		        </label>
		      </div>
		    </div>
		  </div>
		  <div class="form-group">
		    <div class="col-sm-offset-2 col-sm-10">
		      <button type="submit" class="btn btn-success">登陆</button>
		    </div>
		  </div>
		  
		  <div class="form-group">
		  	<div class="col-sm-offset-2 col-sm-10">
		  		<p>未注册？请<a href="./register.jsp">注册</a></p>
		  	</div>
		  </div>
		  
		  <div class="form-group">
		    <div class="col-sm-offset-2 col-sm-10">
		      <p class="text-warning">
		      	<s:property value="tip"/>
		      </p>
		    </div>
		  </div>
		</form>
	</div>
	<script>
		
	</script>
	
</body>
</html>