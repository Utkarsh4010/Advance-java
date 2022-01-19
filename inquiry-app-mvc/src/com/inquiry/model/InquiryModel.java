package com.inquiry.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.inquiry.bean.Inquiry;
import com.inquiry.util.DbConnectionUtil;

public class InquiryModel {
	public boolean save(Inquiry inquiry) {
		boolean result=false;
		
		Connection con=DbConnectionUtil.getConnection();
		try {
			PreparedStatement stmt=con.prepareStatement("insert into inquiry values(0,?,?,?,?,?,?)");
			stmt.setString(1, inquiry.getName());
			stmt.setString(2, inquiry.getEmail());
			stmt.setString(3, inquiry.getContact());
			stmt.setString(4, inquiry.getCity());
			stmt.setString(5, inquiry.getInqFor());
			stmt.setDate(6, inquiry.getInqDate());
			int count=stmt.executeUpdate();
			result=count>0;
		}catch(Exception e) {
			e.printStackTrace();
		}
		DbConnectionUtil.closeConnection(con);
		
		return result;
	}
	
	public List<Inquiry>getAll(){
		List<Inquiry>list=new ArrayList<>();
		Connection con= DbConnectionUtil.getConnection();
		try {
			PreparedStatement stmt=con.prepareStatement("select * from inquiry");
			ResultSet rs=stmt.executeQuery();
			while(rs.next()) {
				Inquiry inq=new Inquiry();
				inq.setId(rs.getInt("id"));
				inq.setName(rs.getString("name"));
				inq.setCity(rs.getString("city"));
				inq.setContact(rs.getString("contact"));
				inq.setEmail(rs.getString("email"));
				inq.setInqFor(rs.getString("inqfor"));
				inq.setInqDate(rs.getDate("inqDate"));
				list.add(inq);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		DbConnectionUtil.closeConnection(con);
		return list;
	}	

}
