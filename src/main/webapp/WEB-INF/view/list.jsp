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

	<form action="list" method="post">
	编号：<input type="text"  name="id" value="${good.id}">
	公司名称：<input type="text"  name="name" value="${good.name}">
	公司产品：<input type="text"  name="cp" value="${good.cp}">
	资本：<input type="text" name="p1" value="${good.p1}">----<input type="text" name="p2" value="${good.p2}">
	
	<br><br>
	 成立时间：<input type="date" name="b1" value="${good.b1}">----<input type="date" name="b2" value="${good.b2}">
	年检日期：<input type="date" name="c1" value="${good.c1}">----<input type="date" name="c2" value="${good.c2}"> 
	<input type="submit" value="查询">
	
		<table border="1">
			<tr>
				<td>编号</td>
				<td>关键字</td>
				<td>描述</td>
				<td>公司名称</td>
				<td>主营产业</td>
				<td>地址</td>
				<td>注册资本</td>
				<td>成立时间</td>
				<td>年检日期</td>
				<td>年检状态</td>
				<td>备注</td>
				
				<td>操作</td>
			</tr>
			<c:forEach items="${pg.list}" var="li">
				<tr>
					<td>${li.id}</td>
					<td>${li.gjz}</td>
					<td>${li.ms}</td>
					<td>${li.name}</td>
					<td>${li.cp}</td>
					<td>${li.adres}</td>
					<td>${li.many}</td>
					<td>${li.data}</td>
					<td>${li.tima}</td>
					<td>${li.status}</td>
					<td>${li.bz}</td>
					<td>
						<a href="/add">审核</a>
					</td>
				</tr>
			</c:forEach>
			<tr>
				<td colspan="10">
					<button name="pageNum" value="1">首页</button>
					<button name="pageNum" value="${pg.prePage==0?1:pg.prePage }">上一页</button>
					<button name="pageNum" value="${pg.nextPage ==0?pg.pages:pg.nextPage}">下一页</button>
					<button name="pageNum" value="${pg.pages}">尾页</button>
					当前页/总页数${pg.pageNum}/${pg.total}				
					
				</td>
			</tr>
		</table>
	</form>
</body>
</html>