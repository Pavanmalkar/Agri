<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    String email = (String) session.getAttribute("email");
    if (email == null) {
        response.sendRedirect("sign-in.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Cart Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
            background-color: #f4f4f4;
        }
        h2 {
            text-align: center;
            color: #333;
        }
        table {
            width: 90%;
            margin: auto;
            border-collapse: collapse;
            background: white;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }
        table, th, td {
            border: 1px solid #ddd;
        }
        th, td {
            padding: 12px;
            text-align: center;
        }
        th {
            background-color: #4CAF50;
            color: white;
        }
        img {
            width: 80px;
            height: 80px;
            border-radius: 5px;
        }
        .no-items {
            text-align: center;
            padding: 20px;
            font-size: 18px;
            color: #888;
        }
    </style>
</head>
<body>

    <h2>Your Cart</h2>

    <table>
        <tr>
            <th>Product Name</th>
            <th>Price</th>
            <th>Image</th>
            <th>Size</th>
            <th>Quantity</th>
            <th>Total Price</th>
            <th>Status</th>
            <th>Added Date</th>
        </tr>

        <%
            Connection conn = null;
            PreparedStatement pstmt = null;
            ResultSet rs = null;

            try {
                Class.forName("oracle.jdbc.driver.OracleDriver");
                conn = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/XE", "system", "2727");

                String query = "SELECT product_name, price, image, sizes, quantity, price * quantity AS total_price, status, added_date FROM cart WHERE user_email = ?";
                pstmt = conn.prepareStatement(query);
                pstmt.setString(1, email);
                rs = pstmt.executeQuery();

                boolean hasItems = false;
                while (rs.next()) {
                    hasItems = true;
        %>
        <tr>
            <td><%= rs.getString("product_name") %></td>
            <td>Rs <%= rs.getDouble("price") %></td>
            <td><img src="<%= rs.getString("image") %>" alt="Product Image"></td>
            <td><%= rs.getString("sizes") %></td>
            <td><%= rs.getInt("quantity") %></td>
            <td>Rs <%= rs.getDouble("total_price") %></td>
            <td><%= rs.getString("status") %></td>
            <td><%= rs.getTimestamp("added_date") %></td>
        </tr>
        <%
                }
                if (!hasItems) {
        %>
        <tr>
            <td colspan="8" class="no-items">No items in your cart</td>
        </tr>
        <%
                }
            } catch (Exception e) {
                e.printStackTrace();
                out.println("<tr><td colspan='8' class='no-items'>Error loading cart</td></tr>");
            } finally {
                if (rs != null) rs.close();
                if (pstmt != null) pstmt.close();
                if (conn != null) conn.close();
            }
        %>
    </table>

</body>
</html>
