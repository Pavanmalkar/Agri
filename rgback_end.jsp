<!-- rgback_end.jsp -->
<%@ page import="java.sql.*" %>
<%
    Connection con = null;
    try {
        Class.forName("oracle.jdbc.driver.OracleDriver");
        con = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/XE", "system", "2727");
        
        String fname = request.getParameter("fname");
        String lname = request.getParameter("lname");
        String email = request.getParameter("mail");
        String pass1 = request.getParameter("pass1");
        String pass2 = request.getParameter("pass2");
        String role = "user";
        
        if (fname.equals("admin") && lname.equals("user") && email.equals("admin@gmail.com") && pass1.equals("admin@123")) {
            role = "admin";
        }
        
        if (!pass1.equals(pass2)) {
            out.println("<script>alert('Passwords do not match!');</script>");
            request.getRequestDispatcher("register.jsp").include(request, response);
            return;
        }
        
        String checkQuery = "SELECT COUNT(*) FROM register WHERE email = ?";
        PreparedStatement checkStmt = con.prepareStatement(checkQuery);
        checkStmt.setString(1, email);
        ResultSet rs = checkStmt.executeQuery();
        
        if (rs.next() && rs.getInt(1) > 0) {
            out.println("<script>alert('User already exists. Please sign in.');</script>");
            request.getRequestDispatcher("sign-in.jsp").include(request, response);
        } else {
            String query = "INSERT INTO register (fname, lname, email, password, role) VALUES (?, ?, ?, ?, ?)";
            PreparedStatement pst = con.prepareStatement(query);
            pst.setString(1, fname);
            pst.setString(2, lname);
            pst.setString(3, email);
            pst.setString(4, pass1);
            pst.setString(5, role);
            
            int rows = pst.executeUpdate();
            if (rows > 0) {
                out.println("<script>alert('Registration successful!');</script>");
                request.getRequestDispatcher("sign-in.jsp").forward(request, response);
            } else {
                out.println("<script>alert('Registration failed. Please try again.');</script>");
                request.getRequestDispatcher("register.jsp").include(request, response);
            }
        }
        
        if (rs != null) rs.close();
        if (checkStmt != null) checkStmt.close();
        if (con != null) con.close();
    } catch (Exception e) {
        e.printStackTrace();
        out.println("<script>alert('An error occurred: " + e.getMessage() + "');</script>");
        request.getRequestDispatcher("register.jsp").include(request, response);
    }
%>