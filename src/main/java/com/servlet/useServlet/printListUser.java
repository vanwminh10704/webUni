package com.servlet.useServlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.data.dataConnection;
/**
 * Servlet implementation class printListUser
 */
@WebServlet("/printListUser")
public class printListUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public printListUser() {
        super();

    }
    private void printListUsers() {
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
   		} finally {
            try {
                if (resultSet != null) resultSet.close();
                if (statement != null) statement.close();
                if (connection != null) connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		printListUsers();
		response.getWriter().println("Danh sách người dùng đã được in trong console.");
		
	}
     

}
