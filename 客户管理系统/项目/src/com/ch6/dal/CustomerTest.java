package com.ch6.dal;

import static org.junit.Assert.assertEquals;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import org.junit.After;
import org.junit.Before;
import org.junit.jupiter.api.Test;
 
public class CustomerTest { 

private Connection conn = null; 
private String url = "jdbc:mysql://localhost:3306/student"; 
private String driverClassName = "com.mysql.jdbc.Driver"; 
private String user = "root"; 
private String pass = "123"; 

//setup()方法中放置标准资源初始化 
@Before 
public void setUp() throws Exception { 
Class.forName(driverClassName).newInstance(); 
conn = DriverManager.getConnection(url, user, pass); 
} 

//tearDown()方法中放置标准资源回收 

@After 
public void tearDown() throws Exception { 
conn = null; 
} 

//testCustomer()方法中放置的是需要测试代码或要测试的另一个类中的方法 

@Test 
public void testCustomer() { 
try { 
Statement st = conn.createStatement(); 
String sql="update customer set name='000',source='000',industry='000',level='000',phone='000' where id='10'";
ResultSet rs = st.executeQuery(sql); 
String str = null; 
while (rs.next()) { 
str = rs.getString("id"); 
} 
assertEquals("3", str); 
} catch (Exception e) { 
e.printStackTrace(); 
} 
} 
} 
