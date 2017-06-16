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
					<c:if test="${type=='管理员' }">
					<span class="pull-right margin-bottom-5"><a
						class="btn btn-info btn-small" id="modal-9735581"
						href="<%=path%>/course/courseadd.jsp" role="button"><i
							class="icon-plus icon-white"></i> 添加课程</a>
					</span> 
					</c:if>
					<strong>课程管理</strong>
				</div>
				<div style="width: 900px; margin: auto">
					<form method="post">
						<table class="table table-bordered">
							<tr>
								<td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">课程名称：</td>
								<td width="23%"><input type="text" name="name" /></td>
								<td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">授课老师：</td>
								<td width="23%"><input type="text" name="teacher" /></td>
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
								<td><strong>课程名</strong></td>
								<td><strong>授课老师</strong></td>
								<td><strong>课时</strong></td>
								<c:if test="${type=='管理员' }">
								<td><strong>操作</strong></td>
								</c:if>
							</tr>
							<c:forEach items="${courseList}" var="course">
								<tr align="center">
									<td>${course.id}</td>
									<td>${course.name}</td>
									<td>${course.teacher}</td>
									<td>${course.period}</td>
									<c:if test="${type=='管理员' }">
									<td nowrap="nowrap"><a
										href="<%=path%>/course/toupdatecourse?id=${course.id}">编辑</a>&nbsp;|&nbsp;<a
										href="<%=path%>/course/deletecourse?id=${course.id}">删除</a></td>
									</c:if>
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
	var action = "<%=path%>/course/list";
		document.forms[0].action = action;
		document.forms[0].submit();
	}
</script>