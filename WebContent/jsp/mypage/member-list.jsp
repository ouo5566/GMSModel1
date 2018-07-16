<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="domain.*" %>
<%@ page import="service.*" %>
<%
		List<MemberBean> list = new ArrayList<>();
		list = MemberServiceImpl.getInstance().list();
%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>MEMBER_LIST</title>
	<link rel="stylesheet" href="../../css/style.css" />
</head>
<body class="align-center">
	<a href="../../main.jsp"><button class="butt">MAIN</button></a>
	<h3> 전체 회원 수 : <%=list.size() %> 명</h3>
	<table id="main-tab-Layout"  class="margin-auto">
		<tr>
			<th>ID</th>
			<th>PW</th>
			<th>NAME</th>
			<th>SSN</th>
			<th>TEAM</th>
			<th>ROLL</th>
		</tr>
		<%
		for(MemberBean m : list){
			%>
			<tr>
				<td><%=m.getMemberId() %></td>
				<td><%=m.getPassword() %></td>
				<td><%=m.getName() %></td>
				<td><%=m.getSsn() %></td>
				<td><%=m.getTeamId() %></td>
				<td><%=m.getRoll() %></td>
			</tr>
			<%
		}
		%>
	</table>
</body>
</html>