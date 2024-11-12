package com.servlet.learnGetAndEditData;
import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/testvariable")
public class testvariable extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public testvariable() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String test = getServletConfig().getInitParameter("test");
		String name = getServletContext().getInitParameter("name");
		
		response.getWriter().println("<h1>Test: " + test + "</h1>");
		response.getWriter().println("<h1>Name: " + name + "</h1>");
	}
}
