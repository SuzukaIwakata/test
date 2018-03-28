package com.internousdev.ecsite_a.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.internousdev.ecsite_a.dto.InquiryDTO;
import com.internousdev.ecsite_a.util.DBConnector;

public class InquiryCompleteDAO {

	List<InquiryDTO> inquiryDTOList = new ArrayList<InquiryDTO>();

	public List<InquiryDTO> select(){
		DBConnector db =new DBConnector();
		Connection con= db.getConnection();

		String sql="select * from inquiry";
		try{
			PreparedStatement ps= con.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();

			while(rs.next()){
				InquiryDTO dto =new InquiryDTO();
				dto.setName(rs.getString("name"));
				dto.setMailaddress(rs.getString("mailaddress"));
				dto.setBody(rs.getString("body"));
				inquiryDTOList.add(dto);
			}
		}catch(SQLException e){
			e.printStackTrace();
		}
		try{
			con.close();
		}catch(SQLException e){
			e.printStackTrace();
		}
		return inquiryDTOList;
	}

	public int insert(String name,String mailaddress,String body){
		int ret = 0;
		DBConnector db = new DBConnector();
		Connection con = db.getConnection();

		String sql="insert into inquiry value(?,?,?)";
		try{
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, name);
			ps.setString(2, mailaddress);
			ps.setString(3, body);
			int i = ps.executeUpdate();
			if(i > 0 ){
				System.out.println(i+"件登録されました");
				ret=i;
			}
		}catch(SQLException e){
			e.printStackTrace();
		}
		try{
			con.close();
		}catch(SQLException e){
			e.printStackTrace();
		}
		return ret;
	}

}
