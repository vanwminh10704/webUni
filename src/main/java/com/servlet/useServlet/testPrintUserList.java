package com.servlet.useServlet;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import com.data.dataConnection;
import com.model.user;

public class testPrintUserList {
	private static void printListUsers() {
   	 Connection connection = null;
   	 Statement statement = null;
   	 ResultSet resultSet = null;
   	 try {
			connection = dataConnection.getConnection();
			statement = connection.createStatement();
			String sql = "select * from client";
			resultSet = statement.executeQuery(sql);
			while(resultSet.next()) {
				String userName = resultSet.getString("userName");
				String email = resultSet.getString("email");
				String address = resultSet.getString("address");
				System.out.println("User Name: " + userName);
				System.out.println("Email: " + email);
				System.out.println("Address:" + address);
				
			}
		} catch (Exception except) {
			System.out.println("database error: " + except.getMessage());
		}
    }
	
	public static void main(String[] args) {
		printListUsers();
	}
}
