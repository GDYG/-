<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.ch6.model.Customerinfo,com.ch6.dal.Customer"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>首页</title>
</head>
<body style="background: url(./image/5.jpg)">
	<%
		String aa = request.getParameter("tianjia");
		if (aa != null) {
			if (aa.equals("tianjia"))
				response.sendRedirect("insert.jsp");
		}
	%>
	<div style="background: url(./image/3.jpg)">
		<table style="width: 100%; height: 60px;" border="1">
			<tr>
				<td align="center"><b>BOOT客户管理系统</b></td>
			</tr>
		</table>
	</div>
	<br>
	<div>
		<form name="form2" action="shouye.jsp" method="post">
			<table>
				<tr>
					<td width="150px" height="100px">
						<h2 style="color: #517AAD">客户管理系统</h2>
					</td>
					<td width="25%"></td>
					<td>
					    <label>客户名称</label> <input type="text" name="name" id="name">
						<label>客户来源</label> <select id="Source"
						name="source">
						<option value="">--请选择--</option>
							<%
							Customer customer3 = new Customer();
							List<Customerinfo> list2 = customer3.getList();
							for(Customerinfo info : list2){
							%>
							<option value="<%=info.getSource() %>"><%out.print(info.getSource());%>
							</option>
							<%
							     }
					        %>
					</select> <label>所属行业</label> <select id="Industry" name="industry">
					<option value="">--请选择--</option>
					<%
							Customer customer4 = new Customer();
							List<Customerinfo> list3 = customer4.getList2();
							for(Customerinfo info : list3){
							%>
							<option value="<%=info.getIndustry() %>"><%out.print(info.getIndustry());%>
							</option>
							<%
							   }
							%>
					</select> <label>客户级别</label> <select id="level" name="level">
					<option value="">--请选择--</option>
					<%
							Customer customer5 = new Customer();
							List<Customerinfo> list4 = customer5.getList3();
							for(Customerinfo info : list4){
							%>
							<option value="<%=info.getLevel() %>"><%out.print(info.getLevel());%>
							</option>
							<%
							   }
							%>
					</select>
						<button type="submit">查询</button>
						<button type="submit" value="tianjia" name="tianjia">添加</button>
						</td>
				</tr>
			</table>
		</form>
		<table
			style="width: 1000px; background: url(./image/8.jpg); margin: auto"
			border="1">
			<tr>
				<h4 align="center">客户信息列表</h4>
			</tr>
			<tr>
				<td>ID</td>
				<td>客户名称</td>
				<td>客户来源</td>
				<td>客户所属行业</td>
				<td>客户级别</td>
				<td>手机</td>
				<td>操作</td>
			</tr>
			<%
				Customer customer = new Customer();
				List<Customerinfo> list = customer.getList();
				for (Customerinfo info : list) {
			%>
			<tr>
				<td>
					<%
						out.print(info.getID());
					%>
				</td>
				<td>
					<%
						out.print(info.getName());
					%>
				</td>
				<td>
					<%
						out.print(info.getSource());
					%>
				</td>
				<td>
					<%
						out.print(info.getIndustry());
					%>
				</td>
				<td>
					<%
						out.print(info.getLevel());
					%>
				</td>
				<td>
					<%
						out.print(info.getPhone());
					%>
				</td>
				<td><a href="update.jsp?id=<%=info.getID()%>" style="text-decoration:none">修改</a> | <a
					href="delete.jsp?id=<%=info.getID()%>" style="text-decoration:none">删除</a></td>
			</tr>
			<%
				}
			%>				
		</table>
	</div>
	<%
	   request.setCharacterEncoding("utf-8");
	   Customer customer2 = new Customer();
		Customerinfo io = customer2.getCustomer2(request.getParameter("name"));
		if (io != null) {
	
		}
	%>
	
</body>
</html>