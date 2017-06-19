<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/header.jsp"%>
<base href="<%=basePath%>">
</head>

<body>
	
	<%@include file="/common/top.jsp"%>
	<div id="middle">
		<%@include file="/common/menu.jsp"%>
		<div class="right" id="mainFrame">
			<div class="right_cont">
				<ul class="breadcrumb">
					当前位置：<a href="javascript:viod(0)">首页</a>
				</ul>
				<div style="width: 900px; margin: auto;">
				</div>
			</div>
		</div>
	</div>
	<script>
		!function() {
			laydate.skin('molv');
			laydate({
				elem : '#Calendar'
			});
		}();
	</script>




</body>
</html>
