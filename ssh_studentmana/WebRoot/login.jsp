<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/header.jsp"%>
<base href="<%=basePath%>">
<script type="text/javascript" src="<%=path %>/js/jquery1.9.0.min.js"></script>
</head>
<body>
	<div class="tit">
		<img src="img/tit.png" alt="" />
	</div>
	<div class="login-wrap">
		<form method="post" >
		
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td height="25" valign="bottom">用户名：</td>
				</tr>
				<tr>
					<td><input type="text" class="login_input login_user"
						name="uname" id="uname" /></td>
				</tr>
				<tr>
					<td height="35" valign="bottom">密 码：</td>
				</tr>
				<tr>
					<td><input type="password" class="login_input login_password"
						name="pwd" id="pwd" /></td>
				</tr>
				<tr>
					<td height="35" valign="bottom">身份：</td>
				</tr>
				<tr>
					<td><select name="role">
							<option value="学生" selected="selected">学生</option>
							<option value="管理员">管理员</option>
					</select></td>
				</tr>
				<tr>
					<td height="60" valign="bottom">
						<input id="uname" type="button" class="btn btn-block btn-login"
						onclick="log()" value="登录">
					</td>
				</tr>

			</table>
		</form>
	</div>
</body>
</html>
<script type="text/javascript">
	function log() {
		if ($("#uname").val() == "") {
			alert("请输入用户名！");
			return 
		}
		if ($("#pwd").val() == "") {
			alert("请输入密码！");
			return
		}
		document.forms[0].action = "login";
		document.forms[0].submit();
	}
</script>
