<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="main.jsp" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>投保对象界面</title>
</head>
<body>
	<div style="margin-top:80px">
		<nav class="navbar navbar-inverse navbar-fixed-top">
		  <div class="container" >
		  		<div class="navbar-header">
		  			<a class="navbar-brand" href="#">
		  				<img style="height:30px;width:30px" alt="Brand" src="image/mark.jpg">
		  			</a>
		  		</div>
		    	<p class="navbar-text">医疗保险系统 </p>
		    	<p class="navbar-text navbar-right"><%=request.getSession().getAttribute("username") %></p>
		    	<p class="navbar-text navbar-right">您好！</p>
		  </div>
		</nav>
	
		<div class="col-md-2" data-spy="affix">
			<ul class="nav nav-tabs nav-stacked">
				<li>
					<a class="nav nav-header" href="#medical-insurance-list" data-toggle="collapse">
						<i class="glyphicon glyphicon-cog"></i>
							医疗保险管理
						<span class="pull-right glyphicon glyphicon-chevron-down"></span>
					</a>
					<ul class="nav nav-list secondmenu collapse in" id="medical-insurance-list">
						<li>
							<a href="center.jsp">
								<i class="glyphicon glyphicon-edit" style="margin-left:10px"></i>
								中心报销
							</a>
						</li>
						<li>
							<a href="print.jsp">
								<i class="glyphicon glyphicon-print" style="margin-left:10px"></i>
								凭证重打
							</a>
						</li>
						<li>
							<a href="civil.jsp">
								<i class="glyphicon glyphicon-edit" style="margin-left:10px"></i>
								公务员报销
							</a>
						</li>
						<li>
							<a href="expenseCheck.jsp">
								<i class="glyphicon glyphicon-eye-open" style="margin-left:10px"></i>
								录入费用审核
							</a>
						</li>
					</ul>
				</li>
				
				<li>
					<a class="nav nav-header" href="#user-list" data-toggle="collapse">
						<i class="glyphicon glyphicon-cog"></i>
							用户管理
						<span class="pull-right glyphicon glyphicon-chevron-down"></span>
					</a>
					<ul class="nav nav-list secondmenu collapse in" id="user-list">
						<li>
							<a href="infoCheck.jsp">
								<i class="glyphicon glyphicon-user" style="margin-left:10px"></i>
								信息查看
							</a>
						</li>
						<li>
							<a href="infoModify.jsp">
								<i class="glyphicon glyphicon-edit" style="margin-left:10px"></i>
								信息修改
							</a>
						</li>
					</ul>
				</li>
			</ul>
		</div>
	</div>
<!-- 	<nav class="navbar navbar-inverse navbar-fixed-bottom"> -->
<!-- 	  <div class="container"> -->
<!-- 	    	<p class="navbar-text">copyright...</p> -->
<!-- 	  </div> -->
<!-- 	</nav> -->
	<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
	<script src="js/jquery-2.1.1.min.js"></script>

	<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
	<script src="js/bootstrap.min.js"></script>
</body>
</html>