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

        
        <section class="ftco-section" id="services">
            <div class="container">
                <div class="row justify-content-center mb-5 pb-3">
                    <div class="col-md-7 heading-section text-center ftco-animate">
                        <span class="subheading">Welcome to El Paraíso Hotel</span>
                        <h2 class="mb-4">A New Vision of Luxury Hotel</h2>
                    </div>
                </div>
                <div class="row d-flex">
                    <div class="col-md pr-md-1 d-flex align-self-stretch ftco-animate">
                        <div class="media block-6 services py-4 d-block text-center">
                            <div class="d-flex justify-content-center">
                                <div
                                    class="icon d-flex align-items-center justify-content-center"
                                    >
                                    <span class="flaticon-reception-bell"></span>
                                </div>
                            </div>
                            <div class="media-body">
                                <h3 class="heading mb-3">Friendly Service</h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-md px-md-1 d-flex align-self-stretch ftco-animate">
                        <div class="media block-6 services active py-4 d-block text-center">
                            <div class="d-flex justify-content-center">
                                <div
                                    class="icon d-flex align-items-center justify-content-center"
                                    >
                                    <span class="flaticon-serving-dish"></span>
                                </div>
                            </div>
                            <div class="media-body">
                                <h3 class="heading mb-3">Get Breakfast</h3>
                            </div>
                        </div>
                    </div>
                    <div
                        class="col-md px-md-1 d-flex align-sel Searchf-stretch ftco-animate"
                        >
                        <div class="media block-6 services py-4 d-block text-center">
                            <div class="d-flex justify-content-center">
                                <div
                                    class="icon d-flex align-items-center justify-content-center"
                                    >
                                    <span class="flaticon-car"></span>
                                </div>
                            </div>
                            <div class="media-body">
                                <h3 class="heading mb-3">Transfer Services</h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-md px-md-1 d-flex align-self-stretch ftco-animate">
                        <div class="media block-6 services py-4 d-block text-center">
                            <div class="d-flex justify-content-center">
                                <div
                                    class="icon d-flex align-items-center justify-content-center"
                                    >
                                    <span class="flaticon-spa"></span>
                                </div>
                            </div>
                            <div class="media-body">
                                <h3 class="heading mb-3">Suits &amp; SPA</h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-md pl-md-1 d-flex align-self-stretch ftco-animate">
                        <div class="media block-6 services py-4 d-block text-center">
                            <div class="d-flex justify-content-center">
                                <div
                                    class="icon d-flex align-items-center justify-content-center"
                                    >
                                    <span class="ion-ios-bed"></span>
                                </div>
                            </div>
                            <div class="media-body">
                                <h3 class="heading mb-3">Cozy Rooms</h3>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="ftco-section ftc-no-pb ftc-no-pt bg-light">
            <div class="container">
                <div class="row">
                    <div
                        class="
                        col-md-5
                        p-md-5
                        img img-2 img-3
                        d-flex
                        justify-content-center
                        align-items-center
                        "
                        style="background-image: url(images/bg_2.jpg)"
                        >
                        <a
                            href="https://vimeo.com/45830194"
                            class="
                            icon
                            popup-vimeo
                            d-flex
                            justify-content-center
                            align-items-center
                            "
                            >
                            <span class="icon-play"></span>
                        </a>
                    </div>
                    <div class="col-md-7 py-5 wrap-about pb-md-5 ftco-animate">
                        <div class="heading-section heading-section-wo-line pt-md-5 mb-5">
                            <div class="ml-md-0">
                                <span class="subheading">Welcome to El Paraíso Hotel</span>
                                <h2 class="mb-4">Welcome To Our Hotel</h2>
                            </div>
                        </div>
                        <div class="pb-md-5">
                            <p>
                                On her way she met a copy. The copy warned the Little Blind
                                Text, that where it came from it would have been rewritten a
                                thousand times and everything that was left from its origin
                                would be the word "and" and the Little Blind Text should turn
                                around and return to its own, safe country. But nothing the copy
                                said could convince her and so it didn’t take long until a few
                                insidious Copy Writers ambushed her, made her drunk with Longe
                                and Parole and dragged her into their agency, where they abused
                                her for their.
                            </p>
                            <p>
                                When she reached the first hills of the Italic Mountains, she
                                had a last view back on the skyline of her hometown
                                Bookmarksgrove, the headline of Alphabet Village and the subline
                                of her own road, the Line Lane. Pityful a rethoric question ran
                                over her cheek, then she continued her way.
                            </p>
                            <ul class="ftco-social d-flex">
                                <li class="ftco-animate">
                                    <a href="#"><span class="icon-twitter"></span></a>
                                </li>
                                <li class="ftco-animate">
                                    <a href="#"><span class="icon-facebook"></span></a>
                                </li>
                                <li class="ftco-animate">
                                    <a href="#"><span class="icon-google-plus"></span></a>
                                </li>
                                <li class="ftco-animate">
                                    <a href="#"><span class="icon-instagram"></span></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="ftco-section bg-light ftco-room">
            <div class="container-fluid px-0">
                <div class="row no-gutters justify-content-center mb-5 pb-3">
                    <div class="col-md-7 heading-section text-center ftco-animate">
                        <span class="subheading">El Paraíso Featured Rooms</span>
                        <h2 class="mb-4">Hotel Master's Rooms</h2>
                    </div>
                </div>
                <div class="row no-gutters">
                    <div class="col-lg-6">
                        <div class="room-wrap">
                            <div
                                class="img d-flex align-items-center"
                                style="background-image: url(images/bg_3.jpg)"
                                >
                                <div class="text text-center px-4 py-4">
                                    <h2>Welcome to <a href="welcome.jsp">El Paraíso</a> Hotel</h2>
                                    <p>Feel The Wonderful Experience of The Paradise Itself.</p>
                                </div>
                            </div>
                        </div>
                    </div>
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
                                href="deluxe-room.jsp"
                                class="img order-md-last"
                                style="background-image: url(images/room3.jpg)"
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
                                        <span class="per">per night</span>
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
                                        <span class="per">per night</span>
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
                                        <span class="per">per night</span>
                                    </p>
                                    <h3 class="mb-3">
                                        <a href="speciality-suite.jsp">Speciality Suite</a>
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

        <section class="ftco-section testimony-section bg-light">
            <div class="container">
                <div class="row justify-content-center mb-5 pb-3">
                    <div class="col-md-7 heading-section text-center ftco-animate">
                        <span class="subheading">Reviews</span>
                        <h2 class="mb-4">Our Happy Guest Says</h2>
                    </div>
                </div>
                <div class="row justify-content-center">
                    <div class="col-md-8 ftco-animate">
                        <div class="row ftco-animate">
                            <div class="col-md-12">
                                <div class="carousel-testimony owl-carousel ftco-owl">
                                    <div class="item">
                                        <div class="testimony-wrap py-4 pb-5">
                                            <div
                                                class="user-img mb-4"
                                                style="background-image: url(images/person_1.jpg)"
                                                >
                                                <span
                                                    class="
                                                    quote
                                                    d-flex
                                                    align-items-center
                                                    justify-content-center
                                                    "
                                                    >
                                                    <i class="icon-quote-left"></i>
                                                </span>
                                            </div>
                                            <div class="text text-center">
                                                <p class="star">
                                                    <span class="ion-ios-star"></span
                                                    ><span class="ion-ios-star"></span
                                                    ><span class="ion-ios-star"></span
                                                    ><span class="ion-ios-star"></span
                                                    ><span class="ion-ios-star"></span>
                                                </p>
                                                <p class="mb-4">
                                                    "I cannot speak highly enough about the staff and
                                                    their work ethics. They did a fantastic job and worked
                                                    tirelessly across the entire property to maintain the
                                                    highest levels of guest safety and hygiene. There are
                                                    many names I'd like to mention but Aditya is super
                                                    awesome his excellent attitude and professional
                                                    service and friendly made my Christmas memorable.
                                                    Highly recommended and I'm looking forward to seeing
                                                    you all again."
                                                </p>
                                                <p class="name">Nathan Smith</p>
                                                <span class="position">Lawyer</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="testimony-wrap py-4 pb-5">
                                            <div
                                                class="user-img mb-4"
                                                style="background-image: url(images/person_2.jpg)"
                                                >
                                                <span
                                                    class="
                                                    quote
                                                    d-flex
                                                    align-items-center
                                                    justify-content-center
                                                    "
                                                    >
                                                    <i class="icon-quote-left"></i>
                                                </span>
                                            </div>
                                            <div class="text text-center">
                                                <p class="star">
                                                    <span class="ion-ios-star"></span
                                                    ><span class="ion-ios-star"></span
                                                    ><span class="ion-ios-star"></span
                                                    ><span class="ion-ios-star"></span
                                                    ><span class="ion-ios-star"></span>
                                                </p>
                                                <p class="mb-4">
                                                    "The hotel will literally take your breath away when
                                                    you walk in the lobby. I’ve never known a hotel with
                                                    such a wow factor ! The staff are beyond attentive and
                                                    professional and I love la piscina dubai their pool .
                                                    It’s huge and has amazing cabanas along with a swim up
                                                    bar . This hotel is the place to be seen. It’s
                                                    elegant, classy and fabulous . I can’t recommend
                                                    enough . I’ll.be back soon."
                                                </p>
                                                <p class="name">Jason Smith</p>
                                                <span class="position">Doctor</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="testimony-wrap py-4 pb-5">
                                            <div
                                                class="user-img mb-4"
                                                style="background-image: url(images/person_3.jpg)"
                                                >
                                                <span
                                                    class="
                                                    quote
                                                    d-flex
                                                    align-items-center
                                                    justify-content-center
                                                    "
                                                    >
                                                    <i class="icon-quote-left"></i>
                                                </span>
                                            </div>
                                            <div class="text text-center">
                                                <p class="star">
                                                    <span class="ion-ios-star"></span
                                                    ><span class="ion-ios-star"></span
                                                    ><span class="ion-ios-star"></span
                                                    ><span class="ion-ios-star"></span
                                                    ><span class="ion-ios-star"></span>
                                                </p>
                                                <p class="mb-4">
                                                    "High five to Versace hotel having such skilled and
                                                    experienced door bell (Aditya). Our night was amazing.
                                                    Thank you guys and keep it up, Aditya I enjoyed our
                                                    conversation and your knowledge in hospitality."
                                                </p>
                                                <p class="name">John Creeds</p>
                                                <span class="position">Engineer</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="testimony-wrap py-4 pb-5">
                                            <div
                                                class="user-img mb-4"
                                                style="background-image: url(images/person_4.jpg)"
                                                >
                                                <span
                                                    class="
                                                    quote
                                                    d-flex
                                                    align-items-center
                                                    justify-content-center
                                                    "
                                                    >
                                                    <i class="icon-quote-left"></i>
                                                </span>
                                            </div>
                                            <div class="text text-center">
                                                <p class="star">
                                                    <span class="ion-ios-star"></span
                                                    ><span class="ion-ios-star"></span
                                                    ><span class="ion-ios-star"></span
                                                    ><span class="ion-ios-star"></span
                                                    ><span class="ion-ios-star"></span>
                                                </p>
                                                <p class="mb-4">
                                                    "We went to celebrate Xmas bruch at the Palazzo
                                                    Versace, excellent food and atmosphere and our time
                                                    was fantastic thanks to the service especially by
                                                    Bahnasi who really took care of us and made our Brunch
                                                    extra special and sorted out everything we needed and
                                                    kept the drinks flowing!!"
                                                </p>
                                                <p class="name">Nathan White</p>
                                                <span class="position">Manager</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="testimony-wrap py-4 pb-5">
                                            <div
                                                class="user-img mb-4"
                                                style="background-image: url(images/person_5.jpg)"
                                                >
                                                <span
                                                    class="
                                                    quote
                                                    d-flex
                                                    align-items-center
                                                    justify-content-center
                                                    "
                                                    >
                                                    <i class="icon-quote-left"></i>
                                                </span>
                                            </div>
                                            <div class="text text-center">
                                                <p class="star">
                                                    <span class="ion-ios-star"></span
                                                    ><span class="ion-ios-star"></span
                                                    ><span class="ion-ios-star"></span
                                                    ><span class="ion-ios-star"></span
                                                    ><span class="ion-ios-star"></span>
                                                </p>
                                                <p class="mb-4">
                                                    "Excellent service from Francis and the team at the
                                                    Executive Club Lounge. The team looked after us very
                                                    well during our stay. A throughly enjoyable
                                                    experience. Excellent selection of food and drink.
                                                    Nice ambience."
                                                </p>
                                                <p class="name">Kevin Cool</p>
                                                <span class="position">Teacher</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="ftco-section ftco-no-pt ftco-no-pb px-0">
            <div class="container-fluid px-0">
                <div class="row no-gutters justify-content-end">
                    <div class="col-md-12">
                        <div
                            id="home"
                            class="video-hero"
                            style="
                            height: 850px;
                            background-image: url(images/bg_3.jpg);
                            background-size: cover;
                            background-position: center center;
                            "
                            >
                            <a
                                class="player"
                                data-property="{videoURL:'https://www.youtube.com/watch?v=ism1XqnZJEg',containment:'#home', showControls:false, autoPlay:true, loop:true, mute:true, startAt:0, opacity:1, quality:'default'}"
                                ></a>
                            <div class="container">
                                <div
                                    class="
                                    row
                                    justify-content-start
                                    d-flex
                                    align-items-end
                                    height-text
                                    "
                                    >
                                    <div class="col-md-8">
                                        <div class="text">
                                            <h1 style="opacity: 0.75">
                                                We're The Most Recommended Hotel
                                            </h1>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section
            class="ftco-section ftco-menu"
            style="background-image: url(images/restaurant-pattern.jpg)"
            >
            <div class="container">
                <div class="row justify-content-center mb-5 pb-3">
                    <div class="col-md-7 heading-section text-center ftco-animate">
                        <span class="subheading">Restaurant</span>
                        <h2>Popular Dishes</h2>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="pricing-entry d-flex ftco-animate">
                            <div
                                class="img order-md-last"
                                style="background-image: url(images/menu-1.jpg)"
                                ></div>
                            <div class="desc pr-3 text-md-right">
                                <div class="d-md-flex text align-items-center">
                                    <h3 class="order-md-last heading-left">
                                        <span>Cheese Cake With Chocolate Topping</span>
                                    </h3>
                                    <span class="price price-left">$20.00</span>
                                </div>
                                <div class="d-block">
                                    <p>A cheesy soft feel with your favourite chocolate flavor</p>
                                </div>
                            </div>
                        </div>
                        <div class="pricing-entry d-flex ftco-animate">
                            <div
                                class="img order-md-last"
                                style="background-image: url(images/menu-2.jpg)"
                                ></div>
                            <div class="desc pr-3 text-md-right">
                                <div class="d-md-flex text align-items-center">
                                    <h3 class="order-md-last heading-left">
                                        <span>Banana Boat With Fruit Salad</span>
                                    </h3>
                                    <span class="price price-left">$29.00</span>
                                </div>
                                <div class="d-block">
                                    <p>Enjoy something different than your usual banana boat</p>
                                </div>
                            </div>
                        </div>
                        <div class="pricing-entry d-flex ftco-animate">
                            <div
                                class="img order-md-last"
                                style="background-image: url(images/menu-3.jpg)"
                                ></div>
                            <div class="desc pr-3 text-md-right">
                                <div class="d-md-flex text align-items-center">
                                    <h3 class="order-md-last heading-left">
                                        <span>Honey Topped Pancakes</span>
                                    </h3>
                                    <span class="price price-left">$20.00</span>
                                </div>
                                <div class="d-block">
                                    <p>
                                        Something special to make your morning meal more interesting
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="pricing-entry d-flex ftco-animate">
                            <div
                                class="img order-md-last"
                                style="background-image: url(images/menu-4.jpg)"
                                ></div>
                            <div class="desc pr-3 text-md-right">
                                <div class="d-md-flex text align-items-center">
                                    <h3 class="order-md-last heading-left">
                                        <span>Grilled Beef with potatoes</span>
                                    </h3>
                                    <span class="price price-left">$20.00</span>
                                </div>
                                <div class="d-block">
                                    <p>
                                        High quality beaf steak with mashed potatoes with butter
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="pricing-entry d-flex ftco-animate">
                            <div
                                class="img"
                                style="background-image: url(images/menu-5.jpg)"
                                ></div>
                            <div class="desc pl-3">
                                <div class="d-md-flex text align-items-center">
                                    <h3><span>Grilled Fish With Potatoes</span></h3>
                                    <span class="price">$49.91</span>
                                </div>
                                <div class="d-block">
                                    <p>High quality salmon with mashed potatoes with butter</p>
                                </div>
                            </div>
                        </div>
                        <div class="pricing-entry d-flex ftco-animate">
                            <div
                                class="img"
                                style="background-image: url(images/menu-6.jpg)"
                                ></div>
                            <div class="desc pl-3">
                                <div class="d-md-flex text align-items-center">
                                    <h3><span>Ultimate Overload</span></h3>
                                    <span class="price">$20.00</span>
                                </div>
                                <div class="d-block">
                                    <p>Our hotel's special hot bowl with five different currys</p>
                                </div>
                            </div>
                        </div>
                        <div class="pricing-entry d-flex ftco-animate">
                            <div
                                class="img"
                                style="background-image: url(images/menu-7.jpg)"
                                ></div>
                            <div class="desc pl-3">
                                <div class="d-md-flex text align-items-center">
                                    <h3><span>Mariba Cocktail</span></h3>
                                    <span class="price">$20.00</span>
                                </div>
                                <div class="d-block">
                                    <p>
                                        Nothing makes you refreshed and relaxed as our Mariba
                                        Cocktail
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="pricing-entry d-flex ftco-animate">
                            <div
                                class="img"
                                style="background-image: url(images/menu-8.jpg)"
                                ></div>
                            <div class="desc pl-3">
                                <div class="d-md-flex text align-items-center">
                                    <h3><span>Juices &amp; Smoothies</span></h3>
                                    <span class="price">$20.00</span>
                                </div>
                                <div class="d-block">
                                    <p>
                                        Enjoy any juices or smoothies you like with our best fruity
                                        blends
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="instagram">
            <div class="container-fluid">
                <div class="row no-gutters justify-content-center pb-5">
                    <div class="col-md-7 text-center heading-section ftco-animate">
                        <span class="subheading">Photos</span>
                        <h2><span>Instagram</span></h2>
                    </div>
                </div>
                <div class="row no-gutters">
                    <div class="col-sm-12 col-md ftco-animate">
                        <a
                            href="images/insta-1.jpg"
                            class="insta-img image-popup"
                            style="background-image: url(images/insta-1.jpg)"
                            >
                            <div class="icon d-flex justify-content-center">
                                <span class="icon-instagram align-self-center"></span>
                            </div>
                        </a>
                    </div>
                    <div class="col-sm-12 col-md ftco-animate">
                        <a
                            href="images/insta-2.jpg"
                            class="insta-img image-popup"
                            style="background-image: url(images/insta-2.jpg)"
                            >
                            <div class="icon d-flex justify-content-center">
                                <span class="icon-instagram align-self-center"></span>
                            </div>
                        </a>
                    </div>
                    <div class="col-sm-12 col-md ftco-animate">
                        <a
                            href="images/insta-3.jpg"
                            class="insta-img image-popup"
                            style="background-image: url(images/insta-3.jpg)"
                            >
                            <div class="icon d-flex justify-content-center">
                                <span class="icon-instagram align-self-center"></span>
                            </div>
                        </a>
                    </div>
                    <div class="col-sm-12 col-md ftco-animate">
                        <a
                            href="images/insta-4.jpg"
                            class="insta-img image-popup"
                            style="background-image: url(images/insta-4.jpg)"
                            >
                            <div class="icon d-flex justify-content-center">
                                <span class="icon-instagram align-self-center"></span>
                            </div>
                        </a>
                    </div>
                    <div class="col-sm-12 col-md ftco-animate">
                        <a
                            href="images/insta-5.jpg"
                            class="insta-img image-popup"
                            style="background-image: url(images/insta-5.jpg)"
                            >
                            <div class="icon d-flex justify-content-center">
                                <span class="icon-instagram align-self-center"></span>
                            </div>
                        </a>
                    </div>
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

