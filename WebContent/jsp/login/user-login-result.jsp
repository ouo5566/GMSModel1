<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="service.*" %>
<%@ page import="domain.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- "oracle.jdbc.driver.OracleDriver" -->
<!-- "jdbc:oracle:thin:@localhost:1521:xe" -->
<!-- "ssoso", "sweet93" -->
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>login-result</title>
	<link rel="stylesheet" href="../../css/style.css" />
</head>
<body>
<table id="main-tab-Layout" class="width-80per height-650px margin-auto">
		<tr class="height-100px">
			<th colspan="2">GMS</th>
		</tr>
		<tr>
			<td class="width-70per"><img class="width-60per margin-auto" src="../../img/home/lighthouse.jpg" alt="" /></td>
			<td>
			<a href="../../main.jsp"><button id="main-tab-Layout-main-butt">MAIN</button></a>
			<%
				MemberBean m = new MemberBean();
				m.setMemberId(request.getParameter("userid"));
				m.setPassword(request.getParameter("password"));
				if(MemberServiceImpl.getInstance().login(m)){
					%>
					<h3>★WELCOME★</h3>
					<h3><%=m.getMemberId() %> 님</h3>
					<%
				}else{
					%>	<h4>아이디 혹은 비밀번호가 일치하지 않습니다.</h4> <%
				}
			%>
			</td>
		</tr>
		<tr class="height-100px">
			<td colspan="2">ADDRESS</td>
		</tr>
	</table>

</body>
</html>