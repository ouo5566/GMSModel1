<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>UPDATE</title>
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
				<a href="../../main.jsp"><button class="butt">MAIN</button></a>
				<h4>비밀번호 변경</h4>
				<form action="update-result.jsp">
				ID : <input type="text" name="userid"/><br>
				PW : <input type="text" name="userpw"/><br>
				NEW PW : <input type="text" name="new-userpw"/><br>
				<input type="submit" value="UPDATE"/>
				</form>
			</td>
		</tr>
		<tr class="height-100px">
			<td colspan="2">ADDRESS</td>
		</tr>
	</table>
	
</body>
</html>
