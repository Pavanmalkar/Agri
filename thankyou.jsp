<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Thank You</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background: url('') no-repeat center center fixed;
            background-size: cover;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            text-align: center;
            background: rgba(255, 255, 255, 0.9);
            padding: 20px 40px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .container img {
            max-width: 80%;
            height: 400px;
            border-radius: 10px;
            margin-bottom: 20px;
        }
        .container h1 {
            font-size: 2.5em;
            color: #333333;
            margin: 0 0 10px;
        }
        .container p {
            font-size: 1.2em;
            color: #666666;
            margin: 0;
        }
        .container a {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #007BFF;
            color: #ffffff;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s;
        }
        .container a:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <img src="img/main/thank2.jpg" alt="Thank You Image">
        <h1>Thank You!</h1>
        <p style='color: blue;'>Your Payment is successfull.</p>
        <%
            // Retrieve the success message from the session
            String message = (String) session.getAttribute("message");
            
            if (message != null) {
                // Display the message from the session
                out.println("<p style='color: green;'>" + message + "</p>");
                
                // Remove the message from the session to avoid showing it on refresh
                session.removeAttribute("message");
            } else {
                // Default fallback message
                out.println("<p style='color: red;'>Your Payment is successfull.</p>");
            }
        %>
        <a href="home.jsp">Go Back to Home</a>
    </div>
</body>
</html>
