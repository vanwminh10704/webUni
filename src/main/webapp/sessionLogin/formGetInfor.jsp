<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>Form điền thông tin</title>
    </head>

    <body>
        <form action="/practiceWeb/getData" method="post">
        	<h1>Form điền thông tin người dùng</h1>

            <label for="name">Tên:</label>
            <input type="text" id="name" name="name" required><br><br>

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required><br><br>
            
            <label>Address</label>
            <select name="address" required>
                <option name="address" value="" disabled selected>Chọn nơi ở</option>
                <option name="address" value="Ha Noi">Hà Nội</option>
                <option name="address" value="Hai Phong">Hải Phòng</option>
                <option name="address" value="Quang Ninh">Quảng Ninh</option>
                <option name="address" value="Hue">Huế</option>
                <option name="address" value="Da Nang">Đà Nẵng</option>
                <option name="address" value="Dong Nai">Đồng Nai</option>
                <option name="address" value="TP HCM">TP Hồ Chí Minh</option>`
                <option name="address" value="Can Tho">Cần Thơ</option>
            </select> <br>

            <label for="gender">Giới Tính:</label>
            <input type="radio" id="male" name="gender" value="male" required>
            <label for="male">Nam</label>
            <input type="radio" id="female" name="gender" value="female" required>
            <label for="female">Nữ</label> <br> <br>

            <label for="birthday">Birthday:</label>
            <input type="date" id="birthday" name="birthday" required><br><br>
            
			<label for="phoneNumber">Phone Number:</label>
            <input type="phoneNumber" id="phoneNumber" name="phoneNumber" required><br><br>
            
            <input type="submit" value="Send It">
        </form>
    </body>

    </html>