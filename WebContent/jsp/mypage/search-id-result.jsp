<%@page import="service.MemberServiceImpl"%>
<%@page import="domain.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String userid = request.getParameter("member-id");
	MemberBean mem = MemberServiceImpl.getInstance().findById(userid);
%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>ID_RESULT</title>
	<link rel="stylesheet" href="../../css/style.css" />
</head>
<body class="align-center">
	<table id="main-tab-Layout"  class="margin-auto">
		<tr>
			<th>ID</th>
			<th>PW</th>
			<th>NAME</th>
			<th>SSN</th>
			<th>TEAM</th>
			<th>ROLL</th>
		</tr>
		<tr>
			<td><%=mem.getMemberId() %></td>
			<td><%=mem.getPassword() %></td>
			<td><%=mem.getName() %></td>
			<td><%=mem.getSsn() %></td>
			<td><%=mem.getTeamId() %></td>
			<td><%=mem.getRoll() %></td>
		</tr>
	</table>
	<br><a href="../../main.jsp"><button class="butt">MAIN</button></a>
</body>
</html>