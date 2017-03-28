<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>额度集配置添加，修改，详情</title>

<link href="/view-test/js/bootstrap3/css/bootstrap.min.css" rel="stylesheet">
<link href="/view-test/css/base.css" rel="stylesheet">
<script src="/view-test/js/jquery-3.1.1.min.js"></script>
<script src="/view-test/js/bootstrap3/js/bootstrap.min.js"></script> 

<link href="/view-test/js/bootstrapvalidator/dist/css/bootstrapValidator.min.css" rel="stylesheet">
<script src="/view-test/js/bootstrapvalidator/dist/js/bootstrapValidator.min.js"></script> 
<script src="/view-test/js/bootstrapvalidator/dist/js/language/zh_CN.js"></script> 

</head>
<body style="margin:50px;">
	<!-- header -->
	<div class="page-header">
		<h3><strong>额度配置新增</strong></h3><br/>
	</div>
	<!-- form add -->
	<div class="div-center">
		<form id="defaultForm" class="form-horizontal" role="form">
			<div class="form-group">
				<label class="control-label col-sm-2" for="limitCode">额度集编码：</label>
				<div class="col-sm-2">
					<input type="text" class="form-control disabled" name="limitCode" id="limitCode" >
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="limitName">额度集名称：</label>
				<div class="col-sm-2">
					<input type="text" class="form-control disabled" name="limitName" id="limitName">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="main">当前状态：</label>
				<div class="col-sm-2">
					<select class="form-control" id="main" >
					  <option>开启</option>
					  <option>关闭</option>
					</select>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="discrption">备注：</label>
				<div class="col-sm-2">
					<textarea class="form-control" id="discrption" placeholder="备注" cols="5" rows="5">
						
					</textarea>
				</div>
				
			</div><br/>
			<div class="form-group">
				<div class="">
					<input type="submit" class="btn btn-primary" value="提交"/>
					<input type="button" class="btn btn-default" id="resetBtn" value="返回"/>
				</div>
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
	                   message: '额度集编码不能为空'
	               }
	           }
	        },
            limitName: {
                validators: {
                    notEmpty: {
                        message: '额度集名称不能为空'
                    }
                }
            },
        }
    });
	//重置
    $('#resetBtn').click(function() {
        $('#defaultForm').data('bootstrapValidator').resetForm(true);
    });
});
</script>
</html>