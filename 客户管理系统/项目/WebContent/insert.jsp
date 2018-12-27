<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.ch6.model.Customerinfo,com.ch6.dal.Customer"%>
<%
	request.setCharacterEncoding("utf-8");
	Customerinfo info = new Customerinfo();
	Customer customer = new Customer();
	if ("add".equals(request.getParameter("action"))) {
		info.setName(request.getParameter("name"));
		info.setSource(request.getParameter("source"));
		info.setIndustry(request.getParameter("industry"));
		info.setLevel(request.getParameter("level"));
		info.setPhone(request.getParameter("phone"));
		customer.insert(info);
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>信息添加</title>
</head>
<body style="background:url(./image/6.jpg)">
	<a href="shouye.jsp">返回首页</a>
	<br>
	<br>
	<br>
<div>
	<form id="form1" name="form1" method="post"
		action="insert.jsp?action=add">
		<h1 align="center">添 加 客 户 信 息</h1>
		<table style="width:400px; height:300px;margin:auto" border="1">
			<tr>
				<td>姓名</td>
				<td ><input type="text" name="name" id="name" style="background-color:#D8D8B2"/></td>
			</tr>
			<tr>
				<td>客户来源</td>
				<td><input type="text" name="source" id="source" style="background-color:#D8D8B2"/></td>
			</tr>
			<tr>
				<td>客户所属行业</td>
				<td><input type="text" name="industry" id="industry" style="background-color:#D8D8B2"/></td>
			</tr>
			<tr>
				<td>客户级别</td>
				<td><input type="text" name="level" id="level" style="background-color:#D8D8B2"/></td>
			</tr>
			<tr>
				<td>客户电话</td>
				<td><input type="text" name="phone" id="phone" style="background-color:#D8D8B2"/></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" name="button" id="button"
					value="提交" style="color: #8CB299"/> <input type="reset" name="button2" id="button2"
					value="重置" style="color: #8CB299"/></td>
			</tr>
		</table>
	</form>
</div>
</body>
</html>