<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>Contact form</title>
        <style>
            .contact-form {
                max-width: 600px;
                margin: 0 auto;
                background-color: #f0f0f0;
                border: 1px solid #ccc;
                padding: 20px;
            }

            .row {
                margin-bottom: 10px;
                display: flex;
                justify-content: center;
                align-items: center;
            }

            label {
                flex:1;
                text-align: left;
                margin-bottom: 10px;
            }

            input[type="text"],
            input[type="tel"],
            input[type="email"],
            textarea,
            select {
                flex: 3;
                margin-left: 8px;
                border: 1px solid #ccc;
            }
        
            input[type="submit"] {
                padding: 5px 15px;
                background-color: orange;
                color: #fff;
                border: none;
                border-radius: 4px;
                cursor: pointer;
            }
        </style>
    </head>

    <body>
        <form action="" class="contact-form">
            <h3>Contact Us Today</h3>
            <div class="row">
                <label for="">First name</label>
                <input type="text">
            </div>

            <div class="row">
                <label for="">Last name</label>
                <input type="text">
            </div>

            <div class="row">
                <label for="">Email</label>
                <input type="email">
            </div>

            <div class="row">
                <label for="">Phone</label>
                <input type="tel">
            </div>

            <div class="row">
                <label for="">Address</label>
                <input type="text">
            </div>

            <div class="row">
                <label for="">City</label>
                <input type="text">
            </div>

            <div class="row">
                <label for="">State</label>
                <select name="" id="">
                    <option value="" disabled selected>Please select your state</option>
                    <option value="">State 1</option>
                    <option value="">State 2</option>
                    <option value="">State 3</option>
                    <option value="">State 4</option>
                </select>
            </div>
            <div class="row">
                <label for="">Zip code</label>
                <input type="text">
            </div>

            <div class="row">
                <label for="">Website or Domain name</label>
                <input type="text">
            </div>

            <div class="row">
                <label>Do you have hosting?</label><br>
                <input type="radio" value="yes"> Yes
                <input type="radio" value="no" > No
            </div>

            <div class="row">
                <label for="">Project Desription</label>
                <textarea name="" id=""></textarea>
            </div>

            <div class="row">
                <input type="submit" value="Send it">
            </div>
        </form>
    </body>

    </html>