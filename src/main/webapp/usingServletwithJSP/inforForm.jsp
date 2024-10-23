<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>Form điền thông tin</title>
    </head>

    <body>
        <form action="/practiceWeb/getInfor.java" method="post">
            <!-- Name -->
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required><br><br>

            <!-- Email -->
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required><br><br>

            <label for="gender">Gender:</label>
            <input type="radio" id="male" name="gender" value="male">
            <label for="male">Male</label>
            <input type="radio" id="female" name="gender" value="female">
            <label for="female">Female</label>
            <input type="radio" id="other" name="gender" value="other">
            <label for="other">Other</label><br><br>

            <!-- Date of Birth -->
            <label for="dob">Date of Birth:</label>
            <input type="date" id="dob" name="dob" required><br><br>

            <label for="career">Career:</label>
            <input type="text" id="career" name="career" required><br><br>
			
			<label>Address</label>
            <select name="Address">
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

            <!-- Shipping Type -->
            <label for="shipType">Shipping Type:</label>
            <select id="shipType" name="shipType" required>
                <option name="Type" value="Office">Co Quan</option>

                <option name="Type" value="Home">Tại nhà</option>
            </select><br><br>

            <!-- Submit Button -->
            <input type="submit" value="Send">
        </form>
    </body>

    </html>