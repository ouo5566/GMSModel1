<%@page import="java.util.*"%>
<%@page import="domain.*"%>
<%@page import="service.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 
	String team = request.getParameter("team-id");
	List<MemberBean> list = MemberServiceImpl.getInstance().findByTeamId(team);
	%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>TEAM_RESULT</title>
	<link rel="stylesheet" href="../../css/style.css" />
</head>
<body class="align-center">
	<h3>TEAM : <%=list.get(0).getTeamId() %></h3>
	<h5>멤버수 : <%=list.size() %> 명</h5>
	<table id="main-tab-Layout"  class="margin-auto">
		<tr>
			<th>ID</th>
			<th>PW</th>
			<th>NAME</th>
			<th>SSN</th>
			<th>TEAM</th>
			<th>ROLL</th>
		</tr>	
	<% for(MemberBean m : list){
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
		} %>
	</table>
	<br><a href="../../main.jsp"><button class="butt">MAIN</button></a>
</body>
</html>