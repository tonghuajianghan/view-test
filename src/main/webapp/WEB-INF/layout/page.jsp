<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="t" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path;
%>
<c:set var="ctx" value="<%=basePath%>" />
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'page.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link href="${ctx}/js/bootstrap3/css/bootstrap.css" rel="stylesheet">
<!--[if !IE]> -->
<script src="${ctx}/assets/js/jquery-2.1.4.min.js"></script>
<!-- <![endif]-->

<!--[if IE]>
	<script src="${ctx}/assets/js/jquery-1.11.3.min.js"></script>
<![endif]-->
<script src="${ctx}/js/bootstrap3/js/bootstrap.js"></script>

<link href="${ctx}/js/bootstrapvalidator/dist/css/bootstrapValidator.min.css" rel="stylesheet">
<script src="${ctx}/js/bootstrapvalidator/dist/js/bootstrapValidator.min.js"></script>
<script src="${ctx}/js/bootstrapvalidator/dist/js/language/zh_CN.js"></script>

<!-- bootstrap & fontawesome -->
<link rel="stylesheet" href="${ctx }/assets/font-awesome/4.5.0/css/font-awesome.min.css" />

<!-- text fonts -->
<link rel="stylesheet" href="${ctx }/assets/css/fonts.googleapis.com.css" />

<!-- ace styles -->
<link rel="stylesheet" href="${ctx }/assets/css/ace.min.css" class="ace-main-stylesheet" id="main-ace-style" />

<!--[if lte IE 9]>
	<link rel="stylesheet" href="${ctx }/assets/css/ace-part2.min.css" class="ace-main-stylesheet" />
<![endif]-->
<link rel="stylesheet" href="${ctx }/assets/css/ace-skins.min.css" />
<link rel="stylesheet" href="${ctx }/assets/css/ace-rtl.min.css" />

<!--[if lte IE 9]>
  <link rel="stylesheet" href="${ctx }/assets/css/ace-ie.min.css" />
<![endif]-->

<!-- inline styles related to this page -->

<!-- ace settings handler -->
<script src="${ctx }/assets/js/ace-extra.min.js"></script>

<!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->

<!--[if lte IE 8]>
<script src="${ctx }/assets/js/html5shiv.min.js"></script>
<script src="${ctx }/assets/js/respond.min.js"></script>
<![endif]-->

</head>
<body class="no-skin">
	<t:insertAttribute name="header" />
	<div class="main-container ace-save-state" id="main-container">
		<script type="text/javascript">
			try{ace.settings.loadState('main-container')}catch(e){}
		</script>
		<t:insertAttribute name="menu" />
		<div class="main-content">
				<div class="main-content-inner">
					<t:insertAttribute name="body" />
					<t:insertAttribute name="footer" />
				</div><!-- /.main-content -->
       </div><!-- /.main-container -->
	</div>
	
<!-- basic scripts -->
<script type="text/javascript">
	if('ontouchstart' in document.documentElement) document.write("<script src='${ctx}/assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
</script>
<!-- page specific plugin scripts -->
<!-- ace scripts -->
<script src="${ctx}/assets/js/ace-elements.min.js"></script>
<script src="${ctx}/assets/js/ace.min.js"></script>

<!-- inline scripts related to this page -->
<script type="text/javascript">
	jQuery(function($) {
		$('#loading-btn').on(ace.click_event, function () {
			var btn = $(this);
			btn.button('loading')
			setTimeout(function () {
				btn.button('reset')
			}, 2000)
		});
	
		$('#id-button-borders').attr('checked' , 'checked').on('click', function(){
			$('#default-buttons .btn').toggleClass('no-border');
		});
	})
</script>
</body>
</html>
