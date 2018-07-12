<%@page import="service.MemberService"%>
<%@page import="service.MemberServiceImpl"%>
<%@page import="domain.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>회원가입</title>
	<link rel="stylesheet" href="../../css/style.css" />
</head>
<body>
	<%
		String id = request.getParameter("joinid");
		MemberBean m = new MemberBean();
		m.setMemberId(id);
		m.setPassword(request.getParameter("password"));
		m.setName(request.getParameter("username"));
		m.setSsn(request.getParameter("userssn"));

		if(!MemberServiceImpl.getInstance().findByUser(m)){
			%> <h3> 해당 정보로 존재하는 계정이 있습니다. </h3>
				<a href="../login/main.jsp"><button class="butt">아이디찾기</button></a>
			<%
		}else if(!MemberServiceImpl.getInstance().findById(id)){
			%> <h3> 중복된 아이디입니다. </h3> <%
		}else{
			MemberServiceImpl.getInstance().createMember(m);
			%><a href="../login/user-login-form.jsp"><button class="butt">로그인화면으로</button></a> <%
		}
	%>
</body>
</html>