<%@page import="modal.Feedbacks"%>
<%@page import="modal.Reservation"%>
<%@page import="modal.User"%>
<%@page import="database.DatabaseConnector"%>
<%@page import="modal.Rooms"%>
<%@page import="java.util.List"%>
<%@page import="database.DatabaseHelper"%>
<%@page import="modal.Admin"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%
    response.setHeader("Cache-control", "no-cache");
    response.setHeader("Cache-control", "no-store");
    response.setHeader("Pragma", "no-cache");
    response.setDateHeader("Expire", 0);

    Admin admin = (Admin) session.getAttribute("logAdmin");
    if (admin == null) {
        response.sendRedirect("index.html");
    }
%>

<%
    DatabaseHelper roomData = new DatabaseHelper(DatabaseConnector.getConnection());
    List<Rooms> room = roomData.getAllRooms();
    request.setAttribute("ROOMS_LIST", room);
%>

<%
    DatabaseHelper clientData = new DatabaseHelper(DatabaseConnector.getConnection());
    List<User> user = clientData.getAllClients();
    request.setAttribute("CLIENTS_LIST", user);
%>

<%
    DatabaseHelper resData = new DatabaseHelper(DatabaseConnector.getConnection());
    List<Reservation> res = resData.getAllRes();
    request.setAttribute("RES_LIST", res);
%>

<%
    DatabaseHelper fedData = new DatabaseHelper(DatabaseConnector.getConnection());
    List<Feedbacks> fd = fedData.getAllFeds();
    request.setAttribute("FEDS_LIST", fd);
%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>El Paraíso</title>
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
                        <li class="nav-item">
                            <a href="adminLogin.jsp" class="nav-link">Sign In</a>
                        </li>
                        <li class="nav-item">
                            <div class="form-group">
                                <a href="Adminlogout"
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

        <section class="ftco-section bg-light">
            <div class="col-md-9">
                <h3>Available Rooms & Suits</h3>
                <table class="table table-hover">
                    <thead class="bg-light">
                        <tr>
                            <th scope="col">RoomNumber</th>
                            <th scope="col">RoomType</th>
                            <th scope="col">Booked</th>
                            <th scope="col">Price Per Night ($)</th>
                            <th scope="col">Actions</th>

                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="tempRoom" items="${ROOMS_LIST}">
                            <tr>
                                <td>${tempRoom.roomID }</td>
                                <td>${tempRoom.roomType }</td>
                                <td>${tempRoom.booked }</td>
                                <td>${tempRoom.price}</td>
                                <td><a href="editroom.jsp?roomID=${tempRoom.roomID }">Edit</a> 
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </section>

        <section class="ftco-section bg-light">
            <div class="col-md-9">
                <h3>Clients</h3>
                <table class="table table-hover">
                    <thead class="bg-light">
                        <tr>
                            <th scope="col">ID</th>
                            <th scope="col">Title</th>
                            <th class="col-sm-4">Fullname</th>
                            <th scope="col">BirthDate</th>
                            <th scope="col">BirthMonth</th>
                            <th scope="col">BirthYear</th>
                            <th class="col-sm-3">Username</th>
                            <th class="col-sm-4">Email</th>
                            <th class="col-sm-4">Phone</th>
                            <th class="col-sm-4"">Password</th>
                            <th class="col-sm-4">Password</th>
                            <th scope="col">Gender</th>
                            <th class="col-sm-4">Actions</th>

                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="tempClient" items="${CLIENTS_LIST}">
                            <tr>
                                <td>${tempClient.clientID }</td>
                                <td>${tempClient.title }</td>
                                <td>${tempClient.fullName }</td>
                                <td>${tempClient.dobDate}</td>
                                <td>${tempClient.dobMonth}</td>
                                <td>${tempClient.dobYear}</td>
                                <td>${tempClient.userName}</td>
                                <td>${tempClient.email}</td>
                                <td>${tempClient.phoneNumber}</td>
                                <td>${tempClient.password}</td>
                                <td>${tempClient.passwordConfirm}</td>
                                <td>${tempClient.gender}</td>
                                <td><a href="DeleteClient?clientID=${tempClient.clientID}">Delete</a></td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </section>

        <section class="ftco-section bg-light">
            <div class="col-md-9">
                <h3>Reservations</h3>
                <table class="table table-hover">
                    <thead class="bg-light">
                        <tr>
                            <th scope="col">ID</th>
                            <th class="col-sm-5">Fullname</th>
                            <th class="col-sm-4">Username</th>
                            <th class="col-sm-5">Email</th>
                            <th scope="col">RoomType</th>
                            <th scope="col">RoomNumber</th>
                            <th class="col-sm-5">Chek In</th>
                            <th class="col-sm-5">Check Out</th>
                            <th scope="col">Guests</th>
                            <th class="col-sm-4">Actions</th>

                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="tempRes" items="${RES_LIST}">
                            <tr>
                                <td>${tempRes.resID }</td>
                                <td>${tempRes.fullname }</td>
                                <td>${tempRes.username }</td>
                                <td>${tempRes.email}</td>
                                <td>${tempRes.roomtype }</td>
                                <td>${tempRes.roomnumber }</td>
                                <td>${tempRes.chkin }</td>
                                <td>${tempRes.chkout}</td>
                                <td>${tempRes.guests}</td>
                                <td><a href="editres.jsp?resID=${tempRes.resID }">Edit</a> 
                                <td><a href="DeleteRes?resID=${tempRes.resID}">Delete</a></td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </section>

        <section class="ftco-section bg-light">
            <div class="col-md-9">
                <h3>Feedbacks</h3>
                <table class="table table-hover">
                    <thead class="bg-light">
                        <tr>
                            <th class="col-sm-4">Person</th>
                            <th class="col-sm-5">Email</th>
                            <th class="col-sm-4">Subject</th>
                            <th class="col-sm-6">Feedback</th>
                            <th class="col-sm-5">Actions</th>

                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="tempFed" items="${FEDS_LIST}">
                            <tr>
                                <td>${tempFed.name }</td>
                                <td>${tempFed.email }</td>
                                <td>${tempFed.sbjct }</td>
                                <td>${tempFed.msg}</td>
                                <td><a href="DeleteFed?name=${tempFed.name}">Delete</a></td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
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
                                    <a href="contact.jsp" class="py-2 d-block">Contact Us</a>
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
