<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>首页</title>
  </head>
  <body>
  
   <s:form action="login" method="post">
   		<s:textfield name="uname" label="用户名"></s:textfield>
   		<s:password name="pwd" label="密码"></s:password>
   		<s:submit value="登录"></s:submit>
   </s:form>
  </body>
</html>
