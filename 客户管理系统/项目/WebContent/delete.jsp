<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*"
    pageEncoding="UTF-8"%>
    <%@page import="com.ch6.dal.Customer" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body style="background-color:#D1E0E0">
<%
 Customer customer=new Customer();
 int result=0;
 result = customer.delete(request.getParameter("id"));
 if(result==1)
 {
	 out.print("删除成功");
	 response.setHeader("refresh","3;URL=shouye.jsp?ref=aaa");
 } else
 {
	 out.print("删除失败");
 }
 %>
 三秒后跳转！！<br>
 如果没有跳转，请按<a href="shouye.jsp">返回</a>!!!
</body>
</html>