<%@ page import="project.ConnectionProvider" %>
<%@ page import="java.sql.*" %>
<%
    try {
        String email = session.getAttribute("email").toString();
        String address = request.getParameter("address");
        String city = request.getParameter("city");
        String state = request.getParameter("state");
        String country = request.getParameter("country");
        String mobileNumber = request.getParameter("mobileNumber");
        String paymentMethod = request.getParameter("paymentMethod");
        String transactionId = request.getParameter("transactionId");
        String status = "processing";

        Connection con = ConnectionProvider.getCon();

        // Update the users table
        PreparedStatement ps = con.prepareStatement("update users set address=?, city=?, state=?, country=?, mobileNumber=? where email=?");
        ps.setString(1, address);
        ps.setString(2, city);
        ps.setString(3, state);
        ps.setString(4, country);
        ps.setString(5, mobileNumber);
        ps.setString(6, email);
        ps.executeUpdate();

        // Update the cart table
        PreparedStatement ps1 = con.prepareStatement("update cart set address=?, city=?, state=?, country=?, mobileNumber=?, orderDate=now(), deliveryDate=DATE_ADD(orderDate, INTERVAL 7 DAY), paymentMethod=?, transactionID=?, status=? where email=? and address is NULL");
        ps1.setString(1, address);
        ps1.setString(2, city);
        ps1.setString(3, state);
        ps1.setString(4, country);
        ps1.setString(5, mobileNumber);
        ps1.setString(6, paymentMethod);
        ps1.setString(7, transactionId);
        ps1.setString(8, status);
        ps1.setString(9, email);
        ps1.executeUpdate();

        response.sendRedirect("bill.jsp");
    } catch (SQLException e) {
        e.printStackTrace();
        response.sendRedirect("error.jsp");
    }
%>
