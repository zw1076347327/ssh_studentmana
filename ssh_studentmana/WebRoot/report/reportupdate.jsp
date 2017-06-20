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
					<strong>成绩修改</strong>
				</div>
				<div style="width: 900px; margin: auto">
					<form method="post">
						<table class="table table-bordered">

							<tr>
								<!-- <td width="40%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">姓名：</td> -->
								<td width="60%">
									<input type="hidden" name="id" id="id" value="${report.id}"/>
									<%-- <input type="text" name="uname"	id="uname" value="${report.uname}" class="span1-10"  readonly="readonly" /><font color="red">*</font> --%>
								</td>
							</tr>
							<tr>
								<td width="40%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">课程名称：</td>
								<td width="60%"><input type="text" name="course" id="course" value="${report.course}" 
								class="span1-10" /><font color="red">*</font>						
								</td>
							</tr>
							<tr>
								<td width="40%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">成绩：</td>
								<td width="60%"><input type="text" name="price" id="price"
									value="${report.price}" class="span1-10" /><font color="red">*</font>
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
	if ($("#uname").val() == "") {
		alert("姓名不能为空！");
		return;
	}
	if ($("#course").val() == "") {
		alert("课程名称不能为空！");
		return;
	}
	if ($("#price").val() == "") {
		alert("成绩不能为空！");
		return;
	}
	document.forms[0].action = "update_report";
		document.forms[0].submit();

	}
</script>