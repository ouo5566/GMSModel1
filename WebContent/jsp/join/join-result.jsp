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
<table id="main-tab-Layout" class="width-80per height-650px margin-auto">
		<tr class="height-100px">
			<th colspan="2">GMS</th>
		</tr>
		<tr>
			<td class="width-70per"><img class="width-60per margin-auto" src="../../img/home/lighthouse.jpg" alt="" /></td>
			<td>
			<a href="../../main.jsp"><button id="main-tab-Layout-main-butt">MAIN</button></a>
			<%
				String id = request.getParameter("joinid");
				MemberBean m = new MemberBean();
				m.setMemberId(id);
				m.setPassword(request.getParameter("password"));
				m.setName(request.getParameter("username"));
				m.setSsn(request.getParameter("userssn"));
		
				if(!MemberServiceImpl.getInstance().findByUser(m)){
					%> <h4> 해당 정보로 <br> 존재하는 계정이  <br> 있습니다. </h4>
						<a href="../login/main.jsp"><button class="butt">ID찾기</button></a><%
				}else if(!MemberServiceImpl.getInstance().findByOverlabId(id)){
					%> <h3> 중복된 아이디입니다. </h3>
					<a href="join-form.jsp"><button class="butt">BACK</button></a><%
				}else{
					MemberServiceImpl.getInstance().createMember(m);
					%><a href="../login/user-login-form.jsp"><button class="butt">LOGIN</button></a><%
				}%>
			</td>
		</tr>
		<tr class="height-100px">
			<td colspan="2">ADDRESS</td>
		</tr>
	</table>
	
</body>
</html>