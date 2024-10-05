package com.spring.repo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.spring.model.LoginBean;
import com.spring.model.UserBean;

public class UserRepository {

	public int insertUser(UserBean bean) {
		int i = 1;

		Connection con = UserConnection.getConnection();

		try {
			PreparedStatement ps = con.prepareStatement("insert into users(name,email,password) values(?,?,?)");
			ps.setString(1, bean.getName());
			ps.setString(2, bean.getEmail());
			ps.setString(3, bean.getPassword());

			i = ps.executeUpdate();

		} catch (SQLException e) {
			System.out.println("insert error : " + e.getMessage());
		}
		return i;
	}

	public boolean checkEmail(String email) {
		boolean check = false;

		Connection con = UserConnection.getConnection();
		try {
			PreparedStatement ps = con.prepareStatement("select * from users where email = ?");
			ps.setString(1, email);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				check = true;
			}
		} catch (SQLException e) {
			System.out.println("check email : " + e.getMessage());
		}
		return check;

	}

	public LoginBean loginUser(LoginBean bean) {
		LoginBean user = null;
		Connection con = UserConnection.getConnection();
		try {
			PreparedStatement ps = con.prepareStatement("select * from users where email = ? and password=?");
			ps.setString(1, bean.getEmail());
			ps.setString(2, bean.getPassword());

			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				user = new LoginBean();
				user.setEmail(rs.getString("email"));
				user.setRole(rs.getString("role"));
			}
		} catch (SQLException e) {
			System.out.println("check email : " + e.getMessage());
		}
		return user;
	}
}
