package com.internousdev.ecsite_a.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.internousdev.ecsite_a.util.DBConnector;
import com.internousdev.ecsite_a.util.DateUtil;

public class BuyItemCompleteDAO {
	private String item_transaction_id;
	private String item_name;
	private String total_price;
	private String total_count;
	private String pay;

	private DBConnector dbConnector = new DBConnector();
	private Connection connection = dbConnector.getConnection();
	private DateUtil dateUtil = new DateUtil();
	private String sql = "INSERT INTO user_buy_item_transaction(item_transaction_id,item_name,total_price,total_count,user_master_id,pay,insert_date)VALUES(?,?,?,?,?,?,?)";

	public int buyItemInfo(String item_transaction_id,String item_name,String total_price, String total_count,String user_master_id,String pay) throws SQLException {
		int ret = 0;
		try {
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, item_transaction_id);
			preparedStatement.setString(2, item_name);
			preparedStatement.setString(3, total_price);
			preparedStatement.setString(4, total_count);
			preparedStatement.setString(5, user_master_id);
			preparedStatement.setString(6, pay);
			preparedStatement.setString(7, dateUtil.getDate());
			ret = preparedStatement.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			connection.close();
		}
		return ret;
	}

	public String getItem_transaction_id() {
		return item_transaction_id;
	}

	public void setItem_transaction_id(String item_transaction_id) {
		this.item_transaction_id = item_transaction_id;
	}

	public String getItem_name() {
		return item_name;
	}

	public void setItem_name(String item_name) {
		this.item_name = item_name;
	}

	public String getTotal_price() {
		return total_price;
	}

	public void setTotal_price(String total_price) {
		this.total_price = total_price;
	}

	public String getTotal_count() {
		return total_count;
	}

	public void setTotal_count(String total_count) {
		this.total_count = total_count;
	}

	public String getPayt() {
		return pay;
	}

	public void setPay(String pay) {
		this.pay = pay;
	}


}


