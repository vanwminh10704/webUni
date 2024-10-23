<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<!DOCTYPE html>
	<html>

	<head>
		<meta charset="UTF-8">
		<title>Order Comfirm</title>
		<%
			String quantity = request.getParameter("quantity");
			int numbertoParse = Integer.parseInt(quantity);
			String name = request.getParameter("name");
			String email = request.getParameter("email");
			double pricePerUnit = 9.95;
			double totalCost = pricePerUnit * numbertoParse;
		%>
	</head>

	<body>
		<h1>Order Confirmation</h1>
		<p>Cảm ơn bạn đã đặt <%= quantity %> sản phẩm, <%= name %>.</p>
		<p>Với giá $<%= pricePerUnit %>, bạn cần thanh toán $<%= totalCost %> để nhận hàng.</p>
		<p>bạn sẽ nhận đựơc 1 tin nhắn xác nhận được gửi đến <%= email %>.</p>
	</body>

	</html>