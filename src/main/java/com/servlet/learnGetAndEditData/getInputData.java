package com.servlet.learnGetAndEditData;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/getInputData")
public class getInputData extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public getInputData() {
        super();
    }
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
        String email = request.getParameter("email");
        String gender = request.getParameter("gender");
        String birthday = request.getParameter("birthday");
        String career = request.getParameter("career");
        String address = request.getParameter("Address");
        String shippingAddress = request.getParameter("shippingAddress");

        request.setAttribute("name", name);
        request.setAttribute("email", email);
        request.setAttribute("gender", gender);
        request.setAttribute("birthday", birthday);
        request.setAttribute("career", career);
        request.setAttribute("address", address);
        request.setAttribute("shippingAddress", shippingAddress);

        request.getRequestDispatcher("/getData_and_DefineEnrorHandling/editData.jsp").forward(request, response);

	}

}
