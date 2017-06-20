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
					<span class="divider">/</span> 成绩管理
				</ul>

				<div class="title_right">
					<span class="pull-right margin-bottom-5"><a
						class="btn btn-info btn-small" id="modal-9735581"
						href="<%=path%>/report/reportadd.jsp" role="button"><i
							class="icon-plus icon-white"></i> 添加成绩</a>
					</span> <strong>成绩管理</strong>
				</div>
				<div style="width: 900px; margin: auto">
					<table class="table table-bordered table-hover table-striped">
						<tbody>
							<tr align="center">
								<td><strong>ID</strong></td>
								<!-- <td><strong>姓名</strong></td> -->
								<td><strong>课程名称</strong></td>
								<td><strong>成绩</strong></td>
								<td><strong>操作</strong></td>
							</tr>
							<c:forEach items="${list}" var="report">
								<tr align="center">
									<td>${report.id}</td>
									<%-- <td>${report.uname}</td> --%>
									<td>${report.course}</td>
									<td>${report.price}</td>
									<td nowrap="nowrap"><a
										href="<%=path%>/toupdatereport?id=${report.id}">编辑</a>&nbsp;|&nbsp;<a
										href="<%=path%>/report_deleteprice?id=${report.id}">删除</a></td>
								</tr>
							</c:forEach>
							<%-- <c:forEach items="${list}" var="report">
								<tr align="center">
									<td>${report[0]}</td>
									<td>${report[1]}</td>
									<td>${report[2]}</td>
									<td>${report[3]}</td>
									<td nowrap="nowrap"><a
										href="<%=path%>/toupdatereport?id=${report[0]}">编辑</a>&nbsp;|&nbsp;<a
										href="<%=path%>/report_deleteprice?id=${report[0]}">删除</a></td>
								</tr>
							</c:forEach> --%>
							
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
	var action = "<%=path%>/report/list";
		document.forms[0].action = action;
		document.forms[0].submit();
	}
</script>