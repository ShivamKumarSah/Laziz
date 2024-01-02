<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="assets/css/theme.css" rel="stylesheet" />
    <title>Laziz</title>
    <link rel="apple-touch-icon" sizes="180x180" href="assets/img/favicons/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="assets/img/favicons/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="assets/img/favicons/favicon-16x16.png">
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicons/favicon.ico">
    <link rel="manifest" href="assets/img/favicons/manifest.json">
    <meta name="msapplication-TileImage" content="assets/img/favicons/mstile-150x150.png">
    <meta name="theme-color" content="#ffffff">
</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top backdrop shadow-transition"
        data-navbar-on-scroll="data-navbar-on-scroll"
        style="background-image: none; background-color: rgba(255, 255, 255, 0.545); transition: none 0s ease 0s;">
        <div class="container"><a class="navbar-brand d-inline-flex" href="/Laziz/"><img class="d-inline-block"
                    src="assets/img/gallery/logo.svg" alt="logo"><span
                    class="text-1000 fs-3 fw-bold ms-2 text-gradient">Laziz</span></a>
            <button class="navbar-toggler collapsed" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation"><span class="navbar-toggler-icon"> </span></button>
            <div class="navbar-collapse border-top border-lg-0 my-2 mt-lg-0 collapse" id="navbarSupportedContent"
                style="">
                <div class="mx-auto pt-5 pt-lg-0 d-block d-lg-none d-xl-block">
                    
                </div>
                <form class="d-flex mt-4 mt-lg-0 ms-lg-auto ms-xl-0">
                    <div class="input-group-icon pe-2"><svg
                            class="svg-inline--fa fa-search fa-w-16 input-box-icon text-primary" aria-hidden="true"
                            focusable="false" data-prefix="fas" data-icon="search" role="img"
                            xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" data-fa-i2svg="">
                            <path fill="currentColor"
                                d="M505 442.7L405.3 343c-4.5-4.5-10.6-7-17-7H372c27.6-35.3 44-79.7 44-128C416 93.1 322.9 0 208 0S0 93.1 0 208s93.1 208 208 208c48.3 0 92.7-16.4 128-44v16.3c0 6.4 2.5 12.5 7 17l99.7 99.7c9.4 9.4 24.6 9.4 33.9 0l28.3-28.3c9.4-9.4 9.4-24.6.1-34zM208 336c-70.7 0-128-57.2-128-128 0-70.7 57.2-128 128-128 70.7 0 128 57.2 128 128 0 70.7-57.2 128-128 128z">
                            </path>
                        </svg><!-- <i class="fas fa-search input-box-icon text-primary"></i> Font Awesome fontawesome.com -->
                        <input class="form-control border-0 input-box bg-100" type="search" placeholder="Search Food"
                            aria-label="Search">
                    </div>
                    <button class="btn btn-white shadow-warning text-warning" type="submit"> <svg
                            class="svg-inline--fa fa-user fa-w-14 me-2" aria-hidden="true" focusable="false"
                            data-prefix="fas" data-icon="user" role="img" xmlns="http://www.w3.org/2000/svg"
                            viewBox="0 0 448 512" data-fa-i2svg="">
                            <path fill="currentColor"
                                d="M224 256c70.7 0 128-57.3 128-128S294.7 0 224 0 96 57.3 96 128s57.3 128 128 128zm89.6 32h-16.7c-22.2 10.2-46.9 16-72.9 16s-50.6-5.8-72.9-16h-16.7C60.2 288 0 348.2 0 422.4V464c0 26.5 21.5 48 48 48h352c26.5 0 48-21.5 48-48v-41.6c0-74.2-60.2-134.4-134.4-134.4z">
                            </path>
                        </svg><!-- <i class="fas fa-user me-2"></i> Font Awesome fontawesome.com -->Login</button>
                </form>
            </div>
        </div>
    </nav>
    <section>
        <div class="bg-holder"
            style="background-image:url(assets/img/gallery/cta-one-bg.png);background-position:center;background-size:cover;">
        </div>
        <!--/.bg-holder-->
        
        <section >
    <div class="container">
        <div class="row justify-content-center">
            <div class="card w-xxl-75">
                <div class="card-body">
                    <nav>
                        <div class="nav nav-tabs" id="nav-tab" role="tablist">
                            <button class="nav-link mb-3 active" id="nav-signup-tab" data-bs-toggle="tab"
                                data-bs-target="#nav-signup" type="button" role="tab" aria-controls="nav-signup"
                                aria-selected="true"><i class="fas fa-user me-2"></i> SignUp</button>
                            <button class="nav-link mb-3" id="nav-login-tab" data-bs-toggle="tab"
                                data-bs-target="#nav-login" type="button" role="tab" aria-controls="nav-login"
                                aria-selected="false"><i class="fas fa-key me-2"></i> Login</button>
                        </div>
                    </nav>
                    <div class="tab-content mt-3" id="nav-tabContent">
                        <div class="tab-pane fade show active" id="nav-signup" role="tabpanel"
                            aria-labelledby="nav-signup-tab">
                            <!-- Signup Form -->
                            <form action="signupAction.jsp" method="post" class="row g-3 align-items-center">
                                <div class="col-md-6">
                                    <div class="input-group">
                                        <span class="input-group-text">
                                            <i class="fas fa-user text-danger"></i>
                                        </span>
                                        <input type="text" name="name" placeholder="Enter Name"
                                            class="form-control" required>
                                    </div>
                                    <div class="input-group">
                                        <span class="input-group-text">
                                            <i class="fas fa-envelope text-danger"></i>
                                        </span>
                                        <input type="email" name="email" placeholder="Enter Email"
                                            class="form-control" required>
                                    </div>
                                    
                                    
                                    
                                    
                                    <div class="input-group">
                                        <span class="input-group-text">
                                            <i class="fas fa-lock text-danger"></i>
                                        </span>
                                        <select name="securityQuestion" required class="form-control">
                                            <option value="What was your first car?">What was your first car?</option>
    										<option value="What is the name of your first pet?">What is the name of your first pet?</option>
    	                                    <option value="What elementory school did you attend?">What elementory school did you attend?</option>
    	                                    <option value="What is the name of the toen where you were born?">What is the name of the toen where you were born?</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="input-group">
                                        <span class="input-group-text">
                                            <i class="fas fa-phone-alt text-danger"></i>
                                        </span>
                                        <input type="number" name="mobileNumber"
                                            placeholder="Enter Mobile Number" class="form-control" required>
                                    </div>
                                    
                                    <div class="input-group">
                                        <span class="input-group-text">
                                            <i class="fas fa-key text-danger"></i>
                                        </span>
                                        <input type="password" name="password" placeholder="Enter Password" required
                                            class="form-control">
                                    </div>
                                    
                                    <div class="input-group">
                                        <span class="input-group-text">
                                            <i class="fas fa-question text-danger"></i>
                                        </span>
                                        <input type="text" name="answer" placeholder="Enter Your Answer" required
                                            class="form-control">
                                    </div>
                                    
                                </div>
                                <div class="col-md-12">
                                    <button class="btn btn-danger" type="submit">Signup</button>
                                </div>
                            </form>
                        </div>
                        
                        <%
