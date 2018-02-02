<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>额度超限详情</title>

<link href="/view-test/js/bootstrap3/css/bootstrap.min.css" rel="stylesheet">
<link href="/view-test/css/base.css" rel="stylesheet">
<script src="/view-test/js/jquery-3.1.1.min.js"></script>
<script src="/view-test/js/bootstrap3/js/bootstrap.min.js"></script> 

</head>
<body style="margin:50px;">
	<!-- header -->
	<div class="page-header">
		<h3><strong>额度超限详情</strong>&nbsp;&nbsp;&nbsp;&nbsp;<button class="btn btn-primary">返回</button></h3>
	</div>
	<!-- table -->
	<br/>
	<div class="panel panel-primary">
		<div class="panel-heading">额度集编码：E0306</div>
		<table class="table table-bordered table-hover">
			<thead>
				<tr class="">
					<td>序号</td>
					<td>额度集编码</td>
					<td>额度编码</td>
					<td>总额度（元/次）</td>
					<td>支付金额（元）</td>
					<td>已用额度（元/次）</td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>1</td>
					<td>L0001</td>
					<td>0P_1D</td>
					<td>1000</td>
					<td>400</td>
					<td>700</td>
				</tr>
			</tbody>
		</table>
	</div><br/><br/><br/>
	<div class="panel panel-default">
		<div class="panel-heading">额度累计详情（一个月）：</div>
		<table class="table table-bordered table-hover">
			<thead>
				<tr class="">
					<td>序号</td>
					<td>时间</td>
					<td>交易订单号</td>
					<td>支付金额（元）</td>
					<td>备注</td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>1</td>
					<td>2017-01-13 22：00：00</td>
					<td></td>
					<td>400</td>
					<td>额度变更</td>
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
</html>