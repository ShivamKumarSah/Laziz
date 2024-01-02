<%@page errorPage="error.jsp" %>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/home-style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <style>
    body{
    background: linear-gradient(50deg, #fb3c00, #ffb800);
    }
		.outerpnav{
		diplay: flex;
		justify-content: center;
		}
		
		
		.bg-100{
		height: fit-content;
		margin-left: 15px;
		}
		
		.logo{
		margin:0 15rem ;
		}
		
		.menu{
		margin-right:15rem ;
		height: 70px;
		}
		
		.topnav a, .topnav h2{
			height: 10px;
		}
		
		button{
		margin-left: 15px;
		}
		
        .topnav {
            overflow: hidden;
           background-color: #f5f5f5;
           color: black;
            box-shadow: 2px 4px 8px rgba(0, 0, 0, 0.1);
            display: flex;
            align-items: center;
        }
        
        .fas, .fa, .fab{
        	margin: 0 10px;
        }
       

        .topnav a {
            float: left;
            display: block;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
            transition: background-color 0.3s;
        }

        .topnav h2 {
            float: left;
            margin: 0;
            color: #f2f2f2;
            padding: 14px 16px;
        }

        .topnav a:hover {
            background-color: #ff6347; /* Tomato Orange */
            color: white;
        }

        .topnav a.active {
            background-color: #4CAF50;
            color: white;
        }
        
        table{
        box-shadow: 2px 5px 5px antiquewhite;
        }
        
        td{
        padding: 35px;
        }
        
        .search-container, .form-search{
        padding-top: 10px;
        	display: flex;
        	height: 100%;
         	justidy-content: space-around;
         	align-items: center;
        }
        .menu, .logo{
        display: flex;
        align-items: center;
        }

        

        @media screen and (max-width: 600px) {
            .topnav .search-container {
                float: none;
            }
            .topnav a, .topnav h2 {
                float: none;
                display: block;
                text-align: left;
            }
            .topnav input[type=text], .topnav .search-container button {
                width: 100%;
                margin: 0;
            }
        }
        
        button{
        color: black;
        }

        /* Center align menu items vertically */
        .topnav a, .topnav h2 {
            display: flex;
            align-items: center;
        }
    </style>
</head>
<div class="outerpnav">
<div class="topnav sticky">
<div class="logo">
<img class="d-inline-block" src="../assets/img/gallery/logo.svg" alt="logo">
<span class="text-1000 fs-3 fw-bold ms-2 text-gradient">Laziz</span>
</div>

<div class="menu">
<% String email = session.getAttribute("email").toString(); %>
    <h2><a href="#"> <%= email %> <i class='fas fa-user-alt'></i></a></h2>
			<a href="addNewProduct.jsp">Add New Product <i class='fas fa-plus-square'></i></a>
            <a href="allProductEditProduct.jsp">All Products & Edit Products <i class='fab fa-elementor'></i></a>
            <a href="ordersReceived.jsp">Orders Received <i class="fas fa-archive"></i></a>
            <a href="../signup2.jsp">Logout <i class='fas fa-share-square'></i></a>
</div>

</div>
</div>