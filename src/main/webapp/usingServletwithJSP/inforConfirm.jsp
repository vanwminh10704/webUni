<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<%@ page import="com.model.customer" %>

<title>Form xác nhận thông tin</title>
</head>
<body>
   	<%
   	customer customer = (customer) request.getAttribute("customer");
   	%>
    <h1>Thông tin khách hàng</h1>
		<p>Tên:${customer.getName()}</p>
		<p>Email:${customer.getEmail()}</p>
		<p>Nghề nghiệp:${customer.getCareer()}</p>
		<p>Địa chỉ: ${customer.getAddress()}</p>
		<p>Ngày sinh:${birthday}</p>
		<p>Giới tính:${gender}</p>
		<p>Phương thức vận chuyển:${customer.getTypeShip() }</p>
        
</body>
</html>