String msg=request.getParameter("msg");
if("valid".equals(msg))
{
%>
<h4 class="signup-info">Successfully Registered</h4>
<%}%>
<%
if("invalid".equals(msg))
{
%>
<h4>Some thing Went Wrong! Try Again !</h4>
<%}%>
                        <div class="tab-pane fade" id="nav-login" role="tabpanel" aria-labelledby="nav-login-tab">
                            <!-- Login Form -->
                            <form action="loginAction.jsp" method="post" class="row g-3 align-items-center">
                                <div class="col-md-6">
                                    <div class="input-group">
                                        <span class="input-group-text">
                                            <i class="fas fa-envelope text-danger"></i>
                                        </span>
                                        <input type="email" name="email" placeholder="Enter Email"
                                            class="form-control" required>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="input-group">
                                        <span class="input-group-text">
                                            <i class="fas fa-lock text-danger"></i>
                                        </span>
                                        <input type="password" name="password" placeholder="Enter Password"
                                            required class="form-control">
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <button class="btn btn-danger" type="submit">Login</button>
                                </div>
                            </form>
                            <%
String status = request.getParameter("status");
if ("notexist".equals(status)) {
%>
    <h4 class="signup-info">Incorrect Username or Password</h4>
<%
}if ("invalid".equals(status)) {
%>
    <h4>Some thing Went Wrong! Try Again !</h4>
<%
}
%>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>

