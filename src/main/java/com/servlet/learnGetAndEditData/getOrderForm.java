package com.servlet.learnGetAndEditData;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.model.customer;
@WebServlet("/newDemoServlet")
public class getOrderForm extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public getOrderForm() {}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String Typeship = request.getParameter("shipType");
		customer user = new customer();
		user.setTypeShip(Typeship);
		user.setEmail(email);
		user.setName(name);		
		request.setAttribute("user", user);
		getServletContext().getRequestDispatcher("/usingServletwithJSP/orderConfirm.jsp").forward(request, response);
	}

}
