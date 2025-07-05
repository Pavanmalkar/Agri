<%@ page import="java.sql.*, java.time.LocalDateTime" %>
<%
    Connection con = null;
    PreparedStatement pst = null;
    
    try {
        // Database connection
        Class.forName("oracle.jdbc.driver.OracleDriver");
        con = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/XE", "system", "2727");

        // Retrieve product details from request
        String productName = request.getParameter("name");
        double price = Double.parseDouble(request.getParameter("price"));
        String image = request.getParameter("image");
        String size = request.getParameter("size");
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        String userEmail = request.getParameter("email");

        // Default status
        String status = "Pending";

        // Prepare SQL statement (without ID column)
        String query = "INSERT INTO cart (PRODUCT_NAME, PRICE, IMAGE, SIZES, QUANTITY, USER_EMAIL, STATUS, ADDED_DATE) " +
                       "VALUES (?, ?, ?, ?, ?, ?, ?, SYSTIMESTAMP)";

        pst = con.prepareStatement(query);
        pst.setString(1, productName);
        pst.setDouble(2, price);
        pst.setString(3, image);
        pst.setString(4, size);
        pst.setInt(5, quantity);
        pst.setString(6, userEmail);
        pst.setString(7, status);

        // Execute insert
        int rows = pst.executeUpdate();
        
        if (rows > 0) {
            out.println("<script>alert('Product added to cart successfully!');</script>");
            response.sendRedirect("cart_success.jsp"); // Redirect to cart page
        } else {
            out.println("<script>alert('Failed to add product. Try again.');</script>");
            request.getRequestDispatcher("product.jsp").include(request, response);
        }

    } catch (Exception e) {
        e.printStackTrace();
        out.println("<script>alert('Database error! Check logs.');</script>");
        request.getRequestDispatcher("product.jsp").include(request, response);
    } finally {
        // Close resources
        if (pst != null) try { pst.close(); } catch (Exception e) {}
        if (con != null) try { con.close(); } catch (Exception e) {}
    }
%>
