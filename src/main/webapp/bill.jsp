<%@ page import="project.ConnectionProvider" %>
<%@ page import="java.sql.*" %>

<head>
    <link rel="stylesheet" href="css/bill.css">
    <title>Bill</title>
</head>
<style>
body{
background-color: white;
}
</style>
<body>
<%
    String email = session.getAttribute("email").toString();
    try 
    {
        int total = 0;
        int sno = 0;
        Connection con = ConnectionProvider.getCon();
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("select sum(total) from cart where email='" + email + "' and status='bill'");
        while (rs.next()) {
            total = rs.getInt(1);
        }
        ResultSet rs2 = st.executeQuery("select * from users inner join cart where cart.email='" + email + "' and cart.status='bill'");
        while (rs2.next()) {
%>
<h3>Laziz (Invoice)</h3>
<hr>
<div class="left-div"><h3>Name:  <%= rs2.getString(1) %></h3></div>
<div class="right-div-right">
    <h3>Email: <%= email %></h3>
</div>
<div class="right-div"><h3>Mobile Number:  <%= rs2.getString(20) %></h3></div>  

<div class="left-div"><h3>Order Date:  <%= rs2.getString(21) %></h3></div>
<div class="right-div-right"><h3>Payment Method:  <%= rs2.getString(23) %></h3></div>
<div class="right-div"><h3>Expected Delivery:  <%= rs2.getString(22) %></h3></div> 

<div class="left-div"><h3>Transaction Id:  <%= rs2.getString(24) %></h3></div>
<div class="right-div-right"><h3>City:  <%= rs2.getString(17) %></h3></div> 
<div class="right-div"><h3>Address:  <%= rs2.getString(16) %></h3></div> 

<div class="left-div"><h3>State:  <%= rs2.getString(18) %></h3></div>
<div class="right-div-right"><h3>Country:  <%= rs2.getString(19) %></h3></div>  

<hr>

<%break;}%>
<br>

<section style="bottom: 25px;">
<h3>Total: <%= total %></h3>

<a onclick="window.print();"><button class="button right-button">Print</button></a>
</section>

<table id="customers">
    <h3>Product Details</h3>
    <tr>
        <th>S.No</th>
        <th>Product Name</th>
        <th>category</th>
        <th>Price</th>
        <th>Quantity</th>
        <th>Sub Total</th>
    </tr>
<%
    ResultSet rs1 = st.executeQuery("select * from cart inner join product on cart.product_id = product.id where cart.email='" + email + "' and cart.status='bill'");
    while (rs1.next()) {
        sno = sno + 1;
%>
        <tr>
            <td><%= sno %></td>
            <td><%= rs1.getString(17) %></td>
            <td><%= rs1.getString(18) %></td>
            <td><%= rs1.getString(19) %></td>
            <td><%= rs1.getString(18) %></td>
            <td><%= rs1.getString(3) %></td>
            <td><%= rs1.getString(35) %></td>
        </tr>
<%
    }
%>
</table>

<%
    } catch(Exception e) {
        System.out.println(e);
    }
%>
<a href="/Laziz/home.jsp"><button class="button right-button">Continue shopping</button></a>
</body>

</html>
