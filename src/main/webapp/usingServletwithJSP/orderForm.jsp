<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="/practiceWeb/getOrderForm.java" method = "post">
	<h1>Widget Order Form</h1><br>
	<label>Quantity: </label>
	<input type="text" id="quantity" name="quantity"><br>
	<label>Your name: </label>
	<input type="text" id="name" name="name"><br>
	<label>Email Address: </label>
	<input type="email" id="email" name="email"><br>
	
	<label>&nbsp</label><br>	
	<input type="submit" value="Confirm now">
</form> 

</body>
</html>