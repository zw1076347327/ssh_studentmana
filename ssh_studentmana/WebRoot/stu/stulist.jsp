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
				
					<table class="table table-bordered table-hover table-striped">
						<tbody>
							<tr align="center">
								<td><strong>ID</strong></td>
								<td><strong>姓名</strong></td>
								<td><strong>性别</strong></td>
								<td><strong>出生日期</strong></td>
								<td><strong>联系方式</strong></td>
								<td><strong>家庭住址</strong></td>
								<td><strong>操作</strong></td>
							</tr>
							<c:forEach items="${pageBean.list}" var="stu">
								<tr align="center">
									<td>${stu.id}</td>
									<td>${stu.uname}</td>
									<td>${stu.sex}</td>
									<td>${stu.birth}</td>
									<td>${stu.tel}</td>
									<td>${stu.address}</td>
									<td nowrap="nowrap">
										<a href="<%=path%>/stu/toupdatestu?id=${stu.id}">编辑</a>&nbsp;|&nbsp;
										<a href="<%=path%>/student_deletestu?id=${stu.id}">删除</a>
									</td>
								</tr>
							</c:forEach>
						
						</tbody>
					</table>
					<ul style="text-align: center">
						<li style="list-style:none">	
						<c:if test="${pageBean.currentPage!=pageBean.totalPage }">
							<a style="float:right" href="stu_list.action?currentPage=${pageBean.currentPage + 1}">下一页</a>
						</c:if>
						&nbsp
						<c:if test="${pageBean.currentPage!=1 }">
							<a style="float:right" href="stu_list.action?currentPage=${pageBean.currentPage - 1}">上一页</a>
						</c:if>
							<p style="float:right">当前第[ ${pageBean.currentPage} ]页，</p>
							<p style="float:right">[ ${pageBean.totalPage} ]页，</p>
							<p style="float:right">共[ ${pageBean.totalCount} ]条记录，</p>
						</li>
					</ul>
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