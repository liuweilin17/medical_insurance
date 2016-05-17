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
		  		<div class="collapse navbar-collapse">
		  		<ul class="nav navbar-nav navbar-right">
		  			<li><p class="navbar-text">医疗保险系统 </p></li>
		  			<li><p class="navbar-text">您好！</p></li>
			    	<li><p class="navbar-text">${sessionScope.hospital.h_name}</p></li>
			    	<li><a href="login.jsp">登出</a></li>
		  		</ul>
		    	</div>
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
						<li role="presentation" class="active">
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
		
		<div class="col-md-8 col-md-offset-2">
		<div class="tab-content">
			<div role="tabpanel" class="tab-pane fade" id="consumptionInput" aria-labelledBy="input-tab">
	        	<ol class="breadcrumb">
				  <li><a>主页</a></li>
				  <li><a>医疗消费管理</a></li>
				  <li class="active">录入消费记录</li>
				</ol>
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
	        	<ol class="breadcrumb">
				  <li><a>主页</a></li>
				  <li><a>医疗消费管理</a></li>
				  <li class="active">查看消费记录</li>
				</ol>
	        	<table class="table table-hover" id="consumptionTable">
					<thead>
						<tr>
							<th>消费编号</th>
							<th>用户编号</th>
							<th>住院日期</th>
							<th>出院日期</th>
							<th>疾病</th>
							<th>花费</th>
							<th>操作</th>
					</thead>
					<tbody></tbody>
				</table>
	      	</div>
	      	
	      	<div role="tabpanel" class="tab-pane fade" id="infoCheck" aria-labelledBy="check-tab">
	        	<ol class="breadcrumb">
				  <li><a>主页</a></li>
				  <li><a>用户管理</a></li>
				  <li class="active">信息查看</li>
				</ol>
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
	
	<!-- 修改消费modal -->
	      	<div class="modal fade bs-example-modal-lg" id="modifyConsumptionModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
			  <div class="modal-dialog modal-lg" role="document">
			    <div class="modal-content">
			      <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			        <h4 class="modal-title" id="myModalLabel">修改医疗消费信息</h4>
			      </div>
			      <div class="modal-body">
					<div class="form-horizontal">
					<div class="form-group">
					    <label for="m_conId" class="col-sm-2 control-label">消费编号</label>
					    <div class="col-sm-5">
					      <input type="text" class="form-control" id="m_conId" name="m_conId" placeholder="消费编号" readOnly="true" disabled="true">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="m_username" class="col-sm-2 control-label">患者编号</label>
					    <div class="col-sm-5">
					      <input type="text" class="form-control" id="m_uId" name="m_uId" placeholder="用户编号" readOnly="true" disabled="true">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="m_begin" class="col-sm-2 control-label">起始日期</label>
					    <div class="col-sm-5">
					      <input type="text" class="form-control" id="m_begin" name="m_begin" placeholder="起始日期">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="m_end" class="col-sm-2 control-label">结束日期</label>
					    <div class="col-sm-5">
					      <input type="text" class="form-control" id="m_end" name="m_end" placeholder="结束日期">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="m_disease" class="col-sm-2 control-label">疾病</label>
					    <div class="col-sm-5">
					      <input type="text" class="form-control" id="m_disease" name="m_disease" placeholder="疾病">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="m_expense" class="col-sm-2 control-label">花费</label>
					    <div class="col-sm-5">
					      <input type="text" class="form-control" id="m_expense" name="m_expense" placeholder="花费">
					    </div>
					  </div>
					</div>
			      </div>
			      <div class="modal-footer">
 					<button class="btn btn-default" data-dismiss="modal">关闭</button>
			        <button class="btn btn-primary" onclick="modifyConsumption()">修改</button>
			      </div>
			    </div>
			  </div>
			</div>
			<!-- 申请报销modal -->
	
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
    	$("#m_begin").datetimepicker({
   		 format: "yyyy-mm-dd",
   	        weekStart: 1,
   	        startDate: "1920-1-1",
   	        startView: "year",
   	        minView: "month",
   	        maxView: "decade",
   	        language: "zh-CN",
   	        initialDate: "1984-1-1"
	   	});
	   	$("#m_end").datetimepicker({
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
 				"bLengthChange": false,
 				"aLengthMenu": [10],
 				"bJQuery": true,
 				"sAjaxDataProp":"aaData", 
 				"aoColumns":[
					{"mDataProp": "con_id"},         
 				 	{"mDataProp": "u_id"},
 				 	{"mDataProp": "begin"},
 				 	{"mDataProp": "end"},
 				 	{"mDataProp": "disease"},
 				 	{"mDataProp": "expense"}, 
 				 	{"mDataProp": "con_id",
 				 		"fnCreatedCell": function(nTd,sData,oData,iRow,iCol){
		                			$(nTd).html("<button class='btn btn-success' onclick='showModifyModal("+oData.con_id+")'>修改</button>");
		                }	
 				 	}	
 				 ],
 				"oLanguage": {
 					"sLengthMenu": "每页显示 _MENU_ 条记录",
 					"sZeroRecords": "抱歉， 没有找到",
 					"sInfo": "从 _START_ 到 _END_ /共 _TOTAL_ 条数据",
 					"sInfoEmpty": "没有数据",
 					"sInfoFiltered": "(从 _MAX_ 条数据中检索)",
 					"sSearch": "搜索",
 					"oPaginate": {
 					"sFirst": "首页",
 					"sPrevious": "前一页",
 					"sNext": "后一页",
 					"sLast": "尾页"
 					},
 					"sZeroRecords": "没有检索到数据",
 					"sProcessing": "<img src='./loading.gif' />"
 					}
 			});
			return table;
		}
    	function showModifyModal(con_id){
    		$.ajax({
    			url: 'findConsumption.action',
    			type: 'post',
    			data: {
    				flag: 2,
    				con_id: con_id
    			},
    			dataType: 'json',
    			success: function(data){
    				//获取consumption,填充modal
    				$('#m_conId').val(data.consumption.con_id);
    				$('#m_uId').val(data.consumption.u_id);
    				$('#m_begin').val(data.consumption.begin);
    				$('#m_end').val(data.consumption.end);
    				$('#m_disease').val(data.consumption.disease);
    				$('#m_expense').val(data.consumption.expense);
    				
    				//显示modal
    				$('#modifyConsumptionModal').modal();
    			},
    			error: function(data){
    				alert("error!");
    			}
    		});
    	}
    	function modifyConsumption(){
    		var con_id = $('#m_conId').val();
    		var begin = $('#m_begin').val();
    		var end = $('#m_end').val();
    		var disease = $('#m_disease').val();
    		var expense = $('#m_expense').val();
    		console.log("con_id:"+con_id);
    		console.log("disease:"+disease);
    		$.ajax({
    			url: 'modifyConsumption.action',
    			type: 'post',
    			dataType: 'json',
    			data: {
    				con_id: con_id,
    				begin: begin,
    				end: end,
    				disease: disease,
    				expense: expense
    			},
    			success: function(data){
    				alert(data.result);
    				$('#modifyConsumptionModal').modal('hide');
    				consumptionTable.api().ajax.reload();
    			},
    			error: function(){
    				alert('error!');
    			}
    		});
    	}
	</script>
</body>
</html>