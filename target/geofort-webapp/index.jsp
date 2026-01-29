<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>GeoFort-LLC</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            margin: 0;
            padding: 0;
        }
        h1 { color: #333; }
        .button-container { margin: 20px 0; }
        button {
            background-color: #007BFF;
            color: white;
            border: none;
            padding: 10px 20px;
            margin: 5px;
            cursor: pointer;
            font-size: 16px;
            border-radius: 5px;
        }
        button:hover { background-color: #0056b3; }
        footer {
            margin-top: 20px;
            padding: 10px;
            background: #f1f1f1;
        }
        a {
            display: block;
            margin-top: 10px;
            text-decoration: none;
            color: #007BFF;
            font-size: 18px;
        }
        a:hover { text-decoration: underline; }
    </style>
</head>
<body>

<h1>Welcome to GeoFort-LLC</h1>

<!-- Values coming from HomeServlet.java -->
<p><strong>Application:</strong> ${appName}</p>
<p><strong>Server Time:</strong> ${serverTime}</p>

<div class="button-container">
    <button onclick="alert('Button 1 clicked!')">CLICK HERE</button>
    <button onclick="alert('Button 2 clicked!')">CLICK HERE</button>
    <button onclick="alert('Button 3 clicked!')">CLICK HERE</button>
</div>

<a href="https://www.cnn.com" target="_blank">Visit CNN</a>

<footer>Created by Karl-Dee © 2025</footer>

</body>
</html>

