<%@page import="domain.MemberBean"%>
<%@page import="service.MemberServiceImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>UPDATE_RESULT</title>
	<link rel="stylesheet" href="../../css/style.css" />
</head>
<body>
	<table id="main-tab-Layout" class="width-80per height-650px margin-auto">
		<tr class="height-100px">
			<th colspan="2">★  우 윳 빛 깔 최 소 진 ★ </th>
		</tr>
		<tr>
			<td class="width-70per"><img class="width-60per margin-auto" src="../../img/home/lighthouse.jpg" alt="" /></td>
			<td>
				<%
				String userId = request.getParameter("userid");
				String userPw = request.getParameter("userpw");
				String userNewPw = request.getParameter("new-userpw");
				MemberBean member = new MemberBean();
				member.setMemberId(userId);
				member.setPassword(userPw);
				if(userPw.equals(userNewPw)){
					%> <h3>현재 사용중인 비밀번호입니다.</h3>
					 	<a href="../../main.jsp"><button class="butt">MAIN</button></a><%
				}else if(!MemberServiceImpl.getInstance().login(member)){
					%> <h3>비밀번호가 정확하지 않습니다.</h3>
				 	<a href="../../main.jsp"><button class="butt">MAIN</button></a><%
				}else{
					member.setPassword(userPw + "/" + userNewPw);
					MemberServiceImpl.getInstance().modifyMember(member);
					%> <a href="../../main.jsp"><button class="butt">MAIN</button></a><%
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