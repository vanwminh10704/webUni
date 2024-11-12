package com.data;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class dataConnection {

    private static String DB_URL = "jdbc:mysql://localhost:3306/databaseltweb?useUnicode=true&characterEncoding=UTF-8";
    private static String USER_NAME = "root";
    private static String PASSWORD = "1234567890";

    public static Connection getConnection() {
        Connection connect = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connect = DriverManager.getConnection(DB_URL, USER_NAME, PASSWORD);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return connect;
    }
}
