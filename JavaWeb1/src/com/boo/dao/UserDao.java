package com.boo.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.boo.model.User;
import com.boo.util.DBUtil;

public class UserDao {
	private Connection connection;
	
	public UserDao() {
		this.connection = DBUtil.getCon();
	}
	
	public User getUserById(int userId) {
		User user = new User();
		
		try {
			PreparedStatement preState = connection.prepareStatement("select * from users where userid=?");
			preState.setInt(1, userId);
			
			ResultSet rs = preState.executeQuery();
			
			if(rs.next()) {
				user.setDob(rs.getDate("dob"));
				user.setEmail(rs.getString("email"));
				user.setUserid(rs.getInt("userid"));
				user.setFirstName(rs.getString("firstname"));
				user.setLastName(rs.getString("lastname"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return user;
	}

}
