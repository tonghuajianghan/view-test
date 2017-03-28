<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>额度集管理</title>

<link href="/view-test/js/bootstrap3/css/bootstrap.min.css" rel="stylesheet">
<link href="/view-test/css/base.css" rel="stylesheet">
<script src="/view-test/js/jquery-3.1.1.min.js"></script>
<script src="/view-test/js/bootstrap3/js/bootstrap.min.js"></script> 
</head>
<body style="margin:50px;">
	<!-- header -->
	<div class="page-header">
		<h3><strong>额度集管理</strong></h3><br/>
	</div>
	<!-- search -->
	<div>
		<form class="form-inline">
			<div class="form-group">
				<label for="limitName">额度集编码：</label>
				<input type="text" class="form-control" id="limitCollectionCode" placeholder="额度集编码">
			</div>
			<div class="form-group">
				<label for="limitName">额度集名称：</label>
				<input type="text" class="form-control" id="limitCollectionName" placeholder="额度集名称">
			</div>
			<div class="form-group">
				<label for="limitGroup">当前状态：</label>
				<select class="form-control" id="status" >
				  <option>开启</option>
				  <option>关闭</option>
				</select>
			</div>
			<br/><br/><br/>
			<div class="form-group">
				<button type="button" class="btn btn-primary">新增</button>
			</div>
			&nbsp;&nbsp;&nbsp;&nbsp;
			<div class="form-group">
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
					<td>序号</td>
					<td>额度集编码</td>
					<td>实物事中</td>
					<td>额度集</td>
					<td>当前状态</td>
					<td>操作人</td>
					<td>操作时间</td>
					<td>详情</td>
					<td>操作</td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>1</td>
					<td>E406_1001</td>
					<td>实物事中</td>
					<td>
						<button class="btn btn-default btn-xs">加载</button>
						<button class="btn btn-default btn-xs" data-toggle="modal" data-target=".uninstall">卸载</button>
					</td>
					<td>开启</td>
					<td>16101001</td>
					<td>2017-02-01 12:12:12</td>
					<td>
						<button class="btn btn-default btn-xs">详情</button>
					</td>
					<td>
						<button class="btn btn-default btn-xs">修改</button>
						<button class="btn btn-default btn-xs">关闭</button>
					</td>
				</tr>
				<tr>
					<td>2</td>
					<td>E406_1001</td>
					<td>实物事中</td>
					<td>
						<button class="btn btn-default btn-xs">加载</button>
						<button class="btn btn-default btn-xs" data-toggle="modal" data-target=".uninstall">卸载</button>
					</td>
					<td>开启</td>
					<td>16101001</td>
					<td>2017-02-01 12:12:12</td>
					<td>
						<button class="btn btn-default btn-xs">详情</button>
					</td>
					<td>
						<button class="btn btn-default btn-xs">修改</button>
						<button class="btn btn-default btn-xs">关闭</button>
					</td>
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
	 
	 <!-- 显示模块 -->
	 
	 <!-- 卸载 -->
	 <div class="modal fade uninstall" tabindex="-1" role="dialog" aria-labelledby="uninstall">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
			  <div class="modal-header">
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
		        <h4 class="modal-title">卸载额度配置</h4>
		      </div>
		      <div class="modal-body">
		        <p>是否卸载</p>
		        <br/>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-primary">卸载</button>
		        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
		      </div>
	    </div>
	   </div>
	 </div>
</body>
</html>