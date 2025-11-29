
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <title>Jenkins Test Page</title>
    <style>
        :root{
            --bg1:#0f172a; /* dark navy */
            --accent:#06b6d4; /* teal */
            --card:#0b1220;
            --muted:#94a3b8;
        }
        *{box-sizing:border-box}
        body{margin:0;font-family:Inter,Segoe UI,Arial,sans-serif;background:linear-gradient(135deg,var(--bg1),#071028);color:#e6eef6;min-height:100vh;display:flex;align-items:center;justify-content:center;padding:32px}
        .layout{width:100%;max-width:1100px;display:grid;grid-template-columns:1fr 420px;gap:28px;align-items:start}
        @media (max-width:880px){.layout{grid-template-columns:1fr;max-width:720px}}

        .hero{padding:36px;border-radius:14px;background:linear-gradient(180deg,rgba(255,255,255,0.02),rgba(255,255,255,0.01));box-shadow:0 10px 30px rgba(2,6,23,0.6)}
        .kicker{display:inline-block;padding:6px 10px;background:rgba(6,182,212,0.08);color:var(--accent);border-radius:8px;font-weight:600;margin-bottom:12px}
        h1{margin:0 0 12px;font-size:34px;letter-spacing:0.2px}
        p.lead{margin:0;color:var(--muted);line-height:1.45}

        .card{background:linear-gradient(180deg,rgba(255,255,255,0.02),rgba(255,255,255,0.01));border-radius:12px;padding:20px;color:#dbeafe}
        form{display:flex;flex-direction:column;gap:12px}
        label{font-size:13px;color:var(--muted);display:block}
        input[type="text"], select, textarea{width:100%;padding:10px 12px;border-radius:8px;border:1px solid rgba(255,255,255,0.06);background:rgba(255,255,255,0.02);color:inherit}
        textarea{min-height:80px;resize:vertical}
        .row{display:flex;gap:12px}
        .btn-primary{background:var(--accent);color:#022; padding:10px 14px;border-radius:10px;border:none;font-weight:700;cursor:pointer}
        .meta{font-size:13px;color:var(--muted);margin-top:12px}

        /* right column */
        .side{display:flex;flex-direction:column;gap:18px}
        .side .info{padding:18px;border-radius:10px;background:linear-gradient(180deg,rgba(255,255,255,0.015),transparent)}
        .small{font-size:13px;color:var(--muted)}

        a.back{display:inline-block;margin-top:8px;color:var(--accent);text-decoration:none;font-weight:600}

    </style>
    </head>
<body>

<div class="layout">
    <section class="hero">
        <span class="kicker">Jenkins / Tomcat</span>
        <h1>Jenkins Automation Test Page</h1>
        <p class="lead">This page is deployed to Tomcat by Jenkins to verify a CI/CD pipeline. Use the form to submit test data — the handler will display it safely.</p>

        <div style="height:18px"></div>

        <div class="card">
            <form action="process.jsp" method="post">
                <div>
                    <label for="username">Your Name</label>
                    <input id="username" name="username" type="text" placeholder="Enter name" required />
                </div>

                <div>
                    <label for="environment">Select Environment</label>
                    <select id="environment" name="environment">
                        <option value="dev">Development</option>
                        <option value="qa">QA</option>
                        <option value="prod">Production</option>
                    </select>
                </div>

                <div>
                    <label for="comments">Comments</label>
                    <textarea id="comments" name="comments" placeholder="Any message (optional)"></textarea>
                </div>

                <div class="row">
                    <button type="submit" class="btn-primary">Submit</button>
                    <button type="reset" class="btn-secondary" style="background:transparent;border:1px solid rgba(255,255,255,0.04);color:var(--muted);border-radius:10px;padding:10px 14px;">Reset</button>
                </div>

                <div class="meta">Tip: Each deploy will change the server info displayed in the right column.</div>
            </form>
        </div>
    </section>

    <aside class="side">
        <div class="info card">
            <h3 style="margin:0 0 8px 0">Server Info</h3>
            <p class="small"><b>Current Time:</b> <%= new java.util.Date() %></p>
            <p class="small"><b>Server:</b> <%= request.getServerName() %>:<%= request.getServerPort() %></p>
            <p class="small"><b>JSP Reload Counter:</b> <%= Math.round(Math.random() * 100000) %></p>
            <a class="back" href="#">Refresh</a>
        </div>

        <div class="info card">
            <h4 style="margin:0 0 6px 0">About This App</h4>
            <p class="small">Simple sample WAR to exercise CI/CD. The submit button posts to <code>process.jsp</code> which echoes sanitized input back for validation.</p>
        </div>
    </aside>
</div>

</body>
</html>

