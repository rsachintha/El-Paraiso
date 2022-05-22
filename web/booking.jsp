<%@page import="modal.User"%>
<%@page import="java.util.List"%>
<%@page import="modal.Rooms"%>
<%@page import="database.DatabaseConnector"%>
<%@page import="database.DatabaseHelper"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
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

<%
    DatabaseHelper roomData = new DatabaseHelper(DatabaseConnector.getConnection());
    List<Rooms> room = roomData.getAllRooms();
    request.setAttribute("ROOMS_LIST", room);
%>

<!DOCTYPE html>
<html>
    <head>

        <title>El Paraíso</title>
        <!-- Required meta tags -->
        <meta charset="utf-8" />
        <meta
            name="viewport"
            content="width=device-width, initial-scale=1, shrink-to-fit=no"
            />

        <!-- Bootstrap CSS -->
        <!--        <link
                    rel="stylesheet"
                    href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
                    />-->

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


        <!--        <style>
                    .inner {
                        margin: 15px 0;
                    }
                </style>-->
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
                <a class="navbar-brand" href="index.html">El Paraíso</a>
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
        <div class="hero">
            <section class="home-slider owl-carousel">
                <div class="slider-item" style="background-image: url(images/bg_1.jpg)">
                    <div class="overlay"></div>
                    <div class="container">
                        <div class="row no-gutters slider-text align-items-center">
                            <div class="col-md-8 ftco-animate">
                                <div class="text mb-5 pb-5">
                                    <h1 class="mb-3">El Paraíso</h1>
                                    <h2>Feel The Wonderful Experience of The Paradise Itself.</h2>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="slider-item" style="background-image: url(images/bg_2.jpg)">
                    <div class="overlay"></div>
                    <div class="container">
                        <div class="row no-gutters slider-text align-items-center">
                            <div class="col-md-8 ftco-animate">
                                <div class="text mb-5 pb-5">
                                    <h1 class="mb-3">Experience Epic Beauty</h1>
                                    <h2>El Paraíso Hotel &amp; Resort</h2>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>




        <div class="container">
            <div class="inner">
                <div class="row">
                    <div class="col-md-3">
                        <h3>Booking Information</h3>
                        <form action="addReservations" method="post">
                            <div class="form-group">
                                <label>Full Name</label>
                                <input
                                    class="form-control"
                                    name="fullname"
                                    place-holder="Full Name"
                                    required
                                    />
                            </div>
                            <div class="form-group">
                                <label>Username</label>
                                <input
                                    class="form-control"
                                    name="username"
                                    place-holder="Username"
                                    required
                                    />
                            </div>
                            <div class="form-group">
                                <label>Email</label>
                                <input
                                    class="form-control"
                                    name="email"
                                    place-holder="Sample@gmail.com"
                                    required
                                    />
                            </div>
                            <div class="form-group">
                                <label>Room Type</label>
                                <select
                                    id="inputState"
                                    class="form-control"
                                    name="roomtype"
                                    required
                                    >
                                    <option selected disabled>Choose Room Type</option>
                                    <option value="Deluxe Room">Deluxe Room</option>
                                    <option value="Deluxe Ocean View Room">
                                        Deluxe Ocean View Room
                                    </option>
                                    <option value="Deluxe Pool View Room">
                                        Deluxe Pool View Room
                                    </option>
                                    <option value="Deluxe Nature View Room">
                                        Deluxe Nature View Room
                                    </option>
                                    <option value="Executive Suite">Executive Suite</option>
                                    <option value="Speaciality Suite">Speaciality Suite</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Room Number</label>
                                <input
                                    class="form-control"
                                    name="roomnumber"
                                    place-holder="Room Number"
                                    required
                                    />
                            </div>
                            <div class="form-group">
                                <label>Room Price ($)</label>
                                <input
                                    class="form-control"
                                    name="total"
                                    place-holder="$"
                                    required
                                    />
                            </div>
                            <div class="form-group">
                                <label>Check-In</label>
                                <input
                                    class="form-control"
                                    name="chkin"
                                    place-holder="DD/MM/YYYY"
                                    required
                                    />
                            </div>
                            <div class="form-group">
                                <label>Check-Out</label>
                                <input
                                    class="form-control"
                                    name="chkout"
                                    place-holder="DD/MM/YYYY"
                                    required
                                    />
                            </div>
                            <div class="form-group">
                                <label>Guests</label>
                                <input
                                    class="form-control"
                                    name="guests"
                                    place-holder="Number of Guests"
                                    required
                                    />
                            </div>
                            <button type="submit" class="btn btn-primary">Submit</button>
                            <button type="reset" class="btn btn-primary">Reset</button>
                        </form>
                    </div>
                    <div class="col-md-9">
                        <h3>Available Rooms & Suits</h3>
                        <table class="table table-hover">
                            <thead class="bg-light">
                                <tr>
                                    <th scope="col">RoomNumber</th>
                                    <th scope="col">RoomType</th>
                                    <th scope="col">Booked</th>
                                    <th scope="col">Price Per Night ($)</th>

                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="tempRoom" items="${ROOMS_LIST}">
                                    <tr>
                                        <td>${tempRoom.roomID }</td>
                                        <td>${tempRoom.roomType }</td>
                                        <td>${tempRoom.booked }</td>
                                        <td>${tempRoom.price}</td>



                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>

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
                            <ul
                                class="
                                ftco-footer-social
                                list-unstyled
                                float-md-left float-lft
                                mt-5
                                "
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
                                    <a href="restaurant.html" class="py-2 d-block">Restaurant</a>
                                </li>
                                <li><a href="signin.html" class="py-2 d-block">Sign In</a></li>
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
        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
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
</Rooms>




