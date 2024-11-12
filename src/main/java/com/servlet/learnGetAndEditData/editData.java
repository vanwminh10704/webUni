package com.servlet.learnGetAndEditData;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/editData")
public class editData extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public editData() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
        String email = request.getParameter("email");
        String gender = request.getParameter("gender");
        String birthday = request.getParameter("birthday");
        String career = request.getParameter("career");
        String address = request.getParameter("address");
        String shippingAddress = request.getParameter("shippingAddress");
        
        response.sendRedirect("/practiceWeb/getData_and_DefineEnrorHandling/success.jsp");
	}

}
