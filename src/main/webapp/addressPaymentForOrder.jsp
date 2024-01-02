<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<html>
<head>
    <link rel="stylesheet" href="css/addressPaymentForOrder-style.css">
    <script src='https://kit.fontawesome.com/a076d05399.js'></script>
    <title>Home</title>
    <script>
        if(window.history.forward(1) != null)
            window.history.forward(1);
    </script>
</head>
<body>
<style>
body{
 background: linear-gradient(50deg, #fb3c00, #ffb800);
}
</style>
    <br>
    <table>
        <thead>
        <%
            String email = session.getAttribute("email").toString();
            int total = 0;
            int sno = 0;
            try {
                Connection con = ConnectionProvider.getCon();
                Statement st = con.createStatement();
                ResultSet rs1 = st.executeQuery("select sum(total) from cart where email='" + email + "' and address is NULL");
                while (rs1.next()) {
                    total = rs1.getInt(1);
                }
        %>
                <tr>
                    <th scope="col"><a href="myCart.jsp"><i class='fas fa-arrow-circle-left'> Back</i></a></th>
                    <th scope="col" style="background-color: yellow;">Total: <i class="fa fa-inr"></i><%= total %> </th>
                </tr>
            </thead>
            <thead>
                <tr>
                    <th scope="col">S.No</th>
                    <th scope="col">Product Name</th>
                    <th scope="col">Category</th>
                    <th scope="col"><i class="fa fa-inr"></i> price</th>
                    <th scope="col">Quantity</th>
                    <th scope="col">Sub Total</th>
                </tr>
            </thead>
            <tbody>
        <%
                ResultSet rs = st.executeQuery("select * from product inner join cart on product.id = cart.product_id and cart.email='" + email + "' and cart.address is NULL");
                while (rs.next()) {
                    sno = sno + 1;
        %>
                    <tr>
                        <td><%= sno %></td>
                        <td><%= rs.getString(2) %></td>
                        <td><%= rs.getString(3) %></td>
                        <td><i class="fa fa-inr"></i> <%= rs.getString(4) %></td>
                        <td> <%= rs.getString(8) %></td>
                        <td><i class="fa fa-inr"></i> <%= rs.getString(10) %></td>
                    </tr>
        <%
                }
                rs.close(); // Close the ResultSet after use

                ResultSet rs2 = st.executeQuery("select * from users where email='" + email + "'");
                while (rs2.next()) {
        %>
                </tbody>
            </table>
            <hr style="width: 100%">
            <form action="addressPaymentForOrderAction.jsp" method="post">
                <div class="left-div">
                    <h3>Enter Address</h3>
                    <input class="input-style" type="text" name="address" value="<%= rs2.getString("address") %>" placeholder="Enter Address" required>
                </div>
            
                <div class="right-div">
                    <h3>Enter city</h3>
                    <input class="input-style" type="text" name="city" value="<%= rs2.getString("city") %>" placeholder="Enter City" required>
                </div>
            
                <div class="left-div">
                    <h3>Enter State</h3>
                    <input class="input-style" type="text" name="state" value="<%= rs2.getString("state") %>" placeholder="Enter State" required>
                </div>
            
                <div class="right-div">
                    <h3>Enter country</h3>
                    <input class="input-style" type="text" name="country" value="<%= rs2.getString("country") %>" placeholder="Enter Country" required>
                </div>

                <div class="left-div">
                    <h3>Enter Mobile Number</h3>
                    <input class="input-style" type="text" name="mobileNumber" value="<%= rs2.getString("mobileNumber") %>" placeholder="Enter Mobile Number" required>
                </div>
            
                <div class="right-div">
                    <h3>Enter Transaction ID</h3>
                    <input class="input-style" type="text" name="transactionId" placeholder="Enter Transaction ID" required>
                </div>
            
                <h3 style="color: white">*If there is no address, it means that you did not set your address!</h3>
                <h3 style="color: white">*This address will also be updated to your profile</h3>
                <hr style="width: 100%">
                <div class="left-div">
                    <h3>Select way of Payment</h3>
                    <select class="input-style" name="paymentMethod">
                        <option value="Cash on delivery(COD)">Cash on delivery(COD)</option>
                        <option value="Online Payment">Online Payment</option>
                    </select>
                </div>
                <button style="width: 40%" class="button" type="submit">Proceed to generate bill & Save</button>
                
            </form>
        </body>
    </html>
<%
        }
        rs2.close(); // Close the ResultSet after use
    } catch (SQLException e) {
        e.printStackTrace();
        response.sendRedirect("error.jsp");
    }
%>
