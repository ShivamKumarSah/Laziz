<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String email = session.getAttribute("email").toString();
String product_id = request.getParameter("id");

try {
    Connection con = ConnectionProvider.getCon();
    Statement st = con.createStatement();

    // Use PreparedStatement to avoid SQL injection
    String deleteQuery = "DELETE FROM cart WHERE email=? AND product_id=? AND address IS NULL";
    PreparedStatement preparedStatement = con.prepareStatement(deleteQuery);
    preparedStatement.setString(1, email);
    preparedStatement.setString(2, product_id);
    
    int rowsAffected = preparedStatement.executeUpdate();

    if (rowsAffected > 0) {
        // Successful deletion
        response.sendRedirect("myCart.jsp?msg=removed");
    } else {
        // No rows affected, meaning the item wasn't found in the cart
        response.sendRedirect("myCart.jsp?msg=notFound");
    }
} catch (SQLException e) {
    // Handle SQL exception
    e.printStackTrace();
    response.sendRedirect("myCart.jsp?msg=error");
} catch (Exception e) {
    // Handle other exceptions
    e.printStackTrace();
    response.sendRedirect("myCart.jsp?msg=error");
}
%>
