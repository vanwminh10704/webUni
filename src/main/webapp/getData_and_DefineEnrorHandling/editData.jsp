<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> Sửa thông tin </title>
</head>
<body>
	<h3>Edit Your Information</h3>
    <form action="/practiceWeb/learnGetAndEditData/editData.java" method="post">
        <!-- Name -->
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" value="${name}" required><br><br>

        <!-- Email -->
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" value="${email}" required><br><br>

        <!-- Gender -->
        <label for="gender">Gender:</label>
        <input type="radio" id="male" name="gender" value="male" <%= "male".equals(request.getAttribute("gender")) ? "checked" : "" %>> Male
        <input type="radio" id="female" name="gender" value="female" <%= "female".equals(request.getAttribute("gender")) ? "checked" : "" %>> Female
        <input type="radio" id="other" name="gender" value="other" <%= "other".equals(request.getAttribute("gender")) ? "checked" : "" %>> Other<br><br>

        <!-- Date of Birth -->
        <label for="birthday">Date of Birth:</label>
        <input type="date" id="birthday" name="birthday" value="${birthday}" required><br><br>

        <!-- Career -->
        <label for="career">Career:</label>
        <input type="text" id="career" name="career" value="${career}" required><br><br>

        <!-- Address -->
        <label>Address:</label>
        <select name="address">
            <option value="Ha Noi" <%= "Ha Noi".equals(request.getAttribute("address")) ? "selected" : "" %>>Hà Nội</option>
            <option value="Hai Phong" <%= "Hai Phong".equals(request.getAttribute("address")) ? "selected" : "" %>>Hải Phòng</option>
            <option value="Quang Ninh" <%= "Quang Ninh".equals(request.getAttribute("address")) ? "selected" : "" %>>Quảng Ninh</option>
            <option value="Hue" <%= "Hue".equals(request.getAttribute("address")) ? "selected" : "" %>>Huế</option>
            <option value="Da Nang" <%= "Da Nang".equals(request.getAttribute("address")) ? "selected" : "" %>>Đà Nẵng</option>
            <option value="Dong Nai" <%= "Dong Nai".equals(request.getAttribute("address")) ? "selected" : "" %>>Đồng Nai</option>
            <option value="TP HCM" <%= "TP HCM".equals(request.getAttribute("address")) ? "selected" : "" %>>TP Hồ Chí Minh</option>
            <option value="Can Tho" <%= "Can Tho".equals(request.getAttribute("address")) ? "selected" : "" %>>Cần Thơ</option>
        </select><br><br>

        <!-- Shipping Type -->
        <label for="shippingAddress">Shipping Type:</label>
        <select id="shippingAddress" name="shippingAddress">
            <option value="Office" <%= "Office".equals(request.getAttribute("shippingAddress")) ? "selected" : "" %>>Co Quan</option>
            <option value="Home" <%= "Home".equals(request.getAttribute("shippingAddress")) ? "selected" : "" %>>Tại nhà</option>
        </select><br><br>

        <!-- Submit Button -->
        <input type="submit" value="Update">
        <input type="submit" value="Confirm">
    </form>
</body>
</html>