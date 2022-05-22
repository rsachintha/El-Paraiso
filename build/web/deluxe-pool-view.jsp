<%@page import="modal.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    response.setHeader("Cache-control", "no-cache");
    response.setHeader("Cache-control", "no-store");
    response.setHeader("Pragma", "no-cache");
    response.setDateHeader("Expire", 0);

    User user = (User) session.getAttribute("logUser");
    if (user == null) {
        response.sendRedirect("index.html");
    }
%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>El ParaÃ­so</title>
        <meta charset="utf-8" />
        <meta
            name="viewport"
            content="width=device-width, initial-scale=1, shrink-to-fit=no"
            />

        <link
            href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700"
            rel="stylesheet"
            />
        <link
            href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700,700i"
            rel="stylesheet"
            />

        <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css" />
        <link rel="stylesheet" href="css/animate.css" />

        <link rel="stylesheet" href="css/owl.carousel.min.css" />
        <link rel="stylesheet" href="css/owl.theme.default.min.css" />
        <link rel="stylesheet" href="css/magnific-popup.css" />

        <link rel="stylesheet" href="css/aos.css" />

        <link rel="stylesheet" href="css/ionicons.min.css" />

        <link rel="stylesheet" href="css/bootstrap-datepicker.css" />
        <link rel="stylesheet" href="css/jquery.timepicker.css" />

        <link rel="stylesheet" href="css/flaticon.css" />
        <link rel="stylesheet" href="css/icomoon.css" />
        <link rel="stylesheet" href="css/style.css" />
    </head>

    <body>
        <nav
            class="
            navbar navbar-expand-lg navbar-dark
            ftco_navbar
            bg-dark
            ftco-navbar-light
            "
            id="ftco-navbar"
            >
            <div class="container">
                <a class="navbar-brand" href="welcome.jsp">El Paraíso</a>
                <button
                    class="navbar-toggler"
                    type="button"
                    data-toggle="collapse"
                    data-target="#ftco-nav"
                    aria-controls="ftco-nav"
                    aria-expanded="false"
                    aria-label="Toggle navigation"
                    >
                    <span class="oi oi-menu"></span> Menu
                </button>

                <div class="collapse navbar-collapse" id="ftco-nav">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item active">
                            <a href="welcome.jsp" class="nav-link">Home</a>
                        </li>
                        <li class="nav-item">
                            <a href="rooms.jsp" class="nav-link">Rooms & Suites</a>
                        </li>
                        <li class="nav-item">
                            <a href="restaurant.jsp" class="nav-link">Restaurant</a>
                        </li>
                        <li class="nav-item">
                            <a href="about.jsp" class="nav-link">About</a>
                        </li>
                        <li class="nav-item">
                            <a href="Feedbacks.jsp" class="nav-link">Feedbacks</a>
                        </li>
                        <li class="nav-item">
                            <a href="signin.jsp" class="nav-link">Sign In</a>
                        </li>
                        <li class="nav-item">
                            <div class="form-group">
                                <a href="logout"
                                   ><input
                                        type="submit"
                                        value="Sign Out"
                                        class="btn btn-primary py-3 px-4"
                                        /></a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- END nav -->
        <div class="hero-wrap" style="background-image: url('images/bg_1.jpg')">
            <div class="overlay"></div>
            <div class="container">
                <div
                    class="row no-gutters slider-text d-flex align-itemd-end justify-content-center"
                    >
                    <div
                        class="col-md-9 ftco-animate text-center d-flex align-items-end justify-content-center"
                        >
                        <div class="text">
                            <p class="breadcrumbs mb-2">
                                <span class="mr-2"><a href="index.html">Home</a></span>
                                <span>Deluxe Pool View Room</span>
                            </p>
                            <h1 class="mb-4 bread">Deluxe Pool View Room</h1>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <section class="ftco-section">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8">
                        <div class="row">
                            <div class="col-md-12 ftco-animate">
                                <div class="single-slider owl-carousel">
                                    <div class="item">
                                        <div
                                            class="room-img"
                                            style="background-image: url(images/room2.jpeg)"
                                            ></div>
                                    </div>
                                    <div class="item">
                                        <div
                                            class="room-img"
                                            style="background-image: url(images/room2.1.jpg)"
                                            ></div>
                                    </div>
                                    <div class="item">
                                        <div
                                            class="room-img"
                                            style="background-image: url(images/room2.2.jpg)"
                                            ></div>
                                    </div>
                                </div>
                            </div>

                            <!--Room-->
                            <div class="room-info">
                                <h3>Tasteful Interiors, Poolside Panoramas</h3>
                                <p>
                                    Premier Poolside Rooms all feature a spacious balcony that
                                    offers views of the city and Lake. The rooms are elegantly
                                    appointed and feature a thoughtful contemporary design, light
                                    colours, rich fabrics, and balconies with cosy outdoor
                                    seating.
                                </p>

                                <h4>Features</h4>
                                <ul>
                                    <li class="ul-li">
                                        Each room offers 42 sqm / 452 sqf of luxury.
                                    </li>
                                    <li class="ul-li">Memorable views of the Ocean and city.</li>
                                    <li class="ul-li">
                                        Large, modern bathroom with walk-in shower and separate
                                        bathtub.
                                    </li>
                                    <li class="ul-li">Wi-Fi.</li>
                                    <li class="ul-li">
                                        Signature El ParaÃ­so bed with 300-thread-count lightweight
                                        duvet.
                                    </li>
                                </ul>

                                <h4>Amenities</h4>
                                <p class="ul-p">Bath & Personal Care</p>
                                <ul>
                                    <li class="ul-li">Walk-in shower and/or separate bathtub</li>
                                    <li class="ul-li">Bathroom mirror</li>
                                    <li class="ul-li">Plush bathrobes and slippers</li>
                                    <li class="ul-li">300 thread count linen</li>
                                    <li class="ul-li">Pillow menu with hypoallergenic options</li>
                                    <li class="ul-li">Iron and ironing board</li>
                                </ul>
                                <p class="ul-p">Media & Entertainment</p>
                                <ul>
                                    <li class="ul-li">High-speed Internet access</li>
                                    <li class="ul-li">Flatscreen TV</li>
                                    <li class="ul-li">
                                        Wide selection of international and local television
                                        channels
                                    </li>
                                </ul>
                                <p class="ul-p">Office Equipment & Stationery</p>
                                <ul>
                                    <li class="ul-li">Work space</li>
                                    <li class="ul-li">
                                        International Direct Dial telephone with two lines
                                    </li>
                                    <li class="ul-li">Electronic safe</li>
                                    <li class="ul-li">USB charge ports</li>
                                    <li class="ul-li">Digital alarm clock</li>
                                    <li class="ul-li">Laptop charging socket</li>
                                </ul>
                                <p class="ul-p">Refreshments</p>
                                <ul>
                                    <li class="ul-li">Minibar</li>
                                    <li class="ul-li">Water</li>
                                    <li class="ul-li">Tea and coffee making facilities</li>
                                </ul>

                                <h4>Children's meal plan for guests staying at the hotel.</h4>
                                <p>
                                    The following childrenâs meal plan is applicable for all
                                    Golden Circle members. When accompanied by a dine-in adult, up
                                    to 2 children of registered in-house hotel guests at the age
                                    of 6 and below can enjoy buffet meals at the all-day dining
                                    venues at no additional charge. Additional children at the age
                                    of 6 and below and all children who are above 6 years of age
                                    but under 12 years of age will receive a 50% discount on the
                                    adult buffet price. Registered in-house hotel guests can also
                                    join Golden Circle at any time during their stay to enjoy the
                                    meal plan. Children of non-registered walk-in guests under the
                                    age of 12 will receive a 50% discount on buffet meals at the
                                    all-day dining outlets.
                                </p>
                            </div>

                            <div class="form-group">
                                <a href="booking.jsp"
                                   ><input
                                        type="submit"
                                        value="Book Now"
                                        class="btn btn-primary py-3 px-5"
                                        /></a>
                            </div>
                            <!--Room End-->
                        </div>
                    </div>
                    <!-- .col-md-8 -->
                </div>
            </div>
        </section>
        <!-- .section -->

        <footer class="ftco-footer ftco-bg-dark ftco-section">
            <div class="container">
                <div class="row mb-5">
                    <div class="col-md">
                        <div class="ftco-footer-widget mb-4">
                            <h2 class="ftco-heading-2">El ParaÃ­so</h2>
                            <p>
                                Far far away, behind the word mountains, far from the countries
                                Vokalia and Consonantia, there live the blind texts.
                            </p>
                            <ul
                                class="ftco-footer-social list-unstyled float-md-left float-lft mt-5"
                                >
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
                                    <a href="rooms.jsp" class="py-2 d-block">Rooms & Suites</a>
                                </li>
                                <li>
                                    <a href="restaurant.jsp" class="py-2 d-block">Restaurant</a>
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
                                <li><a href="about.jsp" class="py-2 d-block">About Us</a></li>
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
                                        <span class="icon icon-map-marker"></span
                                        ><span class="text"
                                               >203 Fake St. Mountain View, Colombo 03, Western, Sri
                                            Lanka</span
                                        >
                                    </li>
                                    <li>
                                        <a href="#"
                                           ><span class="icon icon-phone"></span
                                            ><span class="text">+97 112 667 889</span></a
                                        >
                                    </li>
                                    <li>
                                        <a href="#"
                                           ><span class="icon icon-envelope"></span
                                            ><span class="text">info@elparaiso.com</span></a
                                        >
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
        <div id="ftco-loader" class="show fullscreen">
            <svg class="circular" width="48px" height="48px">
            <circle
                class="path-bg"
                cx="24"
                cy="24"
                r="22"
                fill="none"
                stroke-width="4"
                stroke="#eeeeee"
                />
            <circle
                class="path"
                cx="24"
                cy="24"
                r="22"
                fill="none"
                stroke-width="4"
                stroke-miterlimit="10"
                stroke="#F96D00"
                />
            </svg>
        </div>

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
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
        <script src="js/google-map.js"></script>
        <script src="js/main.js"></script>
    </body>
</html>
