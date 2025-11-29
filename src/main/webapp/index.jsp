<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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

