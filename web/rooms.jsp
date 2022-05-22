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
                            <a href="feedback.jsp" class="nav-link">Feedbacks</a>
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
                                <span class="mr-2"><a href="Welcome.jsp">Home</a></span>
                                <span>Rooms & Suites</span>
                            </p>
                            <h1 class="mb-4 bread">Rooms & Suites</h1>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <section class="ftco-section bg-light ftco-no-pb">
            <div class="container-fluid px-0">
                <div class="row no-gutters justify-content-center mb-5 pb-3">
                    <div class="col-md-7 heading-section text-center ftco-animate">
                        <span class="subheading">El ParaÃ­so Rooms</span>
                        <h2 class="mb-4">Hotel Master's Rooms</h2>
                    </div>
                </div>
                <div class="row no-gutters">
                    <div class="col-lg-6">
                        <div class="room-wrap d-md-flex">
                            <a
                                href="executive-suite.jsp"
                                class="img"
                                style="background-image: url(images/suit1.jpeg)"
                                ></a>
                            <div class="half left-arrow d-flex align-items-center">
                                <div class="text p-4 p-xl-5 text-center">
                                    <p class="star mb-0">
                                        <span class="ion-ios-star"></span
                                        ><span class="ion-ios-star"></span
                                        ><span class="ion-ios-star"></span
                                        ><span class="ion-ios-star"></span
                                        ><span class="ion-ios-star"></span>
                                    </p>
                                    <p class="mb-0">
                                        <span class="price mr-1">$120.00</span>
                                        <span class="per">Per Night</span>
                                    </p>
                                    <h3 class="mb-3">
                                        <a href="executive-suite.jsp">Executive Suite</a>
                                    </h3>
                                    <p class="pt-1">
                                        <a href="executive-suite.jsp" class="btn-custom px-3 py-2"
                                           >View Room Details
                                            <span class="icon-long-arrow-right"></span
                                            ></a>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="room-wrap d-md-flex">
                            <a
                                href="deluxe-room.jsp"
                                class="img"
                                style="background-image: url(images/room3.jpg)"
                                ></a>
                            <div class="half left-arrow d-flex align-items-center">
                                <div class="text p-4 p-xl-5 text-center">
                                    <p class="star mb-0">
                                        <span class="ion-ios-star"></span
                                        ><span class="ion-ios-star"></span
                                        ><span class="ion-ios-star"></span
                                        ><span class="ion-ios-star"></span
                                        ><span class="ion-ios-star"></span>
                                    </p>
                                    <p class="mb-0">
                                        <span class="price mr-1">$120.00</span>
                                        <span class="per">Per Night</span>
                                    </p>
                                    <h3 class="mb-3">
                                        <a href="deluxe-room.jsp">Deluxe Room</a>
                                    </h3>
                                    <p class="pt-1">
                                        <a href="deluxe-room.jsp" class="btn-custom px-3 py-2"
                                           >View Room Details
                                            <span class="icon-long-arrow-right"></span
                                            ></a>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-6">
                        <div class="room-wrap d-md-flex">
                            <a
                                href="deluxe-ocean-view.jsp"
                                class="img order-md-last"
                                style="background-image: url(images/room1.jpg)"
                                ></a>
                            <div class="half right-arrow d-flex align-items-center">
                                <div class="text p-4 p-xl-5 text-center">
                                    <p class="star mb-0">
                                        <span class="ion-ios-star"></span
                                        ><span class="ion-ios-star"></span
                                        ><span class="ion-ios-star"></span
                                        ><span class="ion-ios-star"></span
                                        ><span class="ion-ios-star"></span>
                                    </p>
                                    <p class="mb-0">
                                        <span class="price mr-1">$120.00</span>
                                        <span class="per">Per Night</span>
                                    </p>
                                    <h3 class="mb-3">
                                        <a href="deluxe-ocean-view.jsp">Deluxe Ocean View Room</a>
                                    </h3>
                                    <p class="pt-1">
                                        <a
                                            href="deluxe-ocean-view.jsp"
                                            class="btn-custom px-3 py-2"
                                            >View Room Details
                                            <span class="icon-long-arrow-right"></span
                                            ></a>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="room-wrap d-md-flex">
                            <a
                                href="deluxe-nature-view.jsp"
                                class="img order-md-last"
                                style="background-image: url(images/room4.jpg)"
                                ></a>
                            <div class="half right-arrow d-flex align-items-center">
                                <div class="text p-4 p-xl-5 text-center">
                                    <p class="star mb-0">
                                        <span class="ion-ios-star"></span
                                        ><span class="ion-ios-star"></span
                                        ><span class="ion-ios-star"></span
                                        ><span class="ion-ios-star"></span
                                        ><span class="ion-ios-star"></span>
                                    </p>
                                    <p class="mb-0">
                                        <span class="price mr-1">$120.00</span>
                                        <span class="per">Per Night</span>
                                    </p>
                                    <h3 class="mb-3">
                                        <a href="deluxe-nature-view.jsp"
                                           >Deluxe Nature View Room</a
                                        >
                                    </h3>
                                    <p class="pt-1">
                                        <a
                                            href="deluxe-nature-view.jsp"
                                            class="btn-custom px-3 py-2"
                                            >View Room Details
                                            <span class="icon-long-arrow-right"></span
                                            ></a>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-6">
                        <div class="room-wrap d-md-flex">
                            <a
                                href="deluxe-pool-view.jsp"
                                class="img"
                                style="background-image: url(images/room2.jpeg)"
                                ></a>
                            <div class="half left-arrow d-flex align-items-center">
                                <div class="text p-4 p-xl-5 text-center">
                                    <p class="star mb-0">
                                        <span class="ion-ios-star"></span
                                        ><span class="ion-ios-star"></span
                                        ><span class="ion-ios-star"></span
                                        ><span class="ion-ios-star"></span
                                        ><span class="ion-ios-star"></span>
                                    </p>
                                    <p class="mb-0">
                                        <span class="price mr-1">$120.00</span>
                                        <span class="per">Per Night</span>
                                    </p>
                                    <h3 class="mb-3">
                                        <a href="deluxe-pool-view.jsp">Deluxe Pool View Room</a>
                                    </h3>
                                    <p class="pt-1">
                                        <a href="deluxe-pool-view.jsp" class="btn-custom px-3 py-2"
                                           >View Room Details
                                            <span class="icon-long-arrow-right"></span
                                            ></a>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="room-wrap d-md-flex">
                            <a
                                href="speciality-suite.jsp"
                                class="img"
                                style="background-image: url(images/suit2.jpg)"
                                ></a>
                            <div class="half left-arrow d-flex align-items-center">
                                <div class="text p-4 p-xl-5 text-center">
                                    <p class="star mb-0">
                                        <span class="ion-ios-star"></span
                                        ><span class="ion-ios-star"></span
                                        ><span class="ion-ios-star"></span
                                        ><span class="ion-ios-star"></span
                                        ><span class="ion-ios-star"></span>
                                    </p>
                                    <p class="mb-0">
                                        <span class="price mr-1">$120.00</span>
                                        <span class="per">Per Night</span>
                                    </p>
                                    <h3 class="mb-3">
                                        <a href="speciality-suite.jsp">Speciality Suites</a>
                                    </h3>
                                    <p class="pt-1">
                                        <a href="speciality-suite.jsp" class="btn-custom px-3 py-2"
                                           >View Room Details
                                            <span class="icon-long-arrow-right"></span
                                            ></a>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

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
                                    <a href="rooms.html" class="py-2 d-block">Rooms & Suites</a>
                                </li>
                                <li>
                                    <a href="restaurant.jsp" class="py-2 d-block">Restaurant</a>
                                </li>
                                <li><a href="signin.jsp" class="py-2 d-block">Sign In</a></li>
                                <li>
                                    <a href="joinnow.html" class="py-2 d-block">Join Now</a>
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
