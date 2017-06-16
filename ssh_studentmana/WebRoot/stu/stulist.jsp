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
					<span class="pull-right margin-bottom-5"><a
						class="btn btn-info btn-small" id="modal-9735581"
						href="<%=path%>/stu/stuadd.jsp" role="button"><i
							class="icon-plus icon-white"></i> 添加学生</a>
					</span> <strong>学生管理</strong>
				</div>
				<div style="width: 900px; margin: auto">
					<form method="post">
						<table class="table table-bordered">
							<tr>
								<td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">学号：</td>
								<td width="23%"><input type="text" name="stuno" /></td>
							</tr>
						</table>

						<table class="margin-bottom-20 table  no-border">
							<tr>
								<td class="text-center"><input type="button"
									onclick="query();" value="查询" class="btn btn-info "
									style="width: 80px;" /></td>
							</tr>
						</table>
					</form>
					<table class="table table-bordered table-hover table-striped">
						<tbody>
							<tr align="center">
								<td><strong>ID</strong></td>
								<td><strong>学号</strong></td>
								<td><strong>姓名</strong></td>
								<td><strong>密码</strong></td>
								<td><strong>性别</strong></td>
								<td><strong>年龄</strong></td>
								<td><strong>操作</strong></td>
							</tr>
							<c:forEach items="${stuList}" var="stu">
								<tr align="center">
									<td>${stu.id}</td>
									<td>${stu.stuno}</td>
									<td>${stu.username}</td>
									<td>${stu.pwd}</td>
									<td>${stu.sex}</td>
									<td>${stu.age}</td>
									<td nowrap="nowrap"><a
										href="<%=path%>/stu/toupdatestu?id=${stu.id}">编辑</a>&nbsp;|&nbsp;<a
										href="<%=path%>/stu/deletestu?id=${stu.id}">删除</a></td>
								</tr>
							</c:forEach>

						</tbody>
					</table>


				</div>
			</div>
		</div>
	</div>
</body>
</html>
<script language="JavaScript">	
function query() {		
	var action = "<%=path%>/stu/list";
		document.forms[0].action = action;
		document.forms[0].submit();
	}
</script>