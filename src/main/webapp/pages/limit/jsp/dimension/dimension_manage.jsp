<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>额度管理</title>

<link href="/view-test/js/bootstrap3/css/bootstrap.min.css" rel="stylesheet">
<link href="/view-test/css/base.css" rel="stylesheet">
<script src="/view-test/js/jquery-3.1.1.min.js"></script>
<script src="/view-test/js/bootstrap3/js/bootstrap.min.js"></script> 
</head>
<body style="margin:50px;">
	<!-- header -->
	<div class="page-header">
		<h3><strong>维度管理</strong></h3><br/>
	</div>
	<!-- search -->
	<div>
		<form class="form-inline">
			<div class="form-group">
				<label for="limitGroup">维度分组：</label>
				<select class="form-control" id="limitGroup" >
				  <option>维度分组1</option>
				  <option>维度分组2</option>
				  <option>维度分组3</option>
				  <option>额度分组4</option>
				  <option>额度分组5</option>
				</select>
			</div>
			<div class="form-group">	
				<label for="limitName">维度名称：</label>
				<input type="text" class="form-control" id="limitName" placeholder="维度名称">
			</div>
			<div class="form-group">	
				<label for="limitGroup">状态：</label>
				<select class="form-control" id="limitGroup" >
				  <option>请选择</option>
				  <option>状态2</option>
				  <option>状态3</option>
				  <option>额度分组4</option>
				  <option>额度分组5</option>
				</select>
			</div><br/><br/><br/>
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
					<td>维度名称</td>
					<td>维度分组</td>
					<td>状态</td>
					<td>更新时间</td>
					<td>操作人</td>
					<td>操作</td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>1</td>
					<td>43号文用户等级-1类</td>
					<td>43号文专用</td>
					<td>生效</td>
					<td>2015-12-13</td>
					<td>jh</td>
					<td>
						修改 失效
						<a href="" data-toggle="modal" data-target=".delete"> 删除</a>
					</td>
				</tr>
				<tr>
					<td>2</td>
					<td>43号文用户等级-1类</td>
					<td>43号文专用</td>
					<td>生效</td>
					<td>2015-12-14</td>
					<td>jh</td>
					<td>
						修改 失效
						<a href="" data-toggle="modal" data-target=".delete"> 删除</a>
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
	 
	 <!-- 删除 -->
	 <div class="modal fade delete" tabindex="-1" role="dialog" aria-labelledby="delete">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
			  <div class="modal-header">
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
		        <h4 class="modal-title">删除额度配置</h4>
		      </div>
		      <div class="modal-body">
		        <p>是否删除</p>
		        <br/>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-primary">删除</button>
		        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
		      </div>
	    </div>
	   </div>
	 </div>
</body>
</html>