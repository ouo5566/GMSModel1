<!-- 자바 class 영역 바깥 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Date" %>

<%! String date="";%>
<%
	date = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss").format(new Date());
%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>main</title>
	<link rel="stylesheet" href="css/style.css"/>
</head>
<body>
	<table id="main-tab-Layout" class="width-80per height-650px margin-auto">
		<tr class="height-100px">
			<th colspan="2">★  우 윳 빛 깔 최 소 진 ★ </th>
		</tr>
		<tr>
			<td class="width-70per"><img class="width-60per margin-auto" src="img/home/lighthouse.jpg" alt="" /></td>
			<td>
			<a href="jsp/login/user-login-form.jsp"><button class="butt">USER</button></a><br>
			<a href="jsp/login/admin-login.jsp"><button class="butt">ADMIN</button></a><br>
			<a href="jsp/join/join-form.jsp"><button class="butt">JOIN</button></a>
			</td>
		</tr>
		<tr class="height-100px">
			<td colspan="2">ADDRESS</td>
		</tr>
	</table>
<h6 class="align-center"><%=date %></h6>
</body>
</html>