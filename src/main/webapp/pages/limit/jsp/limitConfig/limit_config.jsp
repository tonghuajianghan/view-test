<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>额度配置</title>

<link href="/view-test/js/bootstrap3/css/bootstrap.min.css" rel="stylesheet">
<link href="/view-test/css/base.css" rel="stylesheet">
<script src="/view-test/js/jquery-3.1.1.min.js"></script>
<script src="/view-test/js/bootstrap3/js/bootstrap.min.js"></script> 

</head>
<body style="margin:50px;">
	<!-- header -->
	<div class="page-header">
		<h3><strong>额度配置</strong></h3><br/>
	</div>
	<!-- search -->
	<div>
		<form id="defaultForm" class="form-horizontal" role="form">
			<div class="form-group">
				<label class="control-label col-sm-1" for="limitName">额度编码：</label>
				<div class="col-sm-2">
					<input type="text" class="form-control" id="limitCode" placeholder="额度编码">
				</div>
			
				<label class="control-label col-sm-1" for="limitGroup">额度分组：</label>
				<div class="col-sm-2">
					<select class="form-control" id="limitGroup" >
					  <option>请选择</option>
					  <option>话费充值</option>
					  <option>信用卡还款</option>
					  <option>43号文</option>
					  <option>商户收款</option>
					</select>
				</div>
				
				<label class="control-label col-sm-1" for="limitGroup">当前状态：</label>
				<div class="col-sm-2">
					<select class="form-control" id="status" >
					  <option>生效</option>
					  <option>失效</option>
					</select>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-1" for="limitName">额度名称：</label>
				<div class="col-sm-2">
					<input type="text" class="form-control" id="limitName" placeholder="支持模糊查询">
				</div>
				<label class="control-label col-sm-1" for="limitName">操作人：</label>
				<div class="col-sm-2">
					<input type="text" class="form-control" id="limitCode" placeholder="工号">
				</div>
			</div>
			<div class="form-group">
				<div align="center">
					<button type="button" class="btn btn-primary">新增</button>
					&nbsp;&nbsp;
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
					<td>额度编码</td>
					<td>额度名称</td>
					<td>额度分组</td>
					<td>额度主体</td>
					<td>关联额度集</td>
					<td>当前状态</td>
					<td>操作人</td>
					<td>操作时间</td>
					<td>操作</td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>1</td>
					<td>L0001</td>
					<td>话费充值单月累计支付金额</td>
					<td>话费充值</td>
					<td>户头号</td>
					<td>M0001-话费充值</td>
					<td>生效</td>
					<td>16110997</td>
					<td>2017-02-01 10:10:12</td>
					<td>
						<a href="">编辑</a>
						<a href="" data-toggle="modal" class="invalid">失效 </a>
					</td>
				</tr>
				<tr>
					<td>2</td>
					<td>L0002</td>
					<td>话费充值单月累计支付金额</td>
					<td>话费充值</td>
					<td>户头号</td>
					<td>M0001-话费充值</td>
					<td>生效</td>
					<td>16110997</td>
					<td>2017-02-01 10:10:12</td>
					<td>
						<a href="">编辑</a>
						<a href="" data-toggle="modal" class="invalid">失效 </a>
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
	 
	 <!-- 失效 -->
	 <div id="invalid" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="invalid">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
			  <div class="modal-header">
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
		        <h4 class="modal-title">额度失效</h4>
		      </div>
		      <div class="modal-body">
		        <p>该额度存在关联额度集，不能失效。</p>
		        <br/>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-default" data-dismiss="modal">确认</button>
		      </div>
	    </div>
	   </div>
	 </div>
</body>
<script type="text/javascript">
$(document).ready(function() {
	$(".invalid").click(function(){
		//失效
		$('#invalid').modal();
	});
});
</script>
</html>