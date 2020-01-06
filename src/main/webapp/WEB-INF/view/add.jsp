<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<!-- 引入 css -->
<link rel="stylesheet" type="text/css" 
href="${pageContext.request.contextPath}/resource/bootstrap.css">
<!-- 引入js -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resource/jquery-3.2.1.js"></script>
</head>
<body>
<h1>审核记录</h1>
<hr>
	<form action="add.jsp" method="post">
		关键字：<input type="text" name="gjz">&nbsp;&nbsp;&nbsp;&nbsp;关键字：<input type="text" name="ms">
		<br><br>
		编号：<input type="text" name="id">&nbsp;&nbsp;&nbsp;&nbsp;公司名称：<input type="text" name="name">
		<br><br>
		主营产品：<input type="text" name="cp">&nbsp;&nbsp;&nbsp;&nbsp;地址：<input type="text" name="adres">
		<br><br>
		注册资本：<input type="text" name="zb">&nbsp;&nbsp;&nbsp;&nbsp;成立时间：<input type="date" name="data">
		<br><br>
		年检日期：<input type="text" name="tima">&nbsp;&nbsp;&nbsp;&nbsp;年检装态：<input type="text" name="status">
		<br><br>
		备注：<input type="text" name="bz">
		<br><br>
	</form>
</body>
</html>