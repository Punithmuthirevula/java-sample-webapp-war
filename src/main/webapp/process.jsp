<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    // simple HTML-escape helper to avoid echoing raw input
    String escapeHtml(String s) {
        if (s == null) return "";
        return s.replace("&","&amp;")
                .replace("<","&lt;")
                .replace(">","&gt;")
                .replace("\"","&quot;")
                .replace("'","&#x27;");
    }

    String username = escapeHtml(request.getParameter("username"));
    String environment = escapeHtml(request.getParameter("environment"));
    String comments = escapeHtml(request.getParameter("comments"));
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <title>Submission Result</title>
    <style>
        body{font-family:Inter,Segoe UI,Arial,sans-serif;background:#071027;color:#e6eef6;display:flex;align-items:center;justify-content:center;height:100vh;margin:0;padding:24px}
        .panel{max-width:760px;width:100%;background:linear-gradient(180deg,rgba(255,255,255,0.02),rgba(255,255,255,0.01));padding:24px;border-radius:12px;color:#dbeafe}
        h2{margin-top:0}
        .field{background:rgba(255,255,255,0.02);padding:10px;border-radius:8px;margin:8px 0}
        a.btn{display:inline-block;margin-top:12px;padding:10px 14px;background:#06b6d4;color:#022;border-radius:8px;text-decoration:none;font-weight:700}
        .meta{font-size:13px;color:#94a3b8;margin-top:12px}
    </style>
</head>
<body>
<div class="panel">
    <h2>Submission Received</h2>
    <p class="meta">Below is the sanitized data your browser submitted to the server.</p>

    <div class="field"><strong>Your Name:</strong>
        <div><%= username %></div>
    </div>

    <div class="field"><strong>Environment:</strong>
        <div><%= environment %></div>
    </div>

    <div class="field"><strong>Comments:</strong>
        <div><pre style="white-space:pre-wrap;margin:0;font-family:inherit;color:inherit"><%= comments %></pre></div>
    </div>

    <div class="meta"><strong>Server:</strong> <%= request.getServerName() %>:<%= request.getServerPort() %></div>
    <div class="meta"><strong>Received At:</strong> <%= new java.util.Date() %></div>

    <a class="btn" href="index.jsp">Back</a>
</div>
</body>
</html>
