<%@ page session="true" %>
<%
    String adminEmail = (String) session.getAttribute("email");
    if (adminEmail == null || !adminEmail.equals("admin@gmail.com")) {
        response.sendRedirect("sign-in.jsp");
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="admin_dashboard.css">
</head>
<body>
    <div class="dashboard-container">
        <h1>Admin Dashboard</h1>
        <div class="dashboard-options">
            <a href="cart.jsp" class="dashboard-item">Cart</a>
            <a href="Fetch_contact_data.jsp" class="dashboard-item">Contact Messages</a>
            <a href="fetch_payments_data.jsp" class="dashboard-item">User Details</a>
            <br>
            <hr>
        </div>
        <a href="home.jsp" class="home-btn">Go to Home</a>
    </div>
</body>
</html>
