<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*,java.sql.*"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>系统验证界面</title>
</head>
<body>
<%
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;      
        request.setCharacterEncoding("UTF-8");
        Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/student?useUnicode=true&characterEncoding=UTF-8","root","123");
        String sql = "select * from user where user=? and pwd=?";
        stmt = conn.prepareStatement(sql);
        String user = request.getParameter("username");
        String password = request.getParameter("password");
        stmt.setString(1, user);
        stmt.setString(2, password);
        rs = stmt.executeQuery();
        if(rs.next()) {
        	response.sendRedirect("shouye.jsp");
            }
        else {
        	out.print("<script>alert('用户名或密码错误');</script>");
        	response.sendRedirect("login.jsp");
        }
        if(rs != null) {
            rs.close();
        }
        if(stmt != null) {
            stmt.close();
        }
        if(conn != null) {
            conn.close();
        }
         
   %>
</body>
</html>
