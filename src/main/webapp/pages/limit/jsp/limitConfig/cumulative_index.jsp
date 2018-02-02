<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>累计指标</title>

<link href="/view-test/js/bootstrap3/css/bootstrap.min.css" rel="stylesheet">
<link href="/view-test/css/base.css" rel="stylesheet">
<script src="/view-test/js/jquery-3.1.1.min.js"></script>
<script src="/view-test/js/bootstrap3/js/bootstrap.min.js"></script> 

</head>
<body style="margin:50px;">
	<!-- header -->
	<div class="page-header">
		<h3><strong>累计指标</strong></h3><br/>
	</div>
	<!-- search -->
	<div>
		<form class="form-inline">
			<div class="form-group">
				<label class="control-label" for="limitGroup">指标编码：</label>
				<input type="text" class="form-control" id="limitName" placeholder="">
				<span>&nbsp;&nbsp;</span>
				<label class="control-label" for="limitName">指标名称：</label>
				<input type="text" class="form-control" id="limitName" placeholder="支持模糊查询"><span>&nbsp;&nbsp;</span>
				<input type="submit" class="btn btn-primary" id="submit" value="查询">
			</div>
		</form>	
	</div>
	<!-- table -->
	<br/>
	<div>
		<table class="table table-bordered table-hover">
			<thead>
				<tr class="">
					<td>选择</td>
					<td>指标编码</td>
					<td>指标名称</td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><input type="checkbox"></td>
					<td>hf_1d</td>
					<td>话费充值单日累计金额</td>
				</tr>
				<tr>
					<td><input type="checkbox"></td>
					<td>hf_1d</td>
					<td>话费充值单日累计金额</td>
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
	<div align="center">
		<button class="btn btn-primary">选择</button>
		<button class="btn btn-default">取消</button>
	</div>
</body>
</html>