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
					<span class="divider">/</span> 管理员管理
				</ul>

				<div class="title_right">
					<span class="pull-right margin-bottom-5"><a
						class="btn btn-info btn-small" id="modal-9735581"
						href="<%=path%>/user/useradd.jsp" role="button"><i
							class="icon-plus icon-white"></i> 添加管理员</a>
					</span> <strong>管理员管理</strong>
				</div>
				<div style="width: 900px; margin: auto">
					<form method="post">
						<table class="table table-bordered">
							<tr>
								<td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">用户名：</td>
								<td width="23%"><input type="text" name="username" /></td>
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
								<td><strong>用户名</strong></td>
								<td><strong>密码</strong></td>
								<td><strong>操作</strong></td>
							</tr>
							<c:forEach items="${userList}" var="user">
								<tr align="center">
									<td>${user.id}</td>
									<td>${user.username}</td>
									<td>${user.pwd}</td>
									<td nowrap="nowrap"><a
										href="<%=path%>/user/toupdateuser?id=${user.id}">编辑</a>&nbsp;|&nbsp;<a
										href="<%=path%>/user/deleteuser?id=${user.id}">删除</a></td>
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
	var action = "<%=path%>/user/list";
		document.forms[0].action = action;
		document.forms[0].submit();
	}
</script>