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
					<span class="divider">/</span> 学生管理
				</ul>

				<div class="title_right">
					<strong>学生添加</strong>
				</div>
				<div style="width: 900px; margin: auto">
					<form method="post">
						<table class="table table-bordered">


							<tr>
								<td width="40%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">学号：</td>
								<td width="60%"><input type="hidden" name="id" id="id"
									value="${user.id}" /><input type="text" name="stuno"
									id="stuno" value="${stu.stuno}" class="span1-10" /><font
									color="red">*</font>
								</td>
							</tr>
							<tr>
								<td width="40%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">密码：</td>
								<td width="60%"><input type="text" name="pwd" id="pwd"
									value="${stu.pwd}" class="span1-10" /><font color="red">*</font>
								</td>
							</tr>
							<tr>
								<td width="40%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">姓名：</td>
								<td width="60%"><input type="text" name="username"
									id="username" value="${stu.username}" class="span1-10" /><font
									color="red">*</font>
								</td>
							</tr>
							<tr>
								<td width="40%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">性别：</td>
								<td width="60%"><select name="sex" id="sex"
									class="span1-10"><option value="男">男</option>
										<option value="女">女</option>
								</select> <script>
						$("#sex").val('${stu.sex}');
					</script></td>
							</tr>
							<tr>
								<td width="40%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">年龄：</td>
								<td width="60%"><input type="text" name="age" id="age"
									value="${stu.age}" class="span1-10" /><font color="red">*</font>
								</td>
							</tr>


						</table>

						<table class="margin-bottom-20 table  no-border">
							<tr>
								<td class="text-center"><input type="button"
									onclick="save();" value="确定" class="btn btn-info "
									style="width: 80px;" />
								</td>
							</tr>
						</table>

					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
<script>
function save() {
	if ($("#stuno").val() == "") {
		alert("学号不能为空！");
		return;
	}
	if ($("#username").val() == "") {
		alert("姓名不能为空！");
		return;
	}
	if ($("#pwd").val() == "") {
		alert("密码不能为空！");
		return;
	}
	if ($("#age").val() == "") {
		alert("年龄不能为空！");
		return;
	}
	document.forms[0].action = "<%=path%>/user/updateuser";
	document.forms[0].submit();

}
</script>