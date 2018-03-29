package com.internousdev.ecsite_a.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.internousdev.ecsite_a.util.DBConnector;
import com.internousdev.ecsite_a.util.DateUtil;

public class BuyItemCompleteDAO {
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
}


