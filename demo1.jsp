<%@ page import="java.sql.*" %>
<%
    Connection conn = null;
    try {
        // Load Oracle JDBC Driver
        Class.forName("oracle.jdbc.OracleDriver");

        // Correct JDBC URL
        conn = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xepdb1", "system", "2727");

        if (conn != null) {
            out.println("<h3 style='color: green;'>Database Connection Successful!</h3>");
        } else {
            out.println("<h3 style='color: red;'>Database Connection Failed!</h3>");
        }
    } catch (Exception e) {
        out.println("<h3 style='color: red;'>Error: " + e.toString() + "</h3>");
        e.printStackTrace();
    } finally {
        if (conn != null) conn.close();
    }
%>
