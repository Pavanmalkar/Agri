<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%
try {
    // Retrieve parameters from the request
    String cardNumber = request.getParameter("cardNumber");
    String expiryDate = request.getParameter("expiryDate");
    String cvv = request.getParameter("cvv");
    String cardHolderName = request.getParameter("card_holder_name");
    String email = request.getParameter("email");

    // Validate input fields
    if (cardNumber == null || expiryDate == null || cvv == null || cardHolderName == null || email == null) {
        out.println("<h3>All fields are required. Please fill them out.</h3>");
        return;
    }

    Connection conn = null;
    PreparedStatement pst = null;

    try {
        // Establish connection to the Oracle database
        Class.forName("oracle.jdbc.driver.OracleDriver");
        conn = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/XE", "system", "2727");

        // Prepare SQL insert statement
        String sql = "INSERT INTO payments (cardNumber, expiryDate, cvv, card_holder_name, email) VALUES (?, ?, ?, ?, ?)";
        pst = conn.prepareStatement(sql);

        pst.setString(1, cardNumber);
        pst.setString(2, expiryDate);
        pst.setString(3, cvv);
        pst.setString(4, cardHolderName);
        pst.setString(5, email);

        // Execute the update and check the result
        int rowsInserted = pst.executeUpdate();

        if (rowsInserted > 0) {
            // Redirect to thankyou.jsp after successful insertion
            session.setAttribute("message", "Data stored successfully!");
            response.sendRedirect("thankyou.jsp");
        } else {
            out.println("<h3>Failed to store the data. Please try again.</h3>");
        }
    } catch (Exception e) {
        // Handle database errors
        out.println("<h3>Error occurred while processing your request:</h3>");
        out.println("<pre>" + e.getMessage() + "</pre>");
        e.printStackTrace();
    } finally {
        // Close resources
        if (pst != null) pst.close();
        if (conn != null) conn.close();
    }
} catch (Exception e) {
    // Handle unexpected errors
    out.println("<h3>Unexpected error occurred:</h3>");
    e.printStackTrace();
}
%>
