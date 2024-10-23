package com.data;

import java.sql.Connection;
import java.sql.DriverManager;

public class dataConnection {

    private static String DB_URL = "jdbc:mysql://localhost:3306/databaseltweb";
    private static String USER_NAME = "root";
    private static String PASSWORD = "1234567890";

    public static Connection getConnection( String dbURL, String userName, String password ) {
        Connection connect = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connect = DriverManager.getConnection(dbURL, userName, password);
            System.out.println("connect successfull!");
        } catch (Exception ex) {
            System.out.println("connect fail!");
            ex.printStackTrace();
        }
        return connect;
    }

    public static void main(String[] args) {
        try {
            Connection connection = getConnection(DB_URL, USER_NAME, PASSWORD);
            connection.close();
        } catch (Exception except) {
            except.printStackTrace();
        }
    }
}
