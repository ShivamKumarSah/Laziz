<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="../footer.jsp"%>
<%@include file="adminHeader.jsp"%>
<html>
<head>
<link rel="stylesheet" href="../css/ordersReceived-style.css">
<title>Home</title>
<style>
.th-style
{ width: 25%;}
</style>
</head>
<body>
<div style="color: white; text-align: center; font-size: 30px;">Orders Received <i class="fas fa-archive"></i></div>
<%
String msg=request.getParameter("msg");
if("cancel".equals(msg))
{
%>
<h3 class="alert">Order Cancel Successfully!</h3>
<%}%>
<%
if("delivered".equals(msg))
{
%>
<h3 class="alert">Successfully Updated!</h3>
<%}%>
<%
if("invalid".equals(msg))
{
%>
<h3 class="alert">Some thing went wrong! Try Again!</h3>
<%}%>


<table id="customers">
          <tr>
          <th>Mobile Number</th>
            <th scope="col">Product Name</th>
            <th scope="col">Quantity</th>
            <th scope="col"><i class="fa fa-inr"></i> Sub Total</th>
            <th>Address</th>
            <th>City</th>
            <th>State</th>
            <th>Country</th>
            <th scope="col">Order Date</th>
             <th scope="col">Expected Delivery Date</th>
             <th scope="col">Payment Method</th>
              <th scope="col">T-ID</th>
              <th scope="col">Status</th>
              <th scope="col">Cancel order <i class='fas fa-window-close'></i></th>
              <th scope="col">Order Delivered <i class='fas fa-dolly'></i></i></th>
          </tr>
<%
int sno = 0;
try {
    Connection con = ConnectionProvider.getCon();
    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery("SELECT cart.mobile_number, product.product_name, cart.quantity, cart.sub_total, cart.address, cart.city, cart.state, cart.country, cart.orderDate, cart.expectedDeliveryDate, cart.paymentMethod, cart.transactionId, cart.status FROM cart INNER JOIN product ON cart.product_id = product.id WHERE cart.orderDate IS NOT NULL AND cart.status = 'processing';");
    while (rs.next()) {
%>
<tr>
    <td><%=rs.getString(10) %></td>
    <td><%=rs.getString(17) %></td>
    <td><%=rs.getString(3) %></td>
    <td><i class="fa fa-inr"></i>  <%=rs.getString(5) %></td>
    <td><%=rs.getString(6) %></td>
    <td><%=rs.getString(7) %></td>
    <td><%=rs.getString(8) %></td>
    <td><%=rs.getString(9) %></td>
    <td><%=rs.getString(11) %></td>
    <td><%=rs.getString(12) %></td>
    <td><%=rs.getString(13) %></td>
    <td><%=rs.getString(14) %></td>
    <td><%=rs.getString(15) %></td>
    <td><a href="">Cancel <i class='fas fa-window-close'></i></a></td>
    <td><a href="">Delivered <i class='fas fa-dolly'></i></i></a></td>
</tr>
<%
        sno++;
    }
} catch (Exception e) {
    e.printStackTrace();
}
%>
</table>
<br>
<br>
<br>

</body>
</html>
