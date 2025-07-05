<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

<%
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String message = request.getParameter("message");

    Connection conn = null;
    PreparedStatement pstmt = null;

    try {
        Class.forName("oracle.jdbc.driver.OracleDriver");
        conn = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/XE", "system", "2727");

        // Ensuring table name is referenced correctly
        String sql = "INSERT INTO contact_messages (name, email, message) VALUES (?, ?, ?)";

        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, name);
        pstmt.setString(2, email);
        pstmt.setString(3, message);

        int rowsInserted = pstmt.executeUpdate();

        if (rowsInserted > 0) {
            out.println("<script>alert('Message sent successfully!'); window.location='contact-us.jsp';</script>");
        } else {
            out.println("<script>alert('Failed to send message. Please try again.'); window.location='contact-us.jsp';</script>");
        }
    } catch (SQLException e) {
        out.println("<script>alert('Database Error: " + e.getMessage() + "'); window.location='contact-us.jsp';</script>");
        e.printStackTrace();
    } catch (Exception e) {
        out.println("<script>alert('Error: " + e.getMessage() + "'); window.location='contact-us.jsp';</script>");
        e.printStackTrace();
    } finally {
        try {
            if (pstmt != null) pstmt.close();
            if (conn != null) conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>
