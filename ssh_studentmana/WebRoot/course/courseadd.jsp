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
					当前位置：
					<a href="<%=path%>/index.jsp">首页</a>
					<span class="divider">/</span> 课程管理
				</ul>

				<div class="title_right">
					<strong>课程添加</strong>
				</div>
				<div style="width: 900px; margin: auto">
					<form method="post">
						<table class="table table-bordered">
							
							<tr>
								<td width="40%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">课程名：</td>
								<td width="60%"><input type="text" name="name" id="name"
									class="span1-10" /><font color="red">*</font></td>
							</tr>
							<tr>
								<td width="40%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">授课老师：</td>
								<td width="60%"><input type="text" name="teacher" id="teacher"
									class="span1-10" /><font color="red">*</font></td>
							</tr>
							<tr>
								<td width="40%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">课时数：</td>
								<td width="60%"><input type="text" name="period" id="period"
									class="span1-10" /><font color="red">*</font></td>
							</tr>
							
							
						</table>
						<table class="margin-bottom-20 table  no-border">
							<tr>
								<td class="text-center"><input type="button" onclick="save();" value="确定"
									class="btn btn-info " style="width: 80px;" /></td>
							</tr>
						</table>

					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
<script type="text/javascript">
function save() {
	if ($("#name").val() == "") {
		alert("课程名称不能为空！");
		return;
	}
	if ($("#teacher").val() == "") {
		alert("授课老师不能为空！");
		return;
	}
	if ($("#period").val() == "") {
		alert("课时数不能为空！");
		return;
	}
	document.forms[0].action = "<%=path%>/course/addcourse";
	document.forms[0].submit();

}
</script>