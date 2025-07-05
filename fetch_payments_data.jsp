<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Payments Table</title>
    <style>
        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            text-align: left;
        }
        th, td {
            padding: 10px;
            border: 1px solid #ddd;
        }
        th {
            background-color: #f4f4f4;
        }
        tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        tr:hover {
                    background-color: red;
                    }
    </style>
</head>
<body>
    <h1 style="text-align:center;">Payments Table</h1>
    <table>
        <thead>
            <tr>
                <th>Card Number</th>
                <th>Expiry Date</th>
                <th>CVV</th>
                <th>Card Holder Name</th>
                <th>Email</th>
            </tr>
        </thead>
        <tbody>
            <%
                Connection conn = null;
                Statement stmt = null;
                ResultSet rs = null;
                
                try {
                    // Database connection details
                    String jdbcURL = "jdbc:oracle:thin:@//localhost:1521/XE"; // Update with your DB URL
                    String dbUser = "system"; // Update with your username
                    String dbPassword = "2727"; // Update with your password
                    
                    // Load Oracle JDBC driver
                    Class.forName("oracle.jdbc.driver.OracleDriver");
                    
                    // Establish the connection
                    conn = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);
                    
                    // Create SQL statement
                    String sql = "SELECT cardnumber, expirydate, cvv, card_holder_name, email FROM payments";
                    stmt = conn.createStatement();
                    rs = stmt.executeQuery(sql);
                    
                    // Loop through the result set
                    while (rs.next()) {
                        String cardNumber = rs.getString("cardnumber");
                        String expiryDate = rs.getString("expirydate");
                        int cvv = rs.getInt("cvv");
                        String cardHolderName = rs.getString("card_holder_name");
                        String email = rs.getString("email");
            %>
                        <tr>
                            <td><%= cardNumber %></td>
                            <td><%= expiryDate %></td>
                            <td><%= cvv %></td>
                            <td><%= cardHolderName %></td>
                            <td><%= email %></td>
                        </tr>
            <%
                    }
                } catch (Exception e) {
                	out.println("<tr><td colspan='4'>Error: " + e.getMessage() + "</td></tr>");
            %>
                    <tr>
                        <td colspan="5" style="text-align:center;color:red;">Error fetching data</td>
                    </tr>
            <%
                } finally {
                    // Close resources
                    if (rs != null) try { rs.close(); } catch (SQLException ignored) {}
                    if (stmt != null) try { stmt.close(); } catch (SQLException ignored) {}
                    if (conn != null) try { conn.close(); } catch (SQLException ignored) {}
                }
            %>
        </tbody>
    </table>
</body>
</html>
