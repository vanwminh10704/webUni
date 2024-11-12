package com.servlet.useServlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.data.dataConnection;

@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public loginServlet() {
        super();
    }
    private static final String  DB_URL = "jdbc:mysql://localhost:3306/databaseltweb";
    private static final String USER_NAME = "root";
    private static final String PASSWORD = "1234567890";
    
    private boolean validateUser(String userName, String password) {
		boolean isValid = false;
		
		try {          
			Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection(DB_URL,USER_NAME, PASSWORD);
            
            String sql = "SELECT * FROM user WHERE userName = ? AND password = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, userName);
            statement.setString(2, password);

            ResultSet resultSet = statement.executeQuery();
            isValid = resultSet.next();                     
            
            resultSet.close();
            statement.close();
            connection.close();
		} catch (Exception except) {
			except.printStackTrace();
		}
		
		return isValid;
	}
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");
		
		
		if(validateUser(userName, password)) {
			HttpSession session = request.getSession();
        	session.setAttribute("userName", userName);
        	
            response.setContentType("text/html; charset=UTF-8");
            response.getWriter().println("<html><body>");
            response.getWriter().println("<h1>Đăng nhập thành công!</h1>");
            response.getWriter().println("<h2>Xin chào, " + userName + "!</h2>");
            response.getWriter().println("</body></html>");
        } else {
        	request.setAttribute("errorMessage", " Tên đăng nhập hoặc mật khẩu không chính xác");
        	request.getRequestDispatcher("/sessionLogin/login.jsp").forward(request, response);
        }
		
    }	
}
