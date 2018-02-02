<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>额度记录查询</title>

<link href="/view-test/js/bootstrap3/css/bootstrap.min.css" rel="stylesheet">
<link href="/view-test/css/base.css" rel="stylesheet">
<script src="/view-test/js/jquery-3.1.1.min.js"></script>
<script src="/view-test/js/bootstrap3/js/bootstrap.min.js"></script> 

<script src="/view-test/js/bootstrap-datetimepicker/js/locales/bootstrap-datetimepicker.zh-CN.js"></script> 
<link href="/view-test/js/bootstrap-datetimepicker/css/bootstrap-datetimepicker.min.css" rel="stylesheet">
<script src="/view-test/js/bootstrap-datetimepicker/js/bootstrap-datetimepicker.min.js"></script> 
<script src="/view-test/js/limit/domHandle.js"></script>

</head>
<body style="margin:50px;">
	<!-- header -->
	<div class="page-header">
		<h3><strong>额度记录查询</strong></h3><br/>
	</div>
	<!-- search -->
	<div>
		<form id="defaultForm" class="form-horizontal" role="form">
			<div class="form-group">
				<label class="control-label col-sm-1" for="limitCode">额度编码：</label>
				<div class="col-sm-2">
					<input type="text" class="form-control disabled" name="limitCode" id="limitCode">
				</div>
				<label class="control-label col-sm-1" for="limitCode" >付款方：</label>
				<div class="col-sm-2">
					<input type="text" class="form-control disabled" name="limitCode" id="limitCode" placeholder="户头号/商户号">
				</div>
				<label class="control-label col-sm-1" for="limitCode">收款方：</label>
				<div class="col-sm-2">
					<input type="text" class="form-control disabled" name="limitCode" id="limitCode" placeholder="户头号/手机号/银行">
				</div>
			</div>
			
			<div class="form-group">
				<label class="control-label col-sm-1" for="limitCode">创建时间：</label>
				<div class="col-sm-2">
					<input type="text" class="form-control disabled startTime" name="limitCode" id="datetimepickerStart">
				</div>
				<span class="col-xs-1 form-control-static"><big>~</big></span>
				<div class="col-sm-2">
					<input type="text" class="form-control disabled endTime" name="limitCode" id="datetimepickerEnd">
				</div>
				<label class="control-label col-sm-1" for="main">限额结果：</label>
				<div class="col-sm-2">
					<select class="form-control" id="limitGroup" >
					  <option>超限</option>
					  <option>额度分组2</option>
					  <option>额度分组3</option>
					  <option>额度分组4</option>
					  <option>额度分组5</option>
					</select>
				</div>
			</div><br/>
			<div class="form-group">
				<div align="center">
					<input type="submit" class="btn btn-primary" id="submit" value="查询">
				</div>
			</div>
		</form>	
	</div>
	<!-- table -->
	<br/>
	<div>
		<table class="table table-bordered table-hover">
			<thead>
				<tr class="">
					<td>序号</td>
					<td>额度集编码</td>
					<td>付款方</td>
					<td>收款方</td>
					<td>金额（元）</td>
					<td>限额结果</td>
					<td>创建时间</td>
					<td>操作</td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>1</td>
					<td>E0306</td>
					<td></td>
					<td></td>
					<td>20.00</td>
					<td>额度超限</td>
					<td>2015-11-12 00:00:00</td>
					<td><a href=""> 额度详情</a></td>
				</tr>
				<tr>
					<td>2</td>
					<td>E0306</td>
					<td></td>
					<td></td>
					<td>20.00</td>
					<td>额度超限</td>
					<td>2015-11-12 00:00:00</td>
					<td><a href=""> 额度详情</a></td>
				</tr>
			</tbody>
		</table>
	</div>
	<!-- pagination -->
	<div class="text-right">
	  	 <ul class="pagination">
		    <li>
		      <a href="#" aria-label="Previous">
		        <span aria-hidden="true">&laquo;</span>
		        <span>上一页</span>
		      </a>
		    </li>
		    <li class="active"><a href="#">1</a></li>
		    <li><a href="#">2</a></li>
		    <li><a href="#">3</a></li>
		    <li><a href="#">4</a></li>
		    <li><a href="#">5</a></li>
		    <li>
		      <a href="#" aria-label="Next">
		        <span>下一页</span>
		        <span aria-hidden="true">&raquo;</span>
		      </a>
		    </li>
		 </ul>	
		 <div class="pagination pagination-bottom">
			<span>共8页，向第</span>
			<input class="pagination-bottom-button"/>
			<span>页</span>
			<button class="pagination-bottom-button">跳转</button>
		 </div>
	 </div>
	 
</body>
<script type="text/javascript">
$(document).ready(function() {
	$('#datetimepickerStart').datetimepicker({
		language:'zh-CN',  
	    autoclose: true,
	    todayBtn: true,
	    format: 'yyyy-mm-dd',
	    minView:'2'
	});
	$('#datetimepickerEnd').datetimepicker({
		language:'zh-CN',  
	    autoclose: true,
	    todayBtn: true,
	    format: 'yyyy-mm-dd',
	    minView:'2'
	});
});
</script>
</html>