<%@page import="domain.MemberBean"%>
<%@page import="service.MemberServiceImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>DELETES_RESULT</title>
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
					String confirmPw = request.getParameter("confirm-pw");
					MemberBean member = new MemberBean();
					member.setMemberId(userId);
					member.setPassword(userPw);
					if(!userPw.equals(confirmPw) || !MemberServiceImpl.getInstance().login(member)){
						%> <h3>비밀번호가 맞지않습니다.</h3> 
						<a href="../../main.jsp"><button class="butt">MAIN</button></a><%
					}else{
						MemberServiceImpl.getInstance().removeMember(member);
						%><a href="../../main.jsp"><button class="butt">MAIN</button></a><%
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