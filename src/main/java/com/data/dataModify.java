package com.data;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import com.model.user;
public class dataModify {
    private static String DB_URL = "jdbc:mysql://localhost:3306/databaseLTWeb";
    private static String USER_NAME = "root";
    private static String PASSWORD = "1234567890";

	public static List<user> getUser(){
		List<user> userList = new ArrayList<>();

        Connection connection = null;
        Statement statement = null;
        try{
            connection= DriverManager.getConnection(DB_URL, USER_NAME, PASSWORD);
            String sql = "select * from databaseltweb.user";
            statement = connection.createStatement();

            ResultSet resultSet = statement.executeQuery(sql);

            while (resultSet.next()) {
                user user = new user(resultSet.getString("userName"),
                		resultSet.getString("password")
                        );
                userList.add(user);
            }
        } catch(SQLException except) {
        	except.printStackTrace();
        } finally {
			if(statement != null) {
				try {
					statement.close();
				} catch (Exception except) {
					except.printStackTrace();
				}
			}
			
		}
        return userList;
	}
	public static void main(String[] args) {
        List<user> userList = new ArrayList<>();
        if (userList != null){
            for (user u:userList){
                System.out.println(u.getUserName());
            }
        }
	}
}
