<%@ page import="java.sql.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="javax.servlet.*" %>
<%
    String email = request.getParameter("email");
    String password = request.getParameter("password");

    Connection con = null;
    PreparedStatement pst = null;
    ResultSet rs = null;

    try {
        Class.forName("oracle.jdbc.driver.OracleDriver");
        con = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/XE", "system", "2727");

        String query = "SELECT role FROM register WHERE LOWER(email) = LOWER(?) AND password = ?";
        pst = con.prepareStatement(query);
        pst.setString(1, email);
        pst.setString(2, password);
        rs = pst.executeQuery();

        if (rs.next()) {
            String role = rs.getString("role").trim().toLowerCase(); // Ensure no extra spaces & case insensitivity

            // Store user email & role in session
            HttpSession userSession = request.getSession();
            userSession.setAttribute("email", email);
            userSession.setAttribute("role", role);

            String redirectPage = "admin".equals(role) ? "adminDashboard.jsp" : "home.jsp";
            String loginMessage = "admin".equals(role) ? "Logged in successfully as Admin!" : "Logged in successfully as User!";
%>
            <script>
                alert("<%= loginMessage %>");
                window.location.href = "<%= redirectPage %>";
            </script>
<%
        } else {
%>
            <script>
                alert("Invalid email or password! Please try again.");
                window.location.href = "sign-in.jsp";
            </script>
<%
        }
    } catch (Exception e) {
        e.printStackTrace();
%>
        <script>
            alert("An error occurred: <%= e.getMessage() %>");
            window.location.href = "sign-in.jsp";
        </script>
<%
    } finally {
        try {
            if (rs != null) rs.close();
            if (pst != null) pst.close();
            if (con != null) con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>
