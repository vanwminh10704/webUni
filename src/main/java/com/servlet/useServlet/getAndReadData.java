package com.servlet.useServlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.client;
import com.data.dataConnection;

@WebServlet("/getData")
public class getAndReadData extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public getAndReadData() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String birthday = request.getParameter("birthday");
		boolean gender = "male".equals(request.getParameter("gender"));
		String phoneNumber = request.getParameter("phoneNumber");

		client client = new client();
		client.setName(name);
		client.setEmail(email);
		client.setAddress(address);
		client.setBirthday(java.sql.Date.valueOf(birthday));
		client.setGender(gender);
		client.setPhoneNumber(phoneNumber);

		insertUser(name, email, address, birthday, gender, phoneNumber);
		response.getWriter().print("User saved successfully!");
		System.out.println(" danh sách người dùng: " + selectClientsList());
		
}
	
	public void insertUser(String name, String email, String address, String birthday, boolean gender, String phoneNumber) {
		Connection connection = null;
		PreparedStatement statement = null;
		ResultSet resultSet = null;
		
		try {
			connection = dataConnection.getConnection();
			String checkQuery = "SELECT * FROM client WHERE email = ? OR phoneNumber = ?";
	        statement = connection.prepareStatement(checkQuery);
	        statement.setString(1, email);
	        statement.setString(2, phoneNumber);
	        resultSet = statement.executeQuery();
	        
	        if (resultSet.next()) {
				throw new SQLException(" Email hoặc số điện thọai đã tồn tại");
			} else {
				String insertQuery = "INSERT INTO client (name, email, address, birthday, gender, phoneNumber) VALUES (?, ?, ?, ?, ?, ?)";
				statement = connection.prepareStatement(insertQuery);
				statement.setString(1, name);
				statement.setString(2, email);
				statement.setString(3, address);
				statement.setDate(4, java.sql.Date.valueOf(birthday));
				statement.setBoolean(5, gender);
				statement.setString(6, phoneNumber);
				
				statement.executeUpdate();
			}

		} catch (Exception except) {
			System.err.println(except.getMessage());
		} finally {
			try { 	
				if(resultSet != null) resultSet.close();
                if (statement != null) statement.close();
                if (connection != null) connection.close();
            } catch (SQLException except) {
                except.printStackTrace();
            }
		}
	}
	
	public List <client> selectClientsList(){
		List<client> clients = new ArrayList<>();
		Connection connection = null;
		PreparedStatement statement = null;
		ResultSet resultSet = null;
		
		try {
			connection = dataConnection.getConnection();
			String selectAllQuery = "SELECT * FROM client";
			statement = connection.prepareStatement(selectAllQuery);
			resultSet = statement.executeQuery();
			
			while(resultSet.next()) {
				String name = resultSet.getString("name");
				String email =resultSet.getString("email");
				String address = resultSet.getString("address");
				java.sql.Date birthday = resultSet.getDate("birthday");
				boolean gender = resultSet.getBoolean("gender");
				String phoneNumber = resultSet.getString("phoneNumber");
				client newClient = new client (name, email, address, birthday, gender,phoneNumber);
				clients.add(newClient);
			}
		} catch (SQLException except) {
			System.err.println(except.getMessage());
		}
		
		return clients;
	}

}
