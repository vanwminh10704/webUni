<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>Practice Link Tag</title>
    </head>

    <body>
        <header>
            <h1>San Joaquin Valey Town Hall</h1>
        </header>
        <section>
            <p>Welcome to San Valey town hall. We have some fascinating speakers for you this season</p>
        </section>
        <footer>
            <a href="${pageContext.request.contextPath}/helloSvl">link hello java</a><br>
            <a href="./contactForm.jsp">link đăng ký</a><br>
            <a href="./practiceTable.html">Bài tập html</a>
            
            <p>&copy; San Joaquin Valey Town Hall</p>
        </footer>
    </body>

    </html>