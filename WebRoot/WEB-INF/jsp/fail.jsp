<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>操作失败</title>
</head>
<body>
	<div style="float:right;clear:right;">
		<c:if test="${empty USER_CONTEXT.userName}">
		   <a href="<c:url value="/login.jsp"/>">登录</a>&nbsp;&nbsp;
		</c:if>
	</div>
	<br/>
    操作失败!${errorMsg}<br>
    <input type="button"  value="返回" onClick="window.history.go(-1);"/>
</body>
</html>
