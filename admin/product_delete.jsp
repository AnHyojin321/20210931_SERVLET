<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.IOException" %>
<%@ page import="java.util.logging.Level" %>
<%@ page import="java.util.logging.Logger" %>
<%@ page import="javax.servlet.ServletException" %>
<%@ page import="javax.servlet.annotation.WebServlet" %>
<%@ page import="javax.servlet.http.HttpServlet" %>
<%@ page import="javax.servlet.http.HttpServletRequest" %>
<%@ page import="javax.servlet.http.HttpServletResponse" %>

<%
    Connection conn = null;
    PreparedStatement pstmtSelect = null;
    PreparedStatement pstmtDelete = null;
    ResultSet rs = null;

    try {
        // Establish a database connection (replace the connection details with yours)
        String url = "jdbc:mysql://localhost:3306/jadam_20210931";
        String username = "admin";
        String password = "123123";

        Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection(url, username, password);

        // Get the product ID from the request parameter
        String productId = request.getParameter("id");

        // Select query to check if the product exists
        String selectQuery = "SELECT * FROM products WHERE p_id = ?";
        pstmtSelect = conn.prepareStatement(selectQuery);
        pstmtSelect.setString(1, productId);
        rs = pstmtSelect.executeQuery();

        if (rs.next()) {
            // If the product exists, proceed with deletion

            // Delete query
            String deleteQuery = "DELETE FROM products WHERE p_id = ?";
            pstmtDelete = conn.prepareStatement(deleteQuery);
            pstmtDelete.setString(1, productId);
            pstmtDelete.executeUpdate();
        }

        // Redirect to Product_edit.jsp after successful deletion
        response.sendRedirect("Product_edit.jsp");

    } catch (ClassNotFoundException | SQLException | IOException ex) {
        Logger.getLogger(ProductDeleteServlet.class.getName()).log(Level.SEVERE, null, ex);
        // Handle exceptions as needed
    } finally {
        // Close resources in the finally block
        try {
            if (rs != null) {
                rs.close();
            }
            if (pstmtSelect != null) {
                pstmtSelect.close();
            }
            if (pstmtDelete != null) {
                pstmtDelete.close();
            }
            if (conn != null) {
                conn.close();
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDeleteServlet.class.getName()).log(Level.SEVERE, null, ex);
            // Handle exceptions as needed
        }
    }
%>
