<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<!DOCTYPE html>
	<html>

	<head>
		<meta charset="UTF-8">
		<title>Login Form</title>
		<style type="text/css">
			body {
				margin: 0;
				font-family: Arial, sans-serif;
				display: flex;
				justify-content: center;
				align-items: center;
				height: 100vh;
				flex-direction: column;

			}

			h1 {
				text-align: center;
				color: #fff;
			}

			.loginFormContainer {
				padding: 40px;
				background-color: #333;
				display: flex;
				justify-content: center;
				align-items: center;
				height: 250px;
				width: 250px;
				border-radius: 10px;
				box-shadow: 0 0 20px rgba(0, 0, 0, 0.5);
				text-align: center;
				margin: 0 auto;
			}

			.loginFormContainer input[type="text"],
			.loginFormContainer input[type="password"],
			.loginFormContainer input[type="submit"] {
				padding: 10px;
				margin: 10px 0;
				border: 2px solid #00ADEF;
				border-radius: 25px;
				background-color: #1f1e1e;
				color: #fff;
				font-size: 16px;
				text-align: center;
				display: block;
			}

			.loginFormContainer input[type="submit"] {
				margin: 20px auto;
				width: 10vw;
			}

			#message {
				color: red;
				margin-top: 10px;
				text-align: center;
				width: 100%;
			}
		</style>
	</head>

	<body>

		<form action="/practiceWeb/loginServlet" method="post" class="loginFormContainer">
			<div class="loginFormItem">
				<h1>Đăng nhập</h1>
				<input type="text" name="userName" placeholder="User Name" required>
				<input type="password" name="password" placeholder="Password" required>
				<input type="submit" value=" Log In" name="login">
			</div>
		</form>
		<h4 id="message" style="color: red; margin-top: 10px;">
			<% String message=(String) request.getAttribute("errorMessage"); %>
			<% if (message !=null) { %>
				<%= message %>
			<% } %>
		</h4>

	</body>

	</html>