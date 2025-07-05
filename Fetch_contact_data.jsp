 <%@ page import="java.sql.*" %>
 <%@ page import="java.util.*" %>
        <!DOCTYPE html>
        <html>
        <head>
            <title>Contact Messages</title>
            <style>
                table {
                    width: 80%;
                    border-collapse: collapse;
                    margin: 20px auto;
                }
                th, td {
                    border: 1px solid #ddd;
                    padding: 8px;
                    text-align: left;
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
            <h1 style="text-align:center;">Contact Messages</h1>

            <table>
                <thead>
                    <tr>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Message</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        // Database connection details
                        String dbURL = "jdbc:oracle:thin:@//localhost:1521/XE";
                        String dbUser = "system";
                        String dbPassword = "2727";
                        Connection connection = null;
                        Statement statement = null;
                        ResultSet resultSet = null;

                        try {
                            // Load Oracle JDBC Driver
                            Class.forName("oracle.jdbc.driver.OracleDriver");
                            
                            // Establish the connection
                            connection = DriverManager.getConnection(dbURL, dbUser, dbPassword);

                            // Query the database
                            String query = "SELECT name, email, message FROM contact_messages";
                            statement = connection.createStatement();
                            resultSet = statement.executeQuery(query);

                            // Display data in the table
                            while (resultSet.next()) {
                                String name = resultSet.getString("name");
                                String email = resultSet.getString("email");
                                String message = resultSet.getString("message");
                    %>
                                <tr>
                                    <td><%= name %></td>
                                    <td><%= email %></td>
                                    <td><%= message %></td>
                                </tr>
                    <%
                            }  
                        } catch (Exception e) {
                            out.println("<tr><td colspan='4'>Error: " + e.getMessage() + "</td></tr>");
                        } finally {
                            // Close resources
                            try {
                                if (resultSet != null) resultSet.close();
                                if (statement != null) statement.close();
                                if (connection != null) connection.close();
                            } catch (SQLException ex) {
                                out.println("<tr><td colspan='4'>Error closing resources: " + ex.getMessage() + "</td></tr>");
                            }
                        }
                    %>
                </tbody>
            </table>
        </body>
        </html>
