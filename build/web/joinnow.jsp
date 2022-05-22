<%@page import="modal.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

    <head>
        <title>El Paraíso</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700,700i" rel="stylesheet">

        <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
        <link rel="stylesheet" href="css/animate.css">

        <link rel="stylesheet" href="css/owl.carousel.min.css">
        <link rel="stylesheet" href="css/owl.theme.default.min.css">
        <link rel="stylesheet" href="css/magnific-popup.css">

        <link rel="stylesheet" href="css/aos.css">

        <link rel="stylesheet" href="css/ionicons.min.css">

        <link rel="stylesheet" href="css/bootstrap-datepicker.css">
        <link rel="stylesheet" href="css/jquery.timepicker.css">


        <link rel="stylesheet" href="css/flaticon.css">
        <link rel="stylesheet" href="css/icomoon.css">
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>

    <body>

        <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
            <div class="container">
                <a class="navbar-brand" href="index.html">El Paraíso</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav"
                        aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="oi oi-menu"></span> Menu
                </button>

                <div class="collapse navbar-collapse" id="ftco-nav">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item"><a href="welcome.jsp" class="nav-link">Home</a></li>
                        <li class="nav-item"><a href="rooms.jsp" class="nav-link">Rooms & Suites</a></li>
                        <li class="nav-item"><a href="restaurant.jsp" class="nav-link">Restaurant</a></li>
                        <li class="nav-item"><a href="about.jsp" class="nav-link">About</a></li>
                        <li class="nav-item"><a href="Feedbacks.jsp" class="nav-link">Feedbacks</a></li>
                        <li class="nav-item "><a href="signin.jsp" class="nav-link">Sign In</a></li>
                        <li class="nav-item active"><a href="joinnow.jsp" class="nav-link">Join Now</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- END nav -->
        <div class="hero-wrap" style="background-image: url('images/bg_1.jpg');">
            <div class="overlay"></div>
            <div class="container">
                <div class="row no-gutters slider-text d-flex align-itemd-end justify-content-center">
                    <div class="col-md-9 ftco-animate text-center d-flex align-items-end justify-content-center">
                        <div class="text">
                            <p class="breadcrumbs mb-2"><span class="mr-2"><a href="welcome.jsp">Home</a></span> <span>Join Now</span>
                            </p>
                            <h1 class="mb-4 bread">Join Now</h1>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <section class="ftco-section signin-section bg-light">
            <div class="container">


                <h2>Join El Paraíso</h2>



                <p>Join our satisfying website and enjoy the best recommendation for a wonderful hotel experience.</p>
                <div class="row block-9">
                    <div class="col-md-6 order-md-last d-flex">
                        <form action="signup" method="POST" class="bg-white p-5 signin-form">
                            <div class="user-details">
                                <div class="select-box">
                                    <span class="details">Title</span>
                                    <select name="title">
                                        <option>Mr</option>
                                        <option>Ms</option>
                                        <option>Mrs</option>
                                        <option>Sir</option>
                                        <option>Dr</option>
                                        <option>Mdm</option>
                                        <option>Professor</option>
                                    </select>
                                </div>
                                <div class="input-box">
                                    <span class="details">Full Name</span>
                                    <input type="text" placeholder="Enter your full name" required name="fullName">
                                </div>
                                <div class="calendar-box">
                                    <span class="details">Date of Birth</span>
                                    <select required name="dobDate">
                                        <option>DD</option>
                                        <option>01</option>
                                        <option>02</option>
                                        <option>03</option>
                                        <option>04</option>
                                        <option>05</option>
                                        <option>06</option>
                                        <option>07</option>
                                        <option>08</option>
                                        <option>09</option>
                                        <option>10</option>
                                        <option>11</option>
                                        <option>12</option>
                                        <option>13</option>
                                        <option>14</option>
                                        <option>15</option>
                                        <option>16</option>
                                        <option>17</option>
                                        <option>18</option>
                                        <option>19</option>
                                        <option>20</option>
                                        <option>21</option>
                                        <option>22</option>
                                        <option>23</option>
                                        <option>24</option>
                                        <option>25</option>
                                        <option>26</option>
                                        <option>27</option>
                                        <option>28</option>
                                        <option>29</option>
                                        <option>30</option>
                                        <option>31</option>
                                    </select>
                                    <select required name="dobMonth">
                                        <option>MM</option>
                                        <option>01</option>
                                        <option>02</option>
                                        <option>03</option>
                                        <option>04</option>
                                        <option>05</option>
                                        <option>06</option>
                                        <option>07</option>
                                        <option>08</option>
                                        <option>09</option>
                                        <option>10</option>
                                        <option>11</option>
                                        <option>12</option>
                                    </select>
                                    <select required name="dobYear">
                                        <option>YYYY</option>
                                        <option>1940</option>
                                        <option>1941</option>
                                        <option>1942</option>
                                        <option>1943</option>
                                        <option>1944</option>
                                        <option>1945</option>
                                        <option>1946</option>
                                        <option>1947</option>
                                        <option>1948</option>
                                        <option>1949</option>
                                        <option>1950</option>
                                        <option>1951</option>
                                        <option>1952</option>
                                        <option>1953</option>
                                        <option>1954</option>
                                        <option>1955</option>
                                        <option>1956</option>
                                        <option>1957</option>
                                        <option>1958</option>
                                        <option>1959</option>
                                        <option>1960</option>
                                        <option>1961</option>
                                        <option>1962</option>
                                        <option>1963</option>
                                        <option>1964</option>
                                        <option>1965</option>
                                        <option>1966</option>
                                        <option>1967</option>
                                        <option>1968</option>
                                        <option>1969</option>
                                        <option>1970</option>
                                        <option>1971</option>
                                        <option>1972</option>
                                        <option>1973</option>
                                        <option>1974</option>
                                        <option>1975</option>
                                        <option>1976</option>
                                        <option>1977</option>
                                        <option>1978</option>
                                        <option>1979</option>
                                        <option>1980</option>
                                        <option>1981</option>
                                        <option>1982</option>
                                        <option>1983</option>
                                        <option>1984</option>
                                        <option>1985</option>
                                        <option>1986</option>
                                        <option>1987</option>
                                        <option>1988</option>
                                        <option>1989</option>
                                        <option>1990</option>
                                        <option>1991</option>
                                        <option>1992</option>
                                        <option>1993</option>
                                        <option>1994</option>
                                        <option>1995</option>
                                        <option>1996</option>
                                        <option>1997</option>
                                        <option>1998</option>
                                        <option>1999</option>
                                        <option>2000</option>
                                        <option>2001</option>
                                        <option>2002</option>
                                        <option>2003</option>
                                        <option>2004</option>
                                        <option>2005</option>
                                        <option>2006</option>
                                        <option>2007</option>
                                        <option>2008</option>
                                        <option>2009</option>
                                        <option>2010</option>
                                        <option>2011</option>
                                        <option>2012</option>
                                        <option>2013</option>
                                        <option>2014</option>
                                        <option>2015</option>
                                        <option>2016</option>
                                        <option>2017</option>
                                        <option>2018</option>
                                        <option>2019</option>
                                        <option>2020</option>
                                        <option>2021</option>
                                    </select>
                                </div>
                                <div class="input-box">
                                    <span class="details">Username</span>
                                    <input type="text" placeholder="Enter your username" required name="userName">
                                </div>
                                <div class="input-box">
                                    <span class="details">Email</span>
                                    <input type="text" placeholder="Enter your email" required name="email">
                                </div>
                                <div class="input-box">
                                    <span class="details">Phone Number</span>
                                    <input type="text" placeholder="(+94)" required name="phoneNumber">
                                </div>
                                <div class="input-box">
                                    <span class="details">Password</span>
                                    <input type="password" placeholder="Enter your password" id="myInput1" required name="password">
                                    <span class="eyejoin" onclick="myFunction1()">
                                        <i id="hide1" class="fa fa-eye"></i>
                                        <i id="hide2" class="fa fa-eye-slash"></i>
                                    </span>

                                </div>
                                <div class="input-box">
                                    <span class="details">Confirm Password</span>
                                    <input type="password" placeholder="Confirm your password" id="myInput2" required name="passwordConfirm">
                                    <span class="eyejoin" onclick="myFunction2()">
                                        <i id="hide1" class="fa fa-eye"></i>
                                        <i id="hide2" class="fa fa-eye-slash"></i>
                                    </span>
                                </div>
                                <div class="gender-details">
                                    <input type="radio" name="gender" id="dot-1">
                                    <input type="radio" name="gender" id="dot-2">
                                    <span class="gender-title">Gender</span>
                                    <div class="category">
                                        <label for="dot-1">
                                            <span class="dot one"></span>
                                            <span class="gender">Male</span>
                                        </label>
                                        <label for="dot-2">
                                            <span class="dot two"></span>
                                            <span class="gender">Female</span>
                                        </label>
                                    </div>
                                    <div class="button">
                                        <input type="submit" value="Register">
                                    </div>
                                    </form>
                                </div>
                            </div>
                            </section>

                            <footer class="ftco-footer ftco-bg-dark ftco-section">
                                <div class="container">
                                    <div class="row mb-5">
                                        <div class="col-md">
                                            <div class="ftco-footer-widget mb-4">
                                                <h2 class="ftco-heading-2">El Paraíso</h2>
                                                <p>
                                                    Far far away, behind the word mountains, far from the countries
                                                    Vokalia and Consonantia, there live the blind texts.
                                                </p>
                                                <ul class="
                                                    ftco-footer-social
                                                    list-unstyled
                                                    float-md-left float-lft
                                                    mt-5
                                                    ">
                                                    <li class="ftco-animate">
                                                        <a href="#"><span class="icon-twitter"></span></a>
                                                    </li>
                                                    <li class="ftco-animate">
                                                        <a href="#"><span class="icon-facebook"></span></a>
                                                    </li>
                                                    <li class="ftco-animate">
                                                        <a href="#"><span class="icon-instagram"></span></a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="col-md">
                                            <div class="ftco-footer-widget mb-4 ml-md-5">
                                                <h2 class="ftco-heading-2">Useful Links</h2>
                                                <ul class="list-unstyled">
                                                    <li>
                                                        <a href="rooms.html" class="py-2 d-block">Rooms & Suites</a>
                                                    </li>
                                                    <li>
                                                        <a href="restaurant.html" class="py-2 d-block">Restaurant</a>
                                                    </li>
                                                    <li><a href="signin.jsp" class="py-2 d-block">Sign In</a></li>
                                                    <li>
                                                        <a href="joinnow.jsp" class="py-2 d-block">Join Now</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="col-md">
                                            <div class="ftco-footer-widget mb-4">
                                                <h2 class="ftco-heading-2">Privacy</h2>
                                                <ul class="list-unstyled">
                                                    <li><a href="#" class="py-2 d-block">Career</a></li>
                                                    <li><a href="about.html" class="py-2 d-block">About Us</a></li>
                                                    <li>
                                                        <a href="contact.html" class="py-2 d-block">Contact Us</a>
                                                    </li>
                                                    <li><a href="#services" class="py-2 d-block">Services</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="col-md">
                                            <div class="ftco-footer-widget mb-4">
                                                <h2 class="ftco-heading-2">Want to Contact Us?</h2>
                                                <div class="block-23 mb-3">
                                                    <ul>
                                                        <li>
                                                            <span class="icon icon-map-marker"></span><span class="text">203 Fake St. Mountain View, Colombo 03,
                                                                Western, Sri
                                                                Lanka</span>
                                                        </li>
                                                        <li>
                                                            <a href="#"><span class="icon icon-phone"></span><span class="text">+97 112 667 889</span></a>
                                                        </li>
                                                        <li>
                                                            <a href="#"><span class="icon icon-envelope"></span><span class="text">info@elparaiso.com</span></a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12 text-center">
                                            <p>
                                                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                                Copyright &copy;
                                                <script>
                                                    document.write(new Date().getFullYear());
                                                </script>
                                                All rights reserved | Designed by Team CodeHunters.
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </footer>


                            <!-- loader -->
                            <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px">
                                <circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee" />
                                <circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10"
                                        stroke="#F96D00" />
                                </svg></div>


                            <script src="js/jquery.min.js"></script>
                            <script src="js/jquery-migrate-3.0.1.min.js"></script>
                            <script src="js/popper.min.js"></script>
                            <script src="js/bootstrap.min.js"></script>
                            <script src="js/jquery.easing.1.3.js"></script>
                            <script src="js/jquery.waypoints.min.js"></script>
                            <script src="js/jquery.stellar.min.js"></script>
                            <script src="js/owl.carousel.min.js"></script>
                            <script src="js/jquery.magnific-popup.min.js"></script>
                            <script src="js/aos.js"></script>
                            <script src="js/jquery.animateNumber.min.js"></script>
                            <script src="js/jquery.mb.YTPlayer.min.js"></script>
                            <script src="js/bootstrap-datepicker.js"></script>
                            <!-- // <script src="js/jquery.timepicker.min.js"></script> -->
                            <script src="js/scrollax.min.js"></script>
                            <script
                            src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
                            <script src="js/google-map.js"></script>
                            <script src="js/main.js"></script>
                            <script>
                                                    function myFunction1() {
                                                        var x = document.getElementById("myInput1");
                                                        var y = document.getElementById("hide1");
                                                        var z = document.getElementById("hide2");

                                                        if (x.type === 'password') {
                                                            x.type = "text";
                                                            y.style.display = "block";
                                                            z.style.display = "none";
                                                        } else {
                                                            x.type = "password";
                                                            y.style.display = "none";
                                                            z.style.display = "block";
                                                        }

                                                    }
                            </script>
                            <script>
                                function myFunction2() {
                                    var x = document.getElementById("myInput2");
                                    var y = document.getElementById("hide1");
                                    var z = document.getElementById("hide2");

                                    if (x.type === 'password') {
                                        x.type = "text";
                                        y.style.display = "block";
                                        z.style.display = "none";
                                    } else {
                                        x.type = "password";
                                        y.style.display = "none";
                                        z.style.display = "block";
                                    }

                                }
                            </script>
                            </body>

                            </html>
