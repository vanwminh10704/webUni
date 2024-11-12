package com.servlet.learnGetAndEditData;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Date;
import com.model.customer;

@WebServlet("/getInfomartion")
public class getInfor extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String career = request.getParameter("career");
		String address = request.getParameter("Address");
		String Typeship = request.getParameter("shipType");
		String birthday = request.getParameter("dob");
		String gender = request.getParameter("gender");

		customer customer = new customer();
		customer.setEmail(email);
		customer.setName(name);	
		customer.setCareer(career);
		customer.setAddress(address);
		customer.setTypeShip(Typeship);
					
		request.setAttribute("birthday", birthday);
		request.setAttribute("gender", gender);
		
		request.setAttribute("customer", customer);
		getServletContext().getRequestDispatcher("/usingServletwithJSP/inforConfirm.jsp").forward(request, response);
	}

}
