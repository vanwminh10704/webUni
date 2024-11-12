<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title> mẫu khảo sát thông tin người dùnge</title>
        <style>
            form{
                background-color: #f0f0f0;
                max-width: 400px;
                padding: 20px;
            }
            form h1{
                text-transform: uppercase;
            }
        </style>
    </head>

    <body>
        <form action="/practiceWeb/learnGetAndEditData/getInputData" method="post">
            <h1> mẫu khảo sát thông tin người dùng </h1>
            <label for="name">Tên:</label>
            <input type="text" id="name" name="name" required><br><br>

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required><br><br>

            <label for="gender">Giới tính:</label>
            <input type="radio" id="male" name="gender" value="male">
            <label for="male">Nam</label>
            <input type="radio" id="female" name="gender" value="female">
            <label for="female">Nữ</label>
            <input type="radio" id="other" name="gender" value="other">
            <label for="other">Khác</label><br><br>

            <!-- Date of Birth -->
            <label for="birthday">Ngày sinh:</label>
            <input type="date" id="birthday" name="birthday" required><br><br>

            <label for="career">Công việc:</label>
            <input type="text" id="career" name="career" required><br><br>

            <label>Quê quán</label>
            <select name="Address" required>
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
            <label for="shippingAddress">Nơi giao hàng:</label>
            <select id="shippingAddress" name="shippingAddress" required>
                <option name="Type" value="Office">Cơ Quan</option>

                <option name="Type" value="Home">Tại nhà</option>
            </select><br><br>

            <!-- Submit Button -->
            <input type="submit" value="Send">

        </form>
    </body>

    </html>