</section>


            </div>

    </section>

    <section class="py-0 pt-7 bg-1000">

        <div class="container">
            
            
            <hr class="text-900">
            <div class="row">
                <div class="col-6 col-md-4 col-lg-3 col-xxl-2 mb-3">
                    <h5 class="lh-lg fw-bold text-white">COMPANY</h5>
                    <ul class="list-unstyled mb-md-4 mb-lg-0">
                        <li class="lh-lg"><a class="text-200 text-decoration-none" href="#!">About Us</a></li>
                        <li class="lh-lg"><a class="text-200 text-decoration-none" href="#!">Team</a></li>
                        <li class="lh-lg"><a class="text-200 text-decoration-none" href="#!">Careers</a></li>
                        <li class="lh-lg"><a class="text-200 text-decoration-none" href="#!">blog</a></li>
                    </ul>
                </div>
                <div class="col-6 col-md-4 col-lg-3 col-xxl-2 col-lg-3 mb-3">
                    <h5 class="lh-lg fw-bold text-white">CONTACT</h5>
                    <ul class="list-unstyled mb-md-4 mb-lg-0">
                        <li class="lh-lg"><a class="text-200 text-decoration-none" href="#!">Help &amp; Support</a></li>
                        <li class="lh-lg"><a class="text-200 text-decoration-none" href="#!">Partner with us </a></li>
                        <li class="lh-lg"><a class="text-200 text-decoration-none" href="#!">Ride with us</a></li>
                        <li class="lh-lg"><a class="text-200 text-decoration-none" href="#!">Ride with us</a></li>
                    </ul>
                </div>
                <div class="col-6 col-md-4 col-lg-3 col-xxl-2 mb-3">
                    <h5 class="lh-lg fw-bold text-white">LEGAL</h5>
                    <ul class="list-unstyled mb-md-4 mb-lg-0">
                        <li class="lh-lg"><a class="text-200 text-decoration-none" href="#!">Terms &amp; Conditions</a>
                        </li>
                        <li class="lh-lg"><a class="text-200 text-decoration-none" href="#!">Refund &amp;
                                Cancellation</a></li>
                        <li class="lh-lg"><a class="text-200 text-decoration-none" href="#!">Privacy Policy</a></li>
                        <li class="lh-lg"><a class="text-200 text-decoration-none" href="#!">Cookie Policy</a></li>
                    </ul>
                </div>
                <div class="col-6 col-md-4 col-lg-3 col-xxl-2 mb-3">
                    <h5 class="lh-lg fw-bold text-white">LEGAL</h5>
                    <ul class="list-unstyled mb-md-4 mb-lg-0">
                        <li class="lh-lg"><a class="text-200 text-decoration-none" href="#!">Terms &amp; Conditions</a>
                        </li>
                        <li class="lh-lg"><a class="text-200 text-decoration-none" href="#!">Refund &amp;
                                Cancellation</a></li>
                        <li class="lh-lg"><a class="text-200 text-decoration-none" href="#!">Privacy Policy</a></li>
                    </ul>
                </div>
                <div class="col-12 col-md-8 col-lg-6 col-xxl-4">
                    <h5 class="lh-lg fw-bold text-500">FOLLOW US</h5>
                    <div class="text-start my-3"> <a href="#!">
                            <svg class="svg-inline--fa fa-instagram fa-w-14 fs-2 me-2" aria-hidden="true"
                                focusable="false" data-prefix="fab" data-icon="instagram" role="img"
                                xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512">
                                <path fill="#BDBDBD"
                                    d="M224.1 141c-63.6 0-114.9 51.3-114.9 114.9s51.3 114.9 114.9 114.9S339 319.5 339 255.9 287.7 141 224.1 141zm0 189.6c-41.1 0-74.7-33.5-74.7-74.7s33.5-74.7 74.7-74.7 74.7 33.5 74.7 74.7-33.6 74.7-74.7 74.7zm146.4-194.3c0 14.9-12 26.8-26.8 26.8-14.9 0-26.8-12-26.8-26.8s12-26.8 26.8-26.8 26.8 12 26.8 26.8zm76.1 27.2c-1.7-35.9-9.9-67.7-36.2-93.9-26.2-26.2-58-34.4-93.9-36.2-37-2.1-147.9-2.1-184.9 0-35.8 1.7-67.6 9.9-93.9 36.1s-34.4 58-36.2 93.9c-2.1 37-2.1 147.9 0 184.9 1.7 35.9 9.9 67.7 36.2 93.9s58 34.4 93.9 36.2c37 2.1 147.9 2.1 184.9 0 35.9-1.7 67.7-9.9 93.9-36.2 26.2-26.2 34.4-58 36.2-93.9 2.1-37 2.1-147.8 0-184.8zM398.8 388c-7.8 19.6-22.9 34.7-42.6 42.6-29.5 11.7-99.5 9-132.1 9s-102.7 2.6-132.1-9c-19.6-7.8-34.7-22.9-42.6-42.6-11.7-29.5-9-99.5-9-132.1s-2.6-102.7 9-132.1c7.8-19.6 22.9-34.7 42.6-42.6 29.5-11.7 99.5-9 132.1-9s102.7-2.6 132.1 9c19.6 7.8 34.7 22.9 42.6 42.6 11.7 29.5 9 99.5 9 132.1s2.7 102.7-9 132.1z">
                                </path>
                            </svg></a><a href="#!">
                            <svg class="svg-inline--fa fa-facebook fa-w-16 fs-2 mx-2" aria-hidden="true"
                                focusable="false" data-prefix="fab" data-icon="facebook" role="img"
                                xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512">
                                <path fill="#BDBDBD"
                                    d="M504 256C504 119 393 8 256 8S8 119 8 256c0 123.78 90.69 226.38 209.25 245V327.69h-63V256h63v-54.64c0-62.15 37-96.48 93.67-96.48 27.14 0 55.52 4.84 55.52 4.84v61h-31.28c-30.8 0-40.41 19.12-40.41 38.73V256h68.78l-11 71.69h-57.78V501C413.31 482.38 504 379.78 504 256z">
                                </path>
                            </svg></a><a href="#!">
                            <svg class="svg-inline--fa fa-twitter fa-w-16 fs-2 mx-2" aria-hidden="true"
                                focusable="false" data-prefix="fab" data-icon="twitter" role="img"
                                xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512">
                                <path fill="#BDBDBD"
                                    d="M459.37 151.716c.325 4.548.325 9.097.325 13.645 0 138.72-105.583 298.558-298.558 298.558-59.452 0-114.68-17.219-161.137-47.106 8.447.974 16.568 1.299 25.34 1.299 49.055 0 94.213-16.568 130.274-44.832-46.132-.975-84.792-31.188-98.112-72.772 6.498.974 12.995 1.624 19.818 1.624 9.421 0 18.843-1.3 27.614-3.573-48.081-9.747-84.143-51.98-84.143-102.985v-1.299c13.969 7.797 30.214 12.67 47.431 13.319-28.264-18.843-46.781-51.005-46.781-87.391 0-19.492 5.197-37.36 14.294-52.954 51.655 63.675 129.3 105.258 216.365 109.807-1.624-7.797-2.599-15.918-2.599-24.04 0-57.828 46.782-104.934 104.934-104.934 30.213 0 57.502 12.67 76.67 33.137 23.715-4.548 46.456-13.32 66.599-25.34-7.798 24.366-24.366 44.833-46.132 57.827 21.117-2.273 41.584-8.122 60.426-16.243-14.292 20.791-32.161 39.308-52.628 54.253z">
                                </path>
                            </svg></a></div>
                    <h3 class="text-500 my-4">Receive exclusive offers and <br>discounts in your mailbox</h3>
                    <div class="row input-group-icon mb-5">
                        <div class="col-auto"><svg
                                class="svg-inline--fa fa-envelope fa-w-16 input-box-icon text-500 ms-3"
                                aria-hidden="true" focusable="false" data-prefix="fas" data-icon="envelope" role="img"
                                xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" data-fa-i2svg="">
                                <path fill="currentColor"
                                    d="M502.3 190.8c3.9-3.1 9.7-.2 9.7 4.7V400c0 26.5-21.5 48-48 48H48c-26.5 0-48-21.5-48-48V195.6c0-5 5.7-7.8 9.7-4.7 22.4 17.4 52.1 39.5 154.1 113.6 21.1 15.4 56.7 47.8 92.2 47.6 35.7.3 72-32.8 92.3-47.6 102-74.1 131.6-96.3 154-113.7zM256 320c23.2.4 56.6-29.2 73.4-41.4 132.7-96.3 142.8-104.7 173.4-128.7 5.8-4.5 9.2-11.5 9.2-18.9v-19c0-26.5-21.5-48-48-48H48C21.5 64 0 85.5 0 112v19c0 7.4 3.4 14.3 9.2 18.9 30.6 23.9 40.7 32.4 173.4 128.7 16.8 12.2 50.2 41.8 73.4 41.4z">
                                </path>
                            </svg><!-- <i class="fas fa-envelope input-box-icon text-500 ms-3"></i> Font Awesome fontawesome.com -->
                            <input class="form-control input-box bg-800 border-0" type="email" placeholder="Enter Email"
                                aria-label="email">
                        </div>
                        <div class="col-auto">
                            <button class="btn btn-primary" type="submit">Subscribe</button>
                        </div>
                    </div>
                </div>
            </div>
            <hr class="border border-800">
            <div class="row flex-center pb-3">

            </div>
        
        
        
        </div><!-- end of .container-->

    </section>

    <script src="vendors/@popperjs/popper.min.js"></script>
    <script src="vendors/bootstrap/bootstrap.min.js"></script>
    <script src="vendors/is/is.min.js"></script>
    <script src="https://polyfill.io/v3/polyfill.min.js?features=window.scroll"></script>
    <script src="vendors/fontawesome/all.min.js"></script>
    <script src="assets/js/theme.js"></script>

    <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@200;300;400;600;700;900&amp;display=swap"
        rel="stylesheet">
</body>

</html>