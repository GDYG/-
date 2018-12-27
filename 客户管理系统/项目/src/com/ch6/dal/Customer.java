package com.ch6.dal;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.ch6.Conn;
import com.ch6.model.Customerinfo;
public class Customer {
    Conn conn=new Conn();
    public List<Customerinfo> getList() throws SQLException {
    	List<Customerinfo> list=new ArrayList<Customerinfo>();
    	String sql = "select * from customer";
    
    	ResultSet rs = conn.executeQuery(sql);
		while(rs.next()) {
	
    		Customerinfo info = new Customerinfo();
    		info.setID(rs.getInt("Id"));
    		info.setName(rs.getString("Name"));
    		info.setSource(rs.getString("Source"));
    		info.setIndustry(rs.getString("Industry"));
    		info.setLevel(rs.getString("Level"));
    		info.setPhone(rs.getString("Phone"));
    		list.add(info);
    	}
    	conn.close();
    	return list;
    } 
    public List<Customerinfo> getList2() throws SQLException {
    	List<Customerinfo> list2=new ArrayList<Customerinfo>();
    	String sql = "select distinct industry from customer";  
    	ResultSet rs = conn.executeQuery(sql);
		while(rs.next()) {
    		Customerinfo info = new Customerinfo();  	
    		info.setIndustry(rs.getString("Industry"));
    		list2.add(info);
    	}
    	conn.close();
    	return list2;
    } 
    public List<Customerinfo> getList3() throws SQLException {
    	List<Customerinfo> list3=new ArrayList<Customerinfo>();
    	String sql = "select distinct level from customer";   
    	ResultSet rs = conn.executeQuery(sql);
		while(rs.next()) {
    		Customerinfo info = new Customerinfo();  	
    		info.setLevel(rs.getString("Level"));
    		list3.add(info);
    	}
    	conn.close();
    	return list3;
    } 
    public int update(Customerinfo info) {
    	String sql="update customer set name='"+info.getName()+"',source='"+info.getSource()+"',industry='"+info.getIndustry()+"',level='"+info.getLevel()+"',phone='"+info.getPhone()+"' where id='"+info.getID()+"'";
    	int result=0;
    	System.out.println(sql);
    	result=conn.executeUpdate(sql);
    	conn.close();
    	return result;
    }
    public Customerinfo getCustomer(String id) throws SQLException{
    	Customerinfo info=new Customerinfo();
    	String sql="select * from customer where id='"+id+"'";
    	ResultSet rs=conn.executeQuery(sql);
    	if(rs.next()) {
    		info.setID(rs.getInt("Id"));
		    info.setName(rs.getString("Name"));
		    info.setSource(rs.getString("Source"));
		    info.setIndustry(rs.getString("Industry"));
		    info.setLevel(rs.getString("Level"));
		    info.setPhone(rs.getString("Phone"));
    }
    conn.close();
    return info;
}
    public Customerinfo getCustomer2(String name) throws SQLException{
    	Customerinfo on=new Customerinfo();
    	String sql="select * from customer where name='"+name+"'";
    	ResultSet rs=conn.executeQuery(sql);
    	if(rs.next()) {
    		on.setID(rs.getInt("Id"));
		    on.setName(rs.getString("Name"));
		    on.setSource(rs.getString("Source"));
		    on.setIndustry(rs.getString("Industry"));
		    on.setLevel(rs.getString("Level"));
		    on.setPhone(rs.getString("Phone"));
    }
    conn.close();
    return on;
    	
    }
    public Customerinfo getCustomer3(String source) throws SQLException{
    	Customerinfo on=new Customerinfo();
    	String sql="select * from customer where name='"+source+"'";
    	ResultSet rs=conn.executeQuery(sql);
    	if(rs.next()) {
    		on.setID(rs.getInt("Id"));
		    on.setName(rs.getString("Name"));
		    on.setSource(rs.getString("Source"));
		    on.setIndustry(rs.getString("Industry"));
		    on.setLevel(rs.getString("Level"));
		    on.setPhone(rs.getString("Phone"));
    }
    conn.close();
    return on;
    	
    }
    public int delete(String id)
    {
    	String sql="delete from customer where id='"+id+"'";
    	int result=0;
    	System.out.println(sql);
    	result=conn.executeUpdate(sql);
    	conn.close();
    	return result;
    }
    public int insert(Customerinfo info) {
    	String sql="insert into customer(name,source,industry,level,phone) values ";
    	sql=sql+"('"+info.getName()+"','"+info.getSource()+"','"+info.getIndustry()+"','"+info.getLevel()+"','"+info.getPhone()+"')";
    	int result=0;
    	System.out.println(sql);
    	result=conn.executeUpdate(sql);
    	conn.close();
    	return result;
    }
   
}
