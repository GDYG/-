<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.ch6.model.Customerinfo,com.ch6.dal.Customer"%>
<%
	request.setCharacterEncoding("utf-8");
	Customerinfo info = new Customerinfo();
	Customer customer = new Customer();
	if ("add".equals(request.getParameter("action"))) {
		info = customer.getCustomer(request.getParameter("id"));
		if (info == null) {
			out.print("找不到该客户信息！");
		}
		info.setID(Integer.parseInt(request.getParameter("id")));
		info.setName(request.getParameter("name"));
		info.setSource(request.getParameter("source"));
		info.setIndustry(request.getParameter("industry"));
		info.setLevel(request.getParameter("level"));
		info.setPhone(request.getParameter("phone"));
		customer.update(info);
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>修改客户信息</title>
</head>
<body style="background-color:#D1E0E0">
	<a href="shouye.jsp">返回</a><br><br>
	<%
		Customerinfo in = customer.getCustomer(request.getParameter("id"));
		if (in == null) {
			out.print("找不到该客户信息！");
			return;
		}
	%>
	<h1 align="center">修 改 客 户 信 息</h1>
	<form id="form1" name="form1" method="post"
		action="update.jsp?action=add">
		<table style="width:500px; height:300px; margin:auto" border="1">
			<tr>
				<td>姓名</td>
				<td><input type="text" name="name" id="name"
					value="<%=in.getName()%>" style="background-color:#D8D8B2"/></td>
			</tr>
			<tr>
				<td>客户来源</td>
				<td><input type="text" name="source" id="source"
					value="<%=in.getSource()%>" style="background-color:#D8D8B2"/></td>
			</tr>
			<tr>
				<td>客户所属行业</td>
				<td><input type="text" name="industry" id="industry"
					value="<%=in.getIndustry()%>" style="background-color:#D8D8B2"/></td>
			</tr>
			<tr>
				<td>客户级别</td>
				<td><input type="text" name="level" id="level"
					value="<%=in.getLevel()%>" style="background-color:#D8D8B2"/></td>
			</tr>
			<tr>
				<td>客户电话</td>
				<td><input type="text" name="phone" id="phone"
					value="<%=in.getPhone()%>" style="background-color:#D8D8B2"/></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" name="button" id="button"
					value="提交" style="color: #8CB299"/> <input type="reset" name="button2" id="button2"
					value="重置" style="color: #8CB299"/> <input type="hidden" name="id"
					value="<%=in.getID()%>" /></td>
			</tr>
		</table>
	</form>
</body>
</html>