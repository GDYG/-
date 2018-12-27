package com.ch6;
import java.sql.*;
public class Conn {
     Connection conn=null;
     Statement stmt=null;
     ResultSet rs=null;
     public Conn() {
    	 try {
    		 Class.forName("com.mysql.jdbc.Driver");
    	 } catch(java.lang.ClassNotFoundException e) {
    		 System.err.println(e.getMessage());
    	 }
     }
     public ResultSet executeQuery(String sql) {
    	 try {
    		 conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/student?useUnicode=true&characterEncoding=UTF-8","root","123");
    		 stmt=conn.createStatement();
    		 rs=stmt.executeQuery(sql);
    	 } catch(SQLException ex) {
    		 System.err.println(ex.getMessage());
    	 }
    	 return rs;
     }
     public int executeUpdate(String sql) {
    	 int result=0;
    	 try {
    		 conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/student?useUnicode=true&characterEncoding=UTF-8","root","123");
    		 stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
    		 result=stmt.executeUpdate(sql);
    	 } catch (SQLException ex) {
    		 result = 0;
    	 }
    	 return result;
     }
     public void close() {
    	 try {
    		 if(rs!=null)
    			 rs.close();
    	 }catch(Exception e) {
    		 e.printStackTrace(System.err);
    		 
    	 }
    	 try {
    		 if(stmt!=null)
    			 stmt.close();
    	 }catch(Exception e) {
    		 e.printStackTrace(System.err);
    	 }
    	 try {
    		 if(conn!=null) {
    			 conn.close();
    		 }
    	 }catch(Exception e) {
    		 e.printStackTrace(System.err);
    	 }
     }
}
