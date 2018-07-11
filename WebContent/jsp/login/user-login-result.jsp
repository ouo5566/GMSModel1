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
</head>
<body>
<%
	MemberBean m = new MemberBean();
	m.setMemberId(request.getParameter("userid"));
	m.setPassword(request.getParameter("password"));
	if(MemberServiceImpl.getInstance().login(m)){
		%>
		<h3>로그인하였습니다.</h3>
		<h3><%=m %></h3>
		<%
	}else{
		%>
		<h3>아이디 혹은 비밀번호가 일치하지 않습니다.</h3>
		<%
	}
%>
<a href="../../main.jsp"><button id="main-tab-Layout-main-butt">MAIN</button></a>
</body>
</html>