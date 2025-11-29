<!-- <%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Welcome Page</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: "Segoe UI", Arial, sans-serif;
            background: linear-gradient(yellow, green, orange);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .container {
            text-align: center;
            background: rgba(255, 255, 255, 0.15);
            padding: 40px 60px;
            border-radius: 20px;
            backdrop-filter: blur(10px);
            color: white;
            box-shadow: 0 8px 20px rgba(0,0,0,0.2);
            animation: fadeIn 1.5s ease;
        }

        h1 {
            font-size: 42px;
            margin-bottom: 10px;
            letter-spacing: 1px;
        }

        .author {
            font-size: 16px;
            opacity: 0.8;
            margin-top: 5px;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }
    </style>
</head>

<body>
    <div class="container">
        <h1>Welcome to DevOps</h1>
        <div class="author">- Puneeth Kumar Reddy</div>
    </div>
</body>
</html>
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Jenkins Test Page</title>
    <style>
        body { font-family: Arial; margin: 20px; }
        .box { padding: 15px; background: #f2f2f2; border-radius: 8px; width: 400px; }
        input, select { padding: 6px; margin-top: 5px; width: 100%; }
        button { padding: 8px 12px; margin-top: 12px; }
        .info { margin-top: 20px; background: #e8ffe8; padding: 10px; border-radius: 6px; }
    </style>
</head>
<body>

<h2>Jenkins Automation Test Page</h2>
<p>This page is deployed through Tomcat to verify Jenkins CI/CD pipeline.</p>

<div class="box">
    <form action="process.jsp" method="post">
        <label><b>Your Name</b></label>
        <input type="text" name="username" placeholder="Enter name" required>

        <label><b>Select Environment</b></label>
        <select name="environment">
            <option value="dev">Development</option>
            <option value="qa">QA</option>
            <option value="prod">Production</option>
        </select>

        <label><b>Comments</b></label>
        <input type="text" name="comments" placeholder="Any message">

        <button type="submit">Submit</button>
    </form>
</div>

<div class="info">
    <h3>Server Info (changes on every deploy):</h3>
    <p><b>Current Time:</b> <%= new java.util.Date() %></p>
    <p><b>Server:</b> <%= request.getServerName() %>:<%= request.getServerPort() %></p>
    <p><b>JSP Reload Counter:</b> <%= Math.round(Math.random() * 100000) %></p>
</div>

</body>
</html>

