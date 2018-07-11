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
	<h6 class="align-right"><%=date %></h6>
	<table id="main-tab-Layout" class="width-80per height-650px margin-auto">
		<tr class="height-100px">
			<th colspan="2">GMS</th>
		</tr>
		<tr>
			<td class="width-70per"><img class="width-60per margin-auto" src="img/home/lighthouse.jpg" alt="" /></td>
			<td>
			<a href="jsp/login/user-login-form.jsp"><button id="main-tab-Layout-user-butt">USER</button></a>
			<a href="jsp/login/admin-login.jsp"><button id="main-tab-Layout-admin-butt">ADMIN</button></a>
			</td>
		</tr>
		<tr class="height-100px">
			<td colspan="2">ADDRESS</td>
		</tr>
	</table>
</body>
</html>