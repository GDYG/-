<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.util.*,java.sql.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>系统登录界面</title>
<script type="text/javascript">
	function check() {
		var username = document.getElementById("username");
		var userInfo = document.getElementById("usernameInfo");
		userInfo.innerHTML = "";
		if (username.value == "") {
			userInfo.innerHTML = "用户名不能为空！";
			username.focus();
			return false;
		}
		var password = document.getElementById("password");
		var passinfo = document.getElementById("pwd");
		passinfo.innerHTML = "";
		if (password.value == "") {
			passinfo.innerHTML = "密码不能为空！";
			password.focus();
			return false;
		}
		return true;
	}
</script>
</head>
<body style="background-color:#606D91">
	<div
		style="width: 500px; height: 120px; position: absolute; top: 0; left: 0; right: 0; bottom: 0; margin: auto;">
		<form name="form1" action="logincheck.jsp" method="post"
			onsubmit="return check()">
			<table>
				<tr>
					<td colspan="2" align="center" style="bottom:5px;"><strong>BOOT 客 户 管 理 系
							统</strong></td>
				</tr>
				<tr>
					<td width="101">用户名：</td>
					<td width="246"><input type="text" name="username"
						id="username" size="30" /></td>
					<td><span id="usernameInfo"></span></td>
				</tr>
				<tr>
					<td>密码：</td>
					<td><input type="text" name="password" id="password" size="30" /></td>
					<td><span id="pwd"></span></td>
				</tr>
				<tr height="2"></tr>
				<tr>
					<td colspan="2" class="button" align="center"><input
						type="submit" value="登录" style="color: #BC8F8F" /></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>