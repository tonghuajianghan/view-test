<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>额度编辑</title>

<link href="/view-test/js/bootstrap3/css/bootstrap.min.css" rel="stylesheet">
<link href="/view-test/css/base.css" rel="stylesheet">
<script src="/view-test/js/jquery-3.1.1.min.js"></script>
<script src="/view-test/js/bootstrap3/js/bootstrap.min.js"></script> 
<script src="/view-test/js/limit/domHandle.js"></script> 

<link href="/view-test/js/bootstrapvalidator/dist/css/bootstrapValidator.min.css" rel="stylesheet">
<script src="/view-test/js/bootstrapvalidator/dist/js/bootstrapValidator.min.js"></script> 
<script src="/view-test/js/bootstrapvalidator/dist/js/language/zh_CN.js"></script> 

</head>
<body style="margin:50px;">
	<!-- header -->
	<div class="page-header">
		<h3><strong>额度编辑</strong></h3><br/>
	</div>
	<!-- form add -->
	<div>
		<form id="defaultForm" class="form-horizontal" role="form">
			<div class="form-group">
				<label class="control-label col-sm-4 required" for="limitCode">额度编号：</label>
				<div class="col-sm-2">
					<input type="text" class="form-control disabled" name="limitCode" id="limitCode" value="L0001">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-4" for="limitCode">业务类型：</label>
				<div class="col-sm-2">
					<select class="form-control" id="main" >
					  <option>请选择</option>
					  <option>1</option>
					</select>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-4 required" for="limitGroup">额度分组：</label>
				<div class="col-sm-2">
					<select class="form-control" id="limitGroup" >
					  <option>请选择</option>
					  <option>话费充值</option>
					  <option>信用卡还款</option>
					  <option>43号文</option>
					  <option>商户收款</option>
					</select>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-4 required" for="main">主体：</label>
				<div class="col-sm-2">
					<select class="form-control" id="main" >
					  <option>户头号</option>
					  <option>商户号</option>
					  <option>身份证号</option>
					  <option>银行卡号</option>
					  <option>手机号</option>
					</select>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-4" for="limitName">限额/限次：</label>
				<div class="col-sm-2">
					<select class="form-control" id="main" >
					  <option>限额</option>
					  <option>限次</option>
					</select>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-4 required" for="money">总额度(元/次)：</label>
				<div class="col-sm-2">
					<input type="text" class="form-control" id="money" name="money" placeholder="总金额">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-4 required" for="money">累计指标：</label>
				<div class="col-sm-2">
					<button class="btn btn-primary">hd_1D</button>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-4 required" for="status"">状态：</label>
				<div class="col-sm-2">
					<select class="form-control" id="status" >
					  <option>生效</option>
					  <option>失效</option>
					</select>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-4 required" for="money">额度名称：</label>
				<div class="col-sm-3">
					<input type="text" class="form-control" id="limitName" name="limitName" placeholder="额度名称">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-4" for="money">额度描述：</label>
				<div class="col-sm-4">
					<textarea class="form-control" rows="3" cols="5"></textarea>
				</div>
			</div>
			<!-- 维度 -->
			<div class="form-group">
				<label class="control-label col-sm-4" for="money"></label>
				<div class="col-sm-6">
					<div class="panel panel-default">
					  <div class="panel-heading">
					 		<button class="btn btn-primary btn-sm">维度选择</button>   
					  </div>
					  <div class="panel-body">
					    <button class="btn btn-default">
					    	<span class="glyphicon-font-base">时间维度-月</span>
					    	<span class="glyphicon glyphicon-remove"></span>
					    </button>
					    <button class="btn btn-default">
					    	<span class="glyphicon-font-base">43号文用户等级-1类</span>
					    	<span class="glyphicon glyphicon-remove"></span>
					    </button>
					    
					  </div>
					</div>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-6">
				</div>
				<input type="submit" class="btn btn-primary" value="提交"/>
				<input type="button" class="btn btn-default" id="resetBtn" value="清空"/>
			
			</div>
		</form>	
	</div>
</body>
<script type="text/javascript">
$(document).ready(function() {
    $('#defaultForm').bootstrapValidator({
        message: 'This value is not valid',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
        	limitCode: {
	           validators: {
	               notEmpty: {
	                   message: '额度编码不能为空'
	               }
	           }
	        },
            limitName: {
                validators: {
                    notEmpty: {
                        message: '额度名称不能为空'
                    }
                }
            },
	        money: {
                validators: {
                    notEmpty: {
                        message: '总金额不能为空'
                    },
		            integer: {
		                message: '总金额必须为数字'
		            }
                }
            }
        }
    });
	//重置
    $('#resetBtn').click(function() {
        $('#defaultForm').data('bootstrapValidator').resetForm(true);
    });
});
</script>
</html>