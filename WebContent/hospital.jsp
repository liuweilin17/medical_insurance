<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="main.jsp" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>医疗结构界面</title>
</head>
<body>
	<div style="margin-top:80px">
		<nav class="navbar navbar-inverse navbar-fixed-top">
		  <div class="container" >
		  		<div class="navbar-header">
		  			<a class="navbar-brand" href="#">
		  				<img style="height:30px;width:30px" alt="Brand" src="images/mark.jpg">
		  			</a>
		  		</div>
		    	<p class="navbar-text">医疗保险系统 </p>
		    	<p class="navbar-text navbar-right"><a href="login.jsp">登出</a></p>
		    	<p class="navbar-text navbar-right">${sessionScope.hospital.h_name}</p>
		    	<p class="navbar-text navbar-right">您好！</p>
		    	
		  </div>
		</nav>
	
	<div class="row">
		<div class="col-md-2" data-spy="affix">
			<ul class="nav nav-tabs nav-stacked">
				<li>
					<a class="nav nav-header" href="#hospital-consumption-list" data-toggle="collapse">
						<i class="glyphicon glyphicon-cog"></i>
							医疗消费管理
						<span class="pull-right glyphicon glyphicon-chevron-down"></span>
					</a>
					<ul class="nav nav-list secondmenu collapse in" id="hospital-consumption-list" role="tablist">
						<li role="presentation">
							<a href="#consumptionInput" id="input-tab" role="tab" data-toggle="tab" aria-controls="consumptionInput">
								<i class="glyphicon glyphicon-edit" style="margin-left:10px"></i>
								录入消费记录
							</a>
						</li>
						<li role="presentation">
							<a href="#consumptionSearch" id="search-tab" role="tab" data-toggle="tab" aria-controls="consumptionSearch">
								<i class="glyphicon glyphicon-print" style="margin-left:10px"></i>
								查看消费记录
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
						<li role="presentation">
							<a href="#infoCheck" id="check-tab" role="tab" data-toggle="tab" aria-controls="infoCheck">
								<i class="glyphicon glyphicon-user" style="margin-left:10px"></i>
								信息查看
							</a>
						</li>
					</ul>
				</li>
			</ul>
		</div>
		
		<div class="col-md-10 col-md-offset-2">
		<div class="tab-content">
			<div role="tabpanel" class="tab-pane fade" id="consumptionInput" aria-labelledBy="input-tab">
	        	<h3>录入消费记录</h3>
			    <div class="form-horizontal" style="margin-top:20px">
			      <div class="form-group">
				    <label for="hId" class="col-sm-2 control-label">医疗机构编号</label>
				    <div class="col-sm-5">
				      <input type="text" class="form-control" id="hId" name="hId" value=${sessionScope.hospital.h_id} readOnly="true" >
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="username" class="col-sm-2 control-label">患者编号</label>
				    <div class="col-sm-5">
				      <input type="text" class="form-control" id="uId" name="uId" placeholder="用户编号">
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="begin" class="col-sm-2 control-label">起始日期</label>
				    <div class="col-sm-5">
				      <input type="text" class="form-control" id="begin" name="begin" placeholder="起始日期">
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="end" class="col-sm-2 control-label">结束日期</label>
				    <div class="col-sm-5">
				      <input type="text" class="form-control" id="end" name="end" placeholder="结束日期">
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="disease" class="col-sm-2 control-label">疾病</label>
				    <div class="col-sm-5">
				      <input type="text" class="form-control" id="disease" name="disease" placeholder="疾病">
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="expense" class="col-sm-2 control-label">花费</label>
				    <div class="col-sm-5">
				      <input type="text" class="form-control" id="expense" name="expense" placeholder="花费">
				    </div>
				  </div>
				  <div class="form-group">
				    <div class="col-sm-offset-2 col-sm-10">
				      <button class="btn btn-success" id="addConsumptionBtn">添加</button>
				    </div>
				  </div>
				</div>
	      	</div>
	      	
	      	<div role="tabpanel" class="tab-pane fade" id="consumptionSearch" aria-labelledBy="search-tab">
	        	<h3>查看消费记录</h3>
	        	<table class="table table-hover" id="consumptionTable">
					<thead>
						<tr>
							<th>消费编号</th>
							<th>医疗机构编号</th>
							<th>用户编号</th>
							<th>住院日期</th>
							<th>出院日期</th>
							<th>疾病</th>
							<th>花费</th>
					</thead>
					<tbody></tbody>
				</table>
	      	</div>
	      	
	      	<div role="tabpanel" class="tab-pane fade" id="infoCheck" aria-labelledBy="check-tab">
	        	<h3>查看用户信息</h3>
	        	<div class="form-horizontal" style="margin-top:20px">
			      <div class="form-group">
				    <label class="col-sm-2 control-label">医疗机构编号</label>
				    <div class="col-sm-5">
				      <input type="text" class="form-control" value=${sessionScope.hospital.h_id} readOnly="true" disabled="true">
				    </div>
				  </div>
				  <div class="form-group">
				    <label class="col-sm-2 control-label">医疗结构名称</label>
				    <div class="col-sm-5">
				      <input type="text" class="form-control"  value=${sessionScope.hospital.h_name} readOnly="true" disabled="true">
				    </div>
				  </div>
				  <div class="form-group">
				    <label class="col-sm-2 control-label">医疗机构类型</label>
				    <div class="col-sm-5">
				      <input type="text" class="form-control" value=${sessionScope.hospital.h_type} readOnly="true" disabled="true">
				    </div>
				  </div>
				</div>
	      	</div>
	    </div>
		</div>
	</div>
	</div>
	
	<script>
		var consumptionTable;
		
    	$("#begin").datetimepicker({
    		 format: "yyyy-mm-dd",
    	        weekStart: 1,
    	        startDate: "1920-1-1",
    	        startView: "year",
    	        minView: "month",
    	        maxView: "decade",
    	        language: "zh-CN",
    	        initialDate: "1984-1-1"
    	});
    	$("#end").datetimepicker({
    		 format: "yyyy-mm-dd",
    	        weekStart: 1,
    	        startDate: "1920-1-1",
    	        startView: "year",
    	        minView: "month",
    	        maxView: "decade",
    	        language: "zh-CN",
    	        initialDate: "1984-1-1"
    	});
    	
    	$("#addConsumptionBtn").click(function(){
    		var url = 'addConsumption.action';
    		var params = {
    				h_id: $("#hId").val(),
    				u_id: $("#uId").val(),
    				begin: $("#begin").val(),
    				end: $("#end").val(),
    				disease: $("#disease").val(),
    				expense: $("#expense").val()
    		};
    		
    		console.log($("#hId").val());
    		console.log($("#uId").val());
    		$.ajax({
    			type: "POST",
    			url: url,
    			data: params,
    			dataType: "json",
    			success: function(ret){
    				console.log(ret);
    				alert("result:"+ret.result);
    				
    			},
    			error:function(ret){
    				alert("ajax error!");
    			}
    		})
    	});

    	$(document).ready(function(){
			consumptionTable = initConsumptionTable();
		});
    	
		function initConsumptionTable(){
			var h_id = $('#hId').val();
			console.log('initConsumptionTable');
			console.log(h_id);
			var table = $('#consumptionTable').dataTable({
 				"sAjaxSource": "findConsumption.action?flag=0&h_id="+h_id,
 				"bDestroy": true,
 				"bRetrieve": true,
 				"bProcessing": true,
 				"bJQuery": true,
 				"sAjaxDataProp":"aaData", 
 				"aoColumns":[
					{"mDataProp": "con_id"},         
 				 	{"mDataProp": "h_id"},
 				 	{"mDataProp": "u_id"},
 				 	{"mDataProp": "begin"},
 				 	{"mDataProp": "end"},
 				 	{"mDataProp": "disease"},
 				 	{"mDataProp": "expense"}
 				 ]
 			});
			return table;
		}
    	
	</script>
</body>
</html>