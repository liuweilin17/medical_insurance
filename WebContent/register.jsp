<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="main.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册界面</title>
</head>
<body>
	<nav class="navbar navbar-inverse navbar-fixed-top" >
	  <div class="container" >
	  	  	<div class="navbar-header">
	  			<a class="navbar-brand" href="#">
	  				<img style="height:30px;width:30px" alt="Brand" src="image/mark.jpg">
	  			</a>
	  		</div>
	    	<p class="navbar-text">医疗保险系统 </p>
	    	<p class="navbar-text navbar-right">请注册</p>
	  </div>
	</nav>
	
	<div class="container">
		<form class="form-horizontal" style="margin-top:200px;margin-left:150px;border:3px solid #333" 
		action="register" method="POST">
		  <div class="form-group" style="margin-top:20px">
		    <label for="username" class="col-sm-2 control-label">用户名</label>
		    <div class="col-sm-5">
		      <input type="text" class="form-control" id="username" name="user.u_name" placeholder="用户名">
		    </div>
		  </div>
		  <div class="form-group">
		    <label for="password" class="col-sm-2 control-label">密码</label>
		    <div class="col-sm-5">
		      <input type="password" class="form-control" id="password" name="user.u_password" placeholder="密码">
		    </div>
		  </div>
		  <div class="form-group">
		  	<div class="col-sm-offset-2 col-sm-10">
		  		<label class="radio-inline">
					<input type="radio" name="userRole" id="superRole" value="0"> 医疗机构人员
				</label>
		  		<label class="radio-inline">
					<input type="radio" name="userRole" id="adminRole" value="1"> 投保对象
				</label>
				<label class="radio-inline">
				  <input type="radio" name="userRole" id="ordinaryRole" value="2" checked> 医保中心人员
				</label>
		  	</div>
		  </div>
		  <div class="form-group">
		    <div class="col-sm-offset-2 col-sm-10">
		      <button type="submit" class="btn btn-success">注册</button>
		    </div>
		  </div>
		  <%if(request.getAttribute("tip")!=null){ %>
		  <div class="form-group">
		    <div class="col-sm-offset-2 col-sm-10">
		      <p class="text-warning">
		      <%=request.getAttribute("tip")%>
		      </p>
		    </div>
		  </div>
		  <%} %>
		</form>
	</div>
</body>
</html>