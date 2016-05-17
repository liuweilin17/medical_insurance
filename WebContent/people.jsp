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
		  				<img style="height:30px;width:30px" alt="Brand" src="images/mark.jpg">
		  			</a>
		  		</div>
		  		<div class="collapse navbar-collapse">
		  		<ul class="nav navbar-nav navbar-right">
		  			<li><p class="navbar-text">医疗保险系统 </p></li>
		  			<li><p class="navbar-text">您好！</p></li>
			    	<li><p class="navbar-text">${sessionScope.user.u_name}</p></li>
			    	<li><a href="login.jsp">登出</a></li>
		  		</ul>
		    	</div>
		  </div>
		</nav>
	
	<div class="row">
		<div class="col-md-2" data-spy="affix">
			<ul class="nav nav-list collapse in">
				<li role="presentation" class="active">
					<a class="nav nav-header" role="tab" data-toggle="tab" id="consumption-tab" href="#hospital-consumption" aria-controls="hospital-consumption">
						<i class="glyphicon glyphicon-cog"></i>
							医疗消费管理
					</a>
				</li>
				
				<li role="presentation">
					<a class="nav nav-header" role="tab" data-toggle="tab" id="application-tab" href="#company-application" aria-controls="company-application">
						<i class="glyphicon glyphicon-cog"></i>
							医疗报销管理
					</a>
				</li>
				
				<li>
					<a class="nav nav-header" href="#user-list" data-toggle="collapse">
						<i class="glyphicon glyphicon-cog"></i>
							医保账户管理
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
								医保账户申请
							</a>
						</li>
					</ul>
				</li>
			</ul>
		</div>
		
		<div class="col-md-9 col-md-offset-2">
		<div class="tab-content">
			<div role="tabpanel" class="tab-pane fade" id="hospital-consumption" aria-labelledBy="consumption-tab">
	        	<ol class="breadcrumb">
				  <li><a>主页</a></li>
				  <li class="active"><a>医疗消费管理</a></li>
				</ol>
	        	<table style="margin-top:10px" class="table table-hover" id="consumptionTable">
					<thead>
						<tr>
							<th>消费编号</th>
							<th>医疗机构编号</th>
							<th>住院日期</th>
							<th>出院日期</th>
							<th>疾病</th>
							<th>花费</th>
							<th>操作</th>
					</thead>
					<tbody></tbody>
				</table>
	      	</div>
	      	<div role="tabpanel" class="tab-pane fade" id="company-application" aria-labbelledBy="application-tab">
	      		<ol class="breadcrumb">
				  <li><a>主页</a></li>
				  <li><a>医疗报销管理</a></li>
				</ol>
	      		<table style="margin-top:10px" class="table table-hover" id="applicationTable">
					<thead>
						<tr>
							<th>报销编号</th>
							<th>消费编号</th>
							<th>医疗中心编号</th>
							<th>报销状态</th>
							<th>操作</th>
					</thead>
					<tbody></tbody>
				</table>
	      	</div>
	      	<div role="tabpanel" class="tab-pane fade" id="infoCheck" aria-labelledBy="check-tab">
	        	<ol class="breadcrumb">
				  <li><a>主页</a></li>
				  <li><a>医保账户管理</a></li>
				  <li class="active">账户信息查看</li>
				</ol>
				 <input id="u_flag" name="u_flag" type="text" class="form-control" value=${sessionScope.user.flag} style="display:none">
	        	<div class="form-horizontal" style="margin-top:20px">
			      <div class="form-group">
				    <label class="col-sm-2 control-label">用户编号</label>
				    <div class="col-sm-5">
				      <input type="text" class="form-control" id="uId" value=${sessionScope.user.u_id} readOnly="true" disabled="true">
				    </div>
				  </div>
				  <div class="form-group">
				    <label class="col-sm-2 control-label">姓名</label>
				    <div class="col-sm-5">
				      <input type="text" class="form-control"  value=${sessionScope.user.u_name} readOnly="true" disabled="true">
				    </div>
				  </div>
				  <div class="form-group">
				    <label class="col-sm-2 control-label">年龄</label>
				    <div class="col-sm-5">
				      <input type="text" class="form-control" value=${sessionScope.user.u_age} readOnly="true" disabled="true">
				    </div>
				  </div>
				  <div class="form-group">
				    <label class="col-sm-2 control-label">医保状态</label>
				    <div class="col-sm-5">
				      <p id="u_flag_p"></p>
				    </div>
				  </div>
				  <div class="form-group">
				    <label class="col-sm-2 control-label">参与医保</label>
				    <div class="col-sm-5">
				      <table class="table table-hover" id="accountTable">
				      	<thead>
				      		<tr>
				      			<th>医保中心编号</th>
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
				  <li><a>医保账户管理</a></li>
				  <li class="active">医保账户申请</li>
				</ol>
	        	<div class="form-horizontal" style="margin-top:20px">
			      <div class="form-group">
				    <label class="col-sm-2 control-label">用户编号</label>
				    <div class="col-sm-5">
				      <input type="text" class="form-control" value=${sessionScope.user.u_id} readOnly="true" disabled="true">
				    </div>
				  </div>
				  <div class="form-group">
				    <label class="col-sm-2 control-label">姓名</label>
				    <div class="col-sm-5">
				      <input type="text" class="form-control"  value=${sessionScope.user.u_name} readOnly="true" disabled="true">
				    </div>
				  </div>
				  <div class="form-group">
				    <label class="col-sm-2 control-label">年龄</label>
				    <div class="col-sm-5">
				      <input type="text" class="form-control" value=${sessionScope.user.u_age} readOnly="true" disabled="true">
				    </div>
				  </div>
				  <div class="form-group">
				    <div class="col-sm-5 col-sm-offset-2">
				      <button class="btn btn-success" id="userApplyBtn">申请</button>
				    </div>
				  </div>
				</div>
	      	</div>
	      	
	      	<!-- 申请报销modal -->
	      	<div class="modal fade" id="applicationModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
			  <div class="modal-dialog" role="document">
			    <div class="modal-content">
			      <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			        <h4 class="modal-title" id="myModalLabel">申请报销</h4>
			      </div>
			      <div class="modal-body">
					<div class="form-horizontal">
				      <div class="form-group">
					    <label class="col-sm-2 control-label">消费编号</label>
					    <div class="col-sm-5">
					      <input type="text" class="form-control" id="modal_con_id" name="modal_con_id" readOnly="true" disabled="true">
					    </div>
					  </div>
					  <div class="form-group">
					    <label class="col-sm-2 control-label">用户编号</label>
					    <div class="col-sm-5">
					      <input type="text" class="form-control"  id="modal_u_id" name="modal_u_id" value=${sessionScope.user.u_id} readOnly="true" disabled="true">
					    </div>
					  </div>
					  <div class="form-group">
					    <label class="col-sm-2 control-label">医保中心编号</label>
					    <div class="col-sm-5">
					      <select class="form-control" id="modal_c_id" name="modal_c_id"></select>
					    </div>
					  </div>
					</div>
			      </div>
			      <div class="modal-footer">
			        <button class="btn btn-default" data-dismiss="modal">关闭</button>
			        <button class="btn btn-primary" onclick="addApplication()">提交</button>
			      </div>
			    </div>
			  </div>
			</div>
			<!-- 申请报销modal -->
			
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
				      	<label class="col-sm-2 control-label">用户编号</label>
					    <div class="col-sm-3">
					      <p class="form-control"  id="detailModal_u_id">${sessionScope.user.u_id}</p>
					    </div>
					    <label class="col-sm-2 control-label">用户姓名</label>
					    <div class="col-sm-3">
					      <p class="form-control" id="detailModal_u_name">${sessionScope.user.u_name}</p>
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
					      <p class="form-control" id="detailModal_c_id"></p>
					    </div>
					    <label class="col-sm-2 control-label">医保中心名称</label>
					    <div class="col-sm-3">
					      <p class="form-control" id="detailModal_c_name"></p>
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
		$('#userApplyBtn').click(function(){
			var u_id = $('#uId').val();
			$.ajax({
				url: 'modifyUser.action',
				type: "POST",
				dataType: 'json',
				data: {
					u_id: u_id,
					flag: 0
				},
				success: function(data){
					alert(data.result);
				},
				error: function(data){
					alert("error");
				}
			});
			
		});
		var consumptionTable;
		var applicationTable;
		var accountTable;
    	$(document).ready(function(){
			consumptionTable = initConsumptionTable();
			applicationTable = initApplicationTable();
			accountTable = initAccountTable();
			var flag = $('#u_flag').val();
			console.log(flag);
			if(flag == 1){
				$('#modify-tab').css('display','none');
				$('#u_flag_p').attr('class','btn btn-success');
				$('#u_flag_p').text("已参保");
			}else if(flag == 2){
				$('#modify-tab').css('display','block');
				$('#u_flag_p').attr('class','btn btn-danger');
				$('#u_flag_p').text("未参保");
			}else if(flag == 0){
				$('#modify-tab').css('display','none');
				$('#u_flag_p').attr('class','btn btn-warning');
				$('#u_flag_p').text("参保申请审核中");
			}else{
				
			}
			
		});
    	
		function initConsumptionTable(){
			var u_id = $('#uId').val();
			//console.log('initConsumptionTable');
			//console.log(u_id);
			var table = $('#consumptionTable').dataTable({
 				"sAjaxSource": "findConsumption.action?flag=1&u_id="+u_id,
 				"bDestroy": true,
 				"bRetrieve": true,
 				"bProcessing": true,
 				"bJQuery": true,
 				"sAjaxDataProp":"aaData", 
 				"bLengthChange": false,
 				"aLengthMenu": [10],
 				"aoColumns":[
					{"mDataProp": "con_id"},         
 				 	{"mDataProp": "h_id"},
 				 	{"mDataProp": "begin"},
 				 	{"mDataProp": "end"},
 				 	{"mDataProp": "disease"},
 				 	{"mDataProp": "expense"},
 				 	{"mDataProp": "con_id",
 				 		"fnCreatedCell": function(nTd,sData,oData,iRow,iCol){
 		                		$(nTd).html("<button class='btn btn-info' onclick=showApplicationModal("
 		                				+ oData.con_id + ")>申请报销</button>");
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
    	
		function showApplicationModal(con_id){
			var u_id = $("#uId").val();
			$('#applicationModal').modal();
			$('#applicationModal').on('shown.bs.modal',function(e){
				$('#modal_con_id').val(con_id);
				var url = 'findAccount.action';
				$.ajax({
					type: "POST",
					url: url,
					data:{
						flag: 0,
						u_id: u_id
					},
					dataType: "json",
					success: function(data){
						//console.log("length:"+data.accountList.length);
						$("#modal_c_id").html("");
						$.each(data.accountList,function(i,account){
							//console.log(company.c_id);
							$("#modal_c_id").append("<option>"+account.c_id+"</option");
						});
						
					},
					error: function(){
						alert("error");
					}
				});
			});
		}
		
		function addApplication(){
			var u_id = $("#uId").val();
			var c_id = $("#modal_c_id").find("option:selected").text();
			if(c_id == null || c_id ==""){
				alert("您没有参加任何医保中心保险，无法申请报销！");
				$("#applicationModal").modal('hide');
				return;
			}
			var con_id = $("#modal_con_id").val();
			var status = 0;
			var url = "addApplication.action";
			var params={
				u_id: u_id,
				c_id: c_id,
				con_id: con_id,
				status: status
			}
			$.ajax({
				type: "POST",
				url: url,
				data: params,
				dataType: "json",
				success: function(data){
					//console.log(data.result);
					alert(data.result);
					$("#applicationModal").modal('hide');
				},
				error: function(){
					alert("error");
				}
			});
		}
		
		function initApplicationTable(){
			var u_id = $('#uId').val();
			//console.log('initApplicationTable');
			//console.log(u_id);
			var table = $('#applicationTable').dataTable({
 				"sAjaxSource": "findApplication.action?flag=0&u_id="+u_id,
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
 				 	{"mDataProp": "c_id"},
 				 	{"mDataProp": "status",
 				 		"fnCreatedCell": function(nTd,sData,oData,iRow,iCol){
		                		if(oData.status == 0){
		                			$(nTd).html("<button class='btn btn-warning'><span class='glyphicon glyphicon-info-sign' aria-hidden='true'></span>未知</button>")
		                		}else if(oData.status == 1){
		                			$(nTd).html("<button class='btn btn-success'><span class='glyphicon glyphicon-ok-sign' aria-hidden='true'></span>通过</button>");
		                		}else if(oData.status == 2){
		                			$(nTd).html("<button class='btn btn-danger'><span class='glyphicon glyphicon-remove-sign' aria-hidden='true'></span>拒绝</button>");
		                		}else{
		                			$(nTd).html("<button class='btn btn-default'><span class='glyphicon glyphicon-question-sign' aria-hidden='true'></span>未知</button>");
		                		}
		                }	
 				 	},
 				 	{"mDataProp": "ap_id",
 				 		"fnCreatedCell": function(nTd,sData,oData,iRow,iCol){
 		                		$(nTd).html("<button class='btn btn-info' onclick=showApplicationDetailModal("
 		                				+ oData.ap_id + ")>查看</button>");
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
 						$("#detailModal_c_id").text(data.company.c_id);
 						$("#detailModal_c_name").text(data.company.c_name);
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
			var u_id = $('#uId').val();
			//console.log('initApplicationTable');
			//console.log(u_id);
			var table = $('#accountTable').dataTable({
 				"sAjaxSource": "findAccount.action?flag=0&u_id="+u_id,
 				"bDestroy": true,
 				"bRetrieve": true,
 				"bProcessing": true,
 				"bJQuery": true,
 				"sDom": 'rtp',
 				"sAjaxDataProp":"accountList", 
 				"aoColumns":[
					{"mDataProp": "c_id"},         
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
	</script>
</body>
</html>