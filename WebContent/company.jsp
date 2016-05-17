<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="main.jsp" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>医保中心界面</title>
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
			    	<li><p class="navbar-text">${sessionScope.company.c_name}</p></li>
			    	<li><a href="login.jsp">登出</a></li>
		  		</ul>
		    	</div>
		  </div>
		</nav>
	
	<div class="row">
		<div class="col-md-2" data-spy="affix">
			<ul class="nav nav-list collapse in">
				<li role="presentation">
					<a class="nav nav-header" role="tab" data-toggle="tab" id="application-tab" href="#company-application" aria-controls="company-application">
						<i class="glyphicon glyphicon-cog"></i>
							医疗报销管理
					</a>
				</li>
				
				<li>
					<a class="nav nav-header" href="#user-list" data-toggle="collapse">
						<i class="glyphicon glyphicon-cog"></i>
							医疗账户管理
						<span class="pull-right glyphicon glyphicon-chevron-down"></span>
					</a>
					<ul class="nav nav-list secondmenu collapse in" id="user-list">
						<li role="presentation">
							<a href="#infoCheck" id="check-tab" role="tab" data-toggle="tab" aria-controls="infoCheck">
								<i class="glyphicon glyphicon-user" style="margin-left:10px"></i>
								账户信息查看
							</a>
						</li>
						<li role="presentation">
							<a href="#infoModify" id="modify-tab" role="tab" data-toggle="tab" aria-controls="infoModify">
								<i class="glyphicon glyphicon-user" style="margin-left:10px"></i>
								账户申请审核
							</a>
						</li>
					</ul>
				</li>
			</ul>
		</div>
		
		<div class="col-md-9 col-md-offset-2">
		<div class="tab-content">
	      	<div role="tabpanel" class="tab-pane fade" id="company-application" aria-labbelledBy="application-tab">
	      		<ol class="breadcrumb">
				  <li><a>主页</a></li>
				  <li class="active">医疗报销管理</li>
				</ol>
	      		<table style="margin-top:10px" class="table table-hover" id="applicationTable">
					<thead>
						<tr>
							<th>报销编号</th>
							<th>消费编号</th>
							<th>参保人员编号</th>
							<th>报销状态</th>
							<th>操作</th>
					</thead>
					<tbody></tbody>
				</table>
	      	</div>
	      	<div role="tabpanel" class="tab-pane fade" id="infoCheck" aria-labelledBy="check-tab">
	        	<ol class="breadcrumb">
				  <li><a>主页</a></li>
				  <li><a>医疗账户管理</a></li>
				  <li class="active">账户信息查看</li>
				</ol>
	        	<div class="form-horizontal" style="margin-top:20px">
			      <div class="form-group">
				    <label class="col-sm-2 control-label">医保中心编号</label>
				    <div class="col-sm-5">
				      <input type="text" class="form-control" id="cId" value=${sessionScope.company.c_id} readOnly="true" disabled="true">
				    </div>
				  </div>
				  <div class="form-group">
				    <label class="col-sm-2 control-label">医保中心名称</label>
				    <div class="col-sm-5">
				      <input type="text" class="form-control"  value=${sessionScope.company.c_name} readOnly="true" disabled="true">
				    </div>
				  </div>
				  <div class="form-group">
				    <label class="col-sm-2 control-label">参与医保</label>
				    <div class="col-sm-5">
				      <table class="table table-hover" id="accountTable">
				      	<thead>
				      		<tr>
				      			<th>参保人员编号</th>
				      			<th>余额</th>
				      		</tr>
				      	</thead>
				      	<tbody></tbody>
				      </table>
				  </div>
				</div>
	      	</div>
	      	</div>
	      	
	      	<div role="tabpanel" class="tab-pane fade" id="infoModify" aria-labelledBy="modify-tab">
	        	<ol class="breadcrumb">
				  <li><a>主页</a></li>
				  <li><a>医疗账户管理</a></li>
				  <li class="active">账户申请审核</li>
				</ol>
	        	<table style="margin-top:10px" class="table table-hover" id="userTable">
					<thead>
						<tr>
							<th>用户编号</th>
							<th>用户姓名</th>
							<th>用户年龄</th>
							<th>用户公司</th>
							<th>操作</th>
					</thead>
					<tbody></tbody>
				</table>
	      	</div>
	      	
			<!-- 报销详情modal -->
	      	<div class="modal fade bs-example-modal-lg" id="applicationDetailModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
			  <div class="modal-dialog modal-lg" role="document">
			    <div class="modal-content">
			      <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			        <h4 class="modal-title" id="myModalLabel">报销详情</h4>
			      </div>
			      <div class="modal-body">
					<div class="form-horizontal">
				      <div class="form-group">
				      	<label class="col-sm-2 control-label">参保人员编号</label>
					    <div class="col-sm-3">
					      <p class="form-control"  id="detailModal_u_id"></p>
					    </div>
					    <label class="col-sm-2 control-label">参保人员姓名</label>
					    <div class="col-sm-3">
					      <p class="form-control" id="detailModal_u_name"></p>
					    </div>
					  </div>
					  
					  <div class="form-group">
					    <label class="col-sm-2 control-label">医院编号</label>
					    <div class="col-sm-3">
					      <p class="form-control"  id="detailModal_h_id"></p>
					    </div>
					    <label class="col-sm-2 control-label">医院名称</label>
					    <div class="col-sm-3">
					      <p class="form-control"  id="detailModal_h_name"></p>
					    </div>
					  </div>
					  
					  <div class="form-group">
					  	<label class="col-sm-2 control-label">医院类型</label>
					    <div class="col-sm-3">
					      <p class="form-control"  id="detailModal_h_type">
					    </div>
					  </div>
					  
					  <div class="form-group">
					    <label class="col-sm-2 control-label">医保中心编号</label>
					    <div class="col-sm-3">
					      <p class="form-control" id="detailModal_c_id">${sessionScope.company.c_id}</p>
					    </div>
					    <label class="col-sm-2 control-label">医保中心名称</label>
					    <div class="col-sm-3">
					      <p class="form-control" id="detailModal_c_name">${sessionScope.company.c_name}</p>
					    </div>
					  </div>
					  
					  <div class="form-group">
					    <label class="col-sm-2 control-label">住院日期</label>
					    <div class="col-sm-3">
					      <p class="form-control" id="detailModal_begin"></p>
					    </div>
					    <label class="col-sm-2 control-label">出院日期</label>
					    <div class="col-sm-3">
					      <p class="form-control" id="detailModal_end"></p>
					    </div>
					  </div>
					  
					  <div class="form-group">
					    <label class="col-sm-2 control-label">疾病</label>
					    <div class="col-sm-3">
					      <p class="form-control" id="detailModal_disease"></p>
					    </div>
					    <label class="col-sm-2 control-label">医疗费用</label>
					    <div class="col-sm-3">
					      <p class="form-control" id="detailModal_expense"></p>
					    </div>
					  </div>
					  
					  <div class="form-group">
					    <label class="col-sm-2 control-label">报销状态</label>
					    <div class="col-sm-3">
					      <span id="detailModal_status"></span>
					    </div>
					  </div>
					  
					</div>
			      </div>
			      <div class="modal-footer">
 					<button class="btn btn-default" data-dismiss="modal">关闭</button>
			        <button class="btn btn-primary" onclick="print()">打印</button>
			      </div>
			    </div>
			  </div>
			</div>
			<!-- 申请报销modal -->
			
	    </div>
		</div>
	</div>
	</div>
	
	<script>
		var applicationTable;
		var accountTable;
		var userTable;
    	$(document).ready(function(){
			applicationTable = initApplicationTable();
			accountTable = initAccountTable();
			userTable = initUserTable();
		});
		
		function initApplicationTable(){
			var c_id = $('#cId').val();
			//console.log('initApplicationTable');
			//console.log(u_id);
			var table = $('#applicationTable').dataTable({
 				"sAjaxSource": "findApplication.action?flag=1&c_id="+c_id,
 				"bDestroy": true,
 				"bRetrieve": true,
 				"bProcessing": true,
 				"bJQuery": true,
 				"bLengthChange": false,
 				"aLengthMenu": [10],
 				"sAjaxDataProp":"aaData", 
 				"aoColumns":[
					{"mDataProp": "ap_id"},         
 				 	{"mDataProp": "con_id"},
 				 	{"mDataProp": "u_id"},
 				 	{"mDataProp": "ap_id",
 				 		"fnCreatedCell": function(nTd,sData,oData,iRow,iCol){
 		                		$(nTd).html("<button class='btn btn-info' onclick=showApplicationDetailModal("
 		                				+ oData.ap_id + ")>查看</button>");
 		                }
 				 	},
 				 	{"mDataProp": "status",
 				 		"fnCreatedCell": function(nTd,sData,oData,iRow,iCol){
		                		if(oData.status == 0){
		                			$(nTd).html("<button class='btn btn-success' onclick='modifyApplication(1, "+oData.ap_id+")'>同意</button>"
		                					+"<button class='btn btn-danger' onclick='modifyApplication(2, "+oData.ap_id+")'>拒绝</button>");
		                		}else if(oData.status == 1){
		                			$(nTd).html("<button class='btn btn-success'><span class='glyphicon glyphicon-ok-sign' aria-hidden='true'></span> 通过</button>");
		                		}else if(oData.status == 2){
		                			$(nTd).html("<button class='btn btn-danger'><span class='glyphicon glyphicon-remove-sign' aria-hidden='true'></span> 拒绝</button>");
		                		}else{
		                			$(nTd).html("<button class='btn btn-default'><span class='glyphicon glyphicon-question-sign' aria-hidden='true'></span> 未知</button>");
		                		}
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
		
		function showApplicationDetailModal(ap_id){
			$('#applicationDetailModal').modal();
			$('#applicationDetailModal').on('shown.bs.modal',function(e){
 				var url = 'findApplicationDetail.action';
 				$.ajax({
 					type: "POST",
 					url: url,
 					dataType: "json",
 					data:{
 						ap_id: ap_id
 					},
 					success: function(data){
 						//console.log(data);
 						$("#detailModal_h_id").text(data.hospital.h_id);
 						$("#detailModal_h_name").text(data.hospital.h_name);
 						$("#detailModal_h_type").text(data.hospital.h_type);
 						$("#detailModal_u_id").text(data.user.u_id);
 						$("#detailModal_u_name").text(data.user.u_name);
 						$("#detailModal_begin").text(data.consumption.begin);
 						$("#detailModal_end").text(data.consumption.end);
 						$("#detailModal_disease").text(data.consumption.disease);
 						$("#detailModal_expense").text(data.consumption.expense);
 						
 						if(data.application.status == 0){
 							$("#detailModal_status").text("处理中");
 							$("#detailModal_status").attr('class','form-control label label-warning');
 						}else if(data.application.status == 1){
 							$("#detailModal_status").text("通过");
 							$("#detailModal_status").attr('class','form-control label label-success');
 						}else if(data.application.status == 2){
 							$("#detailModal_status").text("拒绝");
 							$("#detailModal_status").attr('class','form-control label label-danger');
 						}else{
 							$("#detailModal_status").text("未知");
 							$("#detailModal_status").attr('class','form-control label label-default');
 						}
 					},
 					error: function(){
 						alert("error");
 					}
 				});
 			});
		}
		
		function print(){
			$('#applicationDetailModal').jqprint();
			$('#applicationDetailModal').modal('hide');
		}
		
		function initAccountTable(){
			var c_id = $('#cId').val();
			//console.log('initApplicationTable');
			//console.log(u_id);
			var table = $('#accountTable').dataTable({
 				"sAjaxSource": "findAccount.action?flag=1&c_id="+c_id,
 				"bDestroy": true,
 				"bRetrieve": true,
 				"bProcessing": true,
 				"bJQuery": true,
 				"bLengthChange": false,
 				"aLengthMenu": [10],
 				"sAjaxDataProp":"accountList", 
 				"aoColumns":[
					{"mDataProp": "u_id"},         
 				 	{"mDataProp": "remain"}
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
		
		function modifyApplication(status,ap_id){
			var url = 'modifyApplication.action';
			$.ajax({
				type: "POST",
				url: url,
				datatype: "json",
				data:{
					status: status,
					ap_id: ap_id
				},
				success: function(data){
					alert(data.result);
					applicationTable.api().ajax.reload();
				},
				error: function(data){
					alert('error');
				}
			});
		}
		function initUserTable(){
			var table = $('#userTable').dataTable({
 				"sAjaxSource": "findUser.action",
 				"bDestroy": true,
 				"bRetrieve": true,
 				"bProcessing": true,
 				"bJQuery": true,
 				"bLengthChange": false,
 				"aLengthMenu": [10],
 				"sAjaxDataProp":"aaData", 
 				"aoColumns":[
					{"mDataProp": "u_id"},         
 				 	{"mDataProp": "u_name"},
 				 	{"mDataProp": "u_age"},
 				 	{"mDataProp": "u_age"},
 				 	{"mDataProp": "flag",
 				 		"fnCreatedCell": function(nTd,sData,oData,iRow,iCol){
		                			$(nTd).html("<button class='btn btn-success' onclick='modifyUser(1, "+oData.u_id+")'>同意</button>"
		                					+"<button class='btn btn-danger' onclick='modifyUser(2, "+oData.u_id+")'>拒绝</button>");
		                		
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
		function modifyUser(flag,u_id){
			var url = 'modifyUser.action';
			$.ajax({
				type: "POST",
				url: url,
				datatype: "json",
				data:{
					flag: flag,
					u_id: u_id
				},
				success: function(data){
					console.log(data);
					alert(data.result);
					userTable.api().ajax.reload();
				},
				error: function(data){
					alert('error');
				}
			});
		}
	</script>
</body>
</html>