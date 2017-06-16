<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查询用户列表</title>
</head>
<body>
	<form action="${pageContext.request.contextPath }/user/users">
		查询条件：
		<table style="width=''100%';table-layout: fixed">
			<tr>
				<td><input type="text" value="请输入查询条件"/></td>
				<td><input type="submit" value="查询" /></td>
			</tr>
		</table>
		用户列表：
		<table style="width=''100%'" border='1'>
			<tr>
				<td>用户名称</td>
				<td>用户生日</td>
				<td>用户性别</td>
				<td>用户地址</td>
				<td>操作</td>
			</tr>
			<c:forEach items="${userList }" var="user">
				<tr>
					<td>${user.username }</td>
					<td><fmt:formatDate value="${user.birthday}" pattern="yyyy-MM-dd HH:mm:ss" /></td>
					<td>${user.sex }</td>
					<td>${user.address }</td>
					<td>
						<a href="${pageContext.request.contextPath }/user/editUser/id=${user.id}">修改</a>
						<a href="${pageContext.request.contextPath }/user/deleteUser/id=${user.id}">删除</a>
					</td>
				</tr>
			</c:forEach>
		</table>
	</form>
</body>
</html>