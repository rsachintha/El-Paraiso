package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import modal.User;
import java.util.List;
import modal.Rooms;
import database.DatabaseConnector;
import database.DatabaseHelper;

public final class booking_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_forEach_var_items;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_forEach_var_items = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_forEach_var_items.release();
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");

    response.setHeader("Cache-control", "no-cache");
    response.setHeader("Cache-control", "no-store");
    response.setHeader("Pragma", "no-cache");
    response.setDateHeader("Expire", 0);

    User user = (User) session.getAttribute("logUser");
    if (user == null) {
        response.sendRedirect("index.html");
    }

      out.write('\n');
      out.write('\n');

    DatabaseHelper roomData = new DatabaseHelper(DatabaseConnector.getConnection());
    List<Rooms> room = roomData.getAllRooms();
    request.setAttribute("ROOMS_LIST", room);

      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("\n");
      out.write("        <title>El Paraíso</title>\n");
      out.write("        <!-- Required meta tags -->\n");
      out.write("        <meta charset=\"utf-8\" />\n");
      out.write("        <meta\n");
      out.write("            name=\"viewport\"\n");
      out.write("            content=\"width=device-width, initial-scale=1, shrink-to-fit=no\"\n");
      out.write("            />\n");
      out.write("\n");
      out.write("        <!-- Bootstrap CSS -->\n");
      out.write("        <!--        <link\n");
      out.write("                    rel=\"stylesheet\"\n");
      out.write("                    href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css\"\n");
      out.write("                    />-->\n");
      out.write("\n");
      out.write("        <link\n");
      out.write("            href=\"https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700\"\n");
      out.write("            rel=\"stylesheet\"\n");
      out.write("            />\n");
      out.write("        <link\n");
      out.write("            href=\"https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700,700i\"\n");
      out.write("            rel=\"stylesheet\"\n");
      out.write("            />\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/open-iconic-bootstrap.min.css\" />\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/animate.css\" />\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/owl.carousel.min.css\" />\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/owl.theme.default.min.css\" />\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/magnific-popup.css\" />\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/aos.css\" />\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/ionicons.min.css\" />\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/bootstrap-datepicker.css\" />\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/jquery.timepicker.css\" />\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/flaticon.css\" />\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/icomoon.css\" />\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/style.css\" />\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!--        <style>\n");
      out.write("                    .inner {\n");
      out.write("                        margin: 15px 0;\n");
      out.write("                    }\n");
      out.write("                </style>-->\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <nav\n");
      out.write("            class=\"\n");
      out.write("            navbar navbar-expand-lg navbar-dark\n");
      out.write("            ftco_navbar\n");
      out.write("            bg-dark\n");
      out.write("            ftco-navbar-light\n");
      out.write("            \"\n");
      out.write("            id=\"ftco-navbar\"\n");
      out.write("            >\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <a class=\"navbar-brand\" href=\"index.html\">El Paraíso</a>\n");
      out.write("                <button\n");
      out.write("                    class=\"navbar-toggler\"\n");
      out.write("                    type=\"button\"\n");
      out.write("                    data-toggle=\"collapse\"\n");
      out.write("                    data-target=\"#ftco-nav\"\n");
      out.write("                    aria-controls=\"ftco-nav\"\n");
      out.write("                    aria-expanded=\"false\"\n");
      out.write("                    aria-label=\"Toggle navigation\"\n");
      out.write("                    >\n");
      out.write("                    <span class=\"oi oi-menu\"></span> Menu\n");
      out.write("                </button>\n");
      out.write("\n");
      out.write("                <div class=\"collapse navbar-collapse\" id=\"ftco-nav\">\n");
      out.write("                    <ul class=\"navbar-nav ml-auto\">\n");
      out.write("                        <li class=\"nav-item active\">\n");
      out.write("                            <a href=\"welcome.jsp\" class=\"nav-link\">Home</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"nav-item\">\n");
      out.write("                            <a href=\"rooms.jsp\" class=\"nav-link\">Rooms & Suites</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"nav-item\">\n");
      out.write("                            <a href=\"restaurant.jsp\" class=\"nav-link\">Restaurant</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"nav-item\">\n");
      out.write("                            <a href=\"about.jsp\" class=\"nav-link\">About</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"nav-item\">\n");
      out.write("                            <a href=\"Feedbacks.jsp\" class=\"nav-link\">Feedbacks</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"nav-item\">\n");
      out.write("                            <a href=\"signin.jsp\" class=\"nav-link\">Sign In</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"nav-item\">\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <a href=\"logout\"\n");
      out.write("                                   ><input\n");
      out.write("                                        type=\"submit\"\n");
      out.write("                                        value=\"Sign Out\"\n");
      out.write("                                        class=\"btn btn-primary py-3 px-4\"\n");
      out.write("                                        /></a>\n");
      out.write("                            </div>\n");
      out.write("                        </li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </nav>\n");
      out.write("        <!-- END nav -->\n");
      out.write("        <div class=\"hero\">\n");
      out.write("            <section class=\"home-slider owl-carousel\">\n");
      out.write("                <div class=\"slider-item\" style=\"background-image: url(images/bg_1.jpg)\">\n");
      out.write("                    <div class=\"overlay\"></div>\n");
      out.write("                    <div class=\"container\">\n");
      out.write("                        <div class=\"row no-gutters slider-text align-items-center\">\n");
      out.write("                            <div class=\"col-md-8 ftco-animate\">\n");
      out.write("                                <div class=\"text mb-5 pb-5\">\n");
      out.write("                                    <h1 class=\"mb-3\">El Paraíso</h1>\n");
      out.write("                                    <h2>Feel The Wonderful Experience of The Paradise Itself.</h2>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"slider-item\" style=\"background-image: url(images/bg_2.jpg)\">\n");
      out.write("                    <div class=\"overlay\"></div>\n");
      out.write("                    <div class=\"container\">\n");
      out.write("                        <div class=\"row no-gutters slider-text align-items-center\">\n");
      out.write("                            <div class=\"col-md-8 ftco-animate\">\n");
      out.write("                                <div class=\"text mb-5 pb-5\">\n");
      out.write("                                    <h1 class=\"mb-3\">Experience Epic Beauty</h1>\n");
      out.write("                                    <h2>El Paraíso Hotel &amp; Resort</h2>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </section>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"inner\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-md-3\">\n");
      out.write("                        <h3>Booking Information</h3>\n");
      out.write("                        <form action=\"addReservations\" method=\"post\">\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <label>Full Name</label>\n");
      out.write("                                <input\n");
      out.write("                                    class=\"form-control\"\n");
      out.write("                                    name=\"fullname\"\n");
      out.write("                                    place-holder=\"Full Name\"\n");
      out.write("                                    required\n");
      out.write("                                    />\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <label>Username</label>\n");
      out.write("                                <input\n");
      out.write("                                    class=\"form-control\"\n");
      out.write("                                    name=\"username\"\n");
      out.write("                                    place-holder=\"Username\"\n");
      out.write("                                    required\n");
      out.write("                                    />\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <label>Email</label>\n");
      out.write("                                <input\n");
      out.write("                                    class=\"form-control\"\n");
      out.write("                                    name=\"email\"\n");
      out.write("                                    place-holder=\"Sample@gmail.com\"\n");
      out.write("                                    required\n");
      out.write("                                    />\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <label>Room Type</label>\n");
      out.write("                                <select\n");
      out.write("                                    id=\"inputState\"\n");
      out.write("                                    class=\"form-control\"\n");
      out.write("                                    name=\"roomtype\"\n");
      out.write("                                    required\n");
      out.write("                                    >\n");
      out.write("                                    <option selected disabled>Choose Room Type</option>\n");
      out.write("                                    <option value=\"Deluxe Room\">Deluxe Room</option>\n");
      out.write("                                    <option value=\"Deluxe Ocean View Room\">\n");
      out.write("                                        Deluxe Ocean View Room\n");
      out.write("                                    </option>\n");
      out.write("                                    <option value=\"Deluxe Pool View Room\">\n");
      out.write("                                        Deluxe Pool View Room\n");
      out.write("                                    </option>\n");
      out.write("                                    <option value=\"Deluxe Nature View Room\">\n");
      out.write("                                        Deluxe Nature View Room\n");
      out.write("                                    </option>\n");
      out.write("                                    <option value=\"Executive Suite\">Executive Suite</option>\n");
      out.write("                                    <option value=\"Speaciality Suite\">Speaciality Suite</option>\n");
      out.write("                                </select>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <label>Room Number</label>\n");
      out.write("                                <input\n");
      out.write("                                    class=\"form-control\"\n");
      out.write("                                    name=\"roomnumber\"\n");
      out.write("                                    place-holder=\"Room Number\"\n");
      out.write("                                    required\n");
      out.write("                                    />\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <label>Check-In</label>\n");
      out.write("                                <input\n");
      out.write("                                    class=\"form-control\"\n");
      out.write("                                    name=\"chkin\"\n");
      out.write("                                    place-holder=\"DD/MM/YYYY\"\n");
      out.write("                                    required\n");
      out.write("                                    />\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <label>Check-Out</label>\n");
      out.write("                                <input\n");
      out.write("                                    class=\"form-control\"\n");
      out.write("                                    name=\"chkout\"\n");
      out.write("                                    place-holder=\"DD/MM/YYYY\"\n");
      out.write("                                    required\n");
      out.write("                                    />\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <label>Guests</label>\n");
      out.write("                                <input\n");
      out.write("                                    class=\"form-control\"\n");
      out.write("                                    name=\"guests\"\n");
      out.write("                                    place-holder=\"Number of Guests\"\n");
      out.write("                                    required\n");
      out.write("                                    />\n");
      out.write("                            </div>\n");
      out.write("                            <button type=\"submit\" class=\"btn btn-primary\">Submit</button>\n");
      out.write("                            <button type=\"reset\" class=\"btn btn-primary\">Reset</button>\n");
      out.write("                        </form>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-md-9\">\n");
      out.write("                        <h3>Available Rooms & Suits</h3>\n");
      out.write("                        <table class=\"table\">\n");
      out.write("                            <thead class=\"bg-light\">\n");
      out.write("                                <tr>\n");
      out.write("                                    <th scope=\"col\">Room Number</th>\n");
      out.write("                                    <th scope=\"col\">Room Type</th>\n");
      out.write("                                    <th scope=\"col\">Booked</th>\n");
      out.write("                                    <th scope=\"col\">Price Per Night ($)</th>\n");
      out.write("\n");
      out.write("                                </tr>\n");
      out.write("                            </thead>\n");
      out.write("                            <tbody>\n");
      out.write("                                ");
      if (_jspx_meth_c_forEach_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                            </tbody>\n");
      out.write("                        </table>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <footer class=\"ftco-footer ftco-bg-dark ftco-section\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row mb-5\">\n");
      out.write("                    <div class=\"col-md\">\n");
      out.write("                        <div class=\"ftco-footer-widget mb-4\">\n");
      out.write("                            <h2 class=\"ftco-heading-2\">El Paraíso</h2>\n");
      out.write("                            <p>\n");
      out.write("                                Far far away, behind the word mountains, far from the countries\n");
      out.write("                                Vokalia and Consonantia, there live the blind texts.\n");
      out.write("                            </p>\n");
      out.write("                            <ul\n");
      out.write("                                class=\"\n");
      out.write("                                ftco-footer-social\n");
      out.write("                                list-unstyled\n");
      out.write("                                float-md-left float-lft\n");
      out.write("                                mt-5\n");
      out.write("                                \"\n");
      out.write("                                >\n");
      out.write("                                <li class=\"ftco-animate\">\n");
      out.write("                                    <a href=\"#\"><span class=\"icon-twitter\"></span></a>\n");
      out.write("                                </li>\n");
      out.write("                                <li class=\"ftco-animate\">\n");
      out.write("                                    <a href=\"#\"><span class=\"icon-facebook\"></span></a>\n");
      out.write("                                </li>\n");
      out.write("                                <li class=\"ftco-animate\">\n");
      out.write("                                    <a href=\"#\"><span class=\"icon-instagram\"></span></a>\n");
      out.write("                                </li>\n");
      out.write("                            </ul>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-md\">\n");
      out.write("                        <div class=\"ftco-footer-widget mb-4 ml-md-5\">\n");
      out.write("                            <h2 class=\"ftco-heading-2\">Useful Links</h2>\n");
      out.write("                            <ul class=\"list-unstyled\">\n");
      out.write("                                <li>\n");
      out.write("                                    <a href=\"rooms.html\" class=\"py-2 d-block\">Rooms & Suites</a>\n");
      out.write("                                </li>\n");
      out.write("                                <li>\n");
      out.write("                                    <a href=\"restaurant.html\" class=\"py-2 d-block\">Restaurant</a>\n");
      out.write("                                </li>\n");
      out.write("                                <li><a href=\"signin.html\" class=\"py-2 d-block\">Sign In</a></li>\n");
      out.write("                                <li>\n");
      out.write("                                    <a href=\"joinnow.html\" class=\"py-2 d-block\">Join Now</a>\n");
      out.write("                                </li>\n");
      out.write("                            </ul>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-md\">\n");
      out.write("                        <div class=\"ftco-footer-widget mb-4\">\n");
      out.write("                            <h2 class=\"ftco-heading-2\">Privacy</h2>\n");
      out.write("                            <ul class=\"list-unstyled\">\n");
      out.write("                                <li><a href=\"#\" class=\"py-2 d-block\">Career</a></li>\n");
      out.write("                                <li><a href=\"about.html\" class=\"py-2 d-block\">About Us</a></li>\n");
      out.write("                                <li>\n");
      out.write("                                    <a href=\"contact.html\" class=\"py-2 d-block\">Contact Us</a>\n");
      out.write("                                </li>\n");
      out.write("                                <li><a href=\"#services\" class=\"py-2 d-block\">Services</a></li>\n");
      out.write("                            </ul>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-md\">\n");
      out.write("                        <div class=\"ftco-footer-widget mb-4\">\n");
      out.write("                            <h2 class=\"ftco-heading-2\">Want to Contact Us?</h2>\n");
      out.write("                            <div class=\"block-23 mb-3\">\n");
      out.write("                                <ul>\n");
      out.write("                                    <li>\n");
      out.write("                                        <span class=\"icon icon-map-marker\"></span\n");
      out.write("                                        ><span class=\"text\"\n");
      out.write("                                               >203 Fake St. Mountain View, Colombo 03, Western, Sri\n");
      out.write("                                            Lanka</span\n");
      out.write("                                        >\n");
      out.write("                                    </li>\n");
      out.write("                                    <li>\n");
      out.write("                                        <a href=\"#\"\n");
      out.write("                                           ><span class=\"icon icon-phone\"></span\n");
      out.write("                                            ><span class=\"text\">+97 112 667 889</span></a\n");
      out.write("                                        >\n");
      out.write("                                    </li>\n");
      out.write("                                    <li>\n");
      out.write("                                        <a href=\"#\"\n");
      out.write("                                           ><span class=\"icon icon-envelope\"></span\n");
      out.write("                                            ><span class=\"text\">info@elparaiso.com</span></a\n");
      out.write("                                        >\n");
      out.write("                                    </li>\n");
      out.write("                                </ul>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-md-12 text-center\">\n");
      out.write("                        <p>\n");
      out.write("                            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->\n");
      out.write("                            Copyright &copy;\n");
      out.write("                            <script>\n");
      out.write("                                document.write(new Date().getFullYear());\n");
      out.write("                            </script>\n");
      out.write("                            All rights reserved | Designed by Team CodeHunters.\n");
      out.write("                        </p>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </footer>\n");
      out.write("        <!-- Optional JavaScript -->\n");
      out.write("        <!-- jQuery first, then Popper.js, then Bootstrap JS -->\n");
      out.write("        <script src=\"https://code.jquery.com/jquery-3.4.1.slim.min.js\"></script>\n");
      out.write("        <script src=\"https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js\"></script>\n");
      out.write("        <script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js\"></script>\n");
      out.write("        <script src=\"js/jquery.min.js\"></script>\n");
      out.write("        <script src=\"js/jquery-migrate-3.0.1.min.js\"></script>\n");
      out.write("        <script src=\"js/popper.min.js\"></script>\n");
      out.write("        <script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("        <script src=\"js/jquery.easing.1.3.js\"></script>\n");
      out.write("        <script src=\"js/jquery.waypoints.min.js\"></script>\n");
      out.write("        <script src=\"js/jquery.stellar.min.js\"></script>\n");
      out.write("        <script src=\"js/owl.carousel.min.js\"></script>\n");
      out.write("        <script src=\"js/jquery.magnific-popup.min.js\"></script>\n");
      out.write("        <script src=\"js/aos.js\"></script>\n");
      out.write("        <script src=\"js/jquery.animateNumber.min.js\"></script>\n");
      out.write("        <script src=\"js/jquery.mb.YTPlayer.min.js\"></script>\n");
      out.write("        <script src=\"js/bootstrap-datepicker.js\"></script>\n");
      out.write("        <!-- // <script src=\"js/jquery.timepicker.min.js\"></script> -->\n");
      out.write("        <script src=\"js/scrollax.min.js\"></script>\n");
      out.write("        <script src=\"https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false\"></script>\n");
      out.write("        <script src=\"js/google-map.js\"></script>\n");
      out.write("        <script src=\"js/main.js\"></script>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("</Rooms>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }

  private boolean _jspx_meth_c_forEach_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_0.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_0.setParent(null);
    _jspx_th_c_forEach_0.setVar("tempRoom");
    _jspx_th_c_forEach_0.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${ROOMS_LIST}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int[] _jspx_push_body_count_c_forEach_0 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_0 = _jspx_th_c_forEach_0.doStartTag();
      if (_jspx_eval_c_forEach_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                                    <tr>\n");
          out.write("                                        <td>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${tempRoom.roomID }", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</td>\n");
          out.write("                                        <td>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${tempRoom.roomType }", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</td>\n");
          out.write("                                        <td>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${tempRoom.booked }", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</td>\n");
          out.write("                                        <td>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${tempRoom.price}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</td>\n");
          out.write("\n");
          out.write("\n");
          out.write("\n");
          out.write("                                    </tr>\n");
          out.write("                                ");
          int evalDoAfterBody = _jspx_th_c_forEach_0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_0[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_0.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_0.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_0);
    }
    return false;
  }
}
