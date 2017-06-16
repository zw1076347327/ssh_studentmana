<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/header.jsp"%>
<base href="<%=basePath%>">
</head>

<body>
	<!-- 顶部 -->
	<%@include file="/common/top.jsp"%>
	<!-- 顶部 -->

	<div id="middle">
		<!-- 菜单 -->
		<%@include file="/common/menu.jsp"%>
		<!-- 菜单  -->

		<div class="right" id="mainFrame">

			<div class="right_cont">
				<ul class="breadcrumb">
					当前位置：<a href="<%=path%>/index.jsp">首页</a>
				</ul>

				<div class="title_right">
					<strong>运行状态</strong>
				</div>
				<div style="width: 900px; margin: auto;">
					<table class="table table-bordered">
						<tr>
							<td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">操作系统版本：</td>
							<td width="23%"><%=System.getProperty("os.name") %>&nbsp;&nbsp;<%=System.getProperty("os.version") %></td>

						</tr>
						<tr>
							<td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">操作系统类型：</td>
							<td width="23%"><%=System.getProperty("os.arch") %></td>

						</tr>
						<tr>
							<td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">JDK版本：</td>
							<td width="23%"><%=System.getProperty("java.version") %></td>

						</tr>
						<tr>
							<td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">作者：</td>
							<td width="23%"><a href="http://www.biyeseng.cn" target="_blank"><font color="blue">毕业就找毕业僧(biyeseng.cn)</font></a></td>

						</tr>
					</table>



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
