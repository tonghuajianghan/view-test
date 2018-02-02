<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>额度集卸载</title>

<link href="/view-test/js/bootstrap3/css/bootstrap.min.css" rel="stylesheet">
<link href="/view-test/css/base.css" rel="stylesheet">
<script src="/view-test/js/jquery-3.1.1.min.js"></script>
<script src="/view-test/js/bootstrap3/js/bootstrap.min.js"></script> 
<script src="/view-test/js/limit/domHandle.js"></script> 

</head>
<body style="margin:50px;">
	<!-- header -->
	<div class="page-header">
		<h3><strong>额度集卸载</strong></h3><br/>
	</div>
	<!-- search -->
	<div>
		<form class="form-inline">
			<div class="form-group">
				<label for="limitCode">额度编号：</label>
				<input type="text" class="form-control" id="limitCode" placeholder="额度编号">
			</div>
			<div class="form-group">
				<label class="margin-left-10" for="limitName">额度名称：</label>
				<input type="text" class="form-control" id="limitName" placeholder="额度名称">
			</div>
			<div class="form-group">
				<label class="margin-left-10" for="limitGroup">额度分组：</label>
				<select class="form-control" id="limitGroup" >
				  <option>额度分组1</option>
				  <option>额度分组2</option>
				  <option>额度分组3</option>
				  <option>额度分组4</option>
				  <option>额度分组5</option>
				</select>
			</div><br/><br/><br/>
			<div>
				<input type="button" class="btn btn-primary" id="install" value="加载">
				<input type="submit" class="btn btn-primary" id="submit" value="查询">
				<input type="button" class="btn btn-primary" id="reset" value="返回">
			</div>
		</form>	
	</div>
	<!-- table -->
	<br/>
	<div>
		<table class="table table-bordered table-hover" id="limitCollectionTable">
			<thead>
				<tr class="">
					<td><input type="checkbox" data="limitCollectionTable" class="setAllDataCheckBoxState"></td>
					<td>额度编号</td>
					<td>额度名称</td>
					<td>额度分组</td>
					<td>额度主体</td>
					<td>额度描述</td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><input type="checkbox"></td>
					<td>L0001</td>
					<td>话费充值单月累计支付金额</td>
					<td>个人额度</td>
					<td>账户</td>
					<td>话费充值单月累计支付金额1000</td>
				</tr>
				<tr>
					<td><input type="checkbox"></td>
					<td>L0002</td>
					<td>43号文1类用户限额</td>
					<td>法规额度</td>
					<td>身份证</td>
					<td>43号文1类用户限额限额1000</td>
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
</html>