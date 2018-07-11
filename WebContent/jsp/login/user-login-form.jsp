<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>main</title>
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
			<form id="user-login-layout" action="user-login-result.jsp" class="align-left">
			로그인 <br>
			ID
			<input type="text" name="userid" />
			<br>
			PASSWORD
			<input type="text" name="password" />
			<br>
			<input type="submit" value="전송" />
			</form>
			</td>
		</tr>
		<tr class="height-100px">
			<td colspan="2">ADDRESS</td>
		</tr>
	</table>
</body>
</html>