<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>Register Form</title>
    </head>

    <body>
        <form action="" method="post">
            <h1>Form</h1><br>
            <label>Your name: </label>
            <input type="text" id="name" name="name"><br>
            <label>Email Address: </label>
            <input type="email" id="email" name="email"><br>          
            <label>Phone: </label>
            <input type="text" id="phone" name="phone"><br>
            <label>Gender:</label>
            <label for="male" class="gender">
                <input type="radio" id="male" name="gender" value="0" required>
                Nam
            </label>
            <label for="female" class="gender">
                <input type="radio" id="female" name="gender" value="1" required>
                Nữ
            </label><br>
            <label>BirthDay: </label>
            <input type="date" id="birthday" name="birthday"><br>         
            <label>&nbsp</label><br>
            <input type="submit" value="Đăng ký" id="submit">
        </form>
    </body>

    </html>