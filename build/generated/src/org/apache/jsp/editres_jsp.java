package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import modal.Reservation;
import database.DatabaseConnector;
import database.DatabaseHelper;

public final class editres_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
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

//    int resID = Integer.parseInt(request.getParameter("resID"));
//    DatabaseHelper db = new DatabaseHelper(DatabaseConnector.getConnection());
//    Reservation rs = rs.getSingleRes(resID);
//    request.setAttribute("edit_res", rs);

      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <!-- Required meta tags -->\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/style.css\" />\n");
      out.write("\n");
      out.write("        <title>Edit Reservation Data</title>\n");
      out.write("        <style>\n");
      out.write("            .inner{\n");
      out.write("                position: relative;\n");
      out.write("                margin: 0 auto;\n");
      out.write("                width: 650px;\n");
      out.write("                display: block;\n");
      out.write("                padding: 50px 0;\n");
      out.write("            }\n");
      out.write("            h3{\n");
      out.write("                text-align: center;\n");
      out.write("                border-bottom: 2px solid midnightblue;\n");
      out.write("                margin-bottom: 20px;\n");
      out.write("            }\n");
      out.write("            nav li a{\n");
      out.write("                font-size: 25px;\n");
      out.write("                font-weight: 500;\n");
      out.write("            }\n");
      out.write("            a{\n");
      out.write("                color: #fff;\n");
      out.write("                text-decoration: none;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"inner\">\n");
      out.write("            <div class=\" container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-12\">\n");
      out.write("                        <h3>\n");
      out.write("                            Edit Room Details</h3>\n");
      out.write("                        <form action=\"EditRes\" method=\"post\">\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <label>Reservation ID</label>\n");
      out.write("                                <input class=\"form-control\" name=\"resID\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${edit_rooms.roomID }", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" required>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <label>Fullname</label>\n");
      out.write("                                <input class=\"form-control\" name=\"fullname\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${edit_rooms.roomType }", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" required>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <label>Username</label>\n");
      out.write("                                <input class=\"form-control\" name=\"username\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${edit_rooms.booked}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" required>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <label>Email</label>\n");
      out.write("                                <input class=\"form-control\" name=\"email\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${edit_rooms.price}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" required>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"form-group\" >\n");
      out.write("  \n");
      out.write("                                <label>Room Type</label>\n");
      out.write("                                <select id=\"inputState\" class=\"form-control\" name=\"roomtype\" required>\n");
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
      out.write("                                <input class=\"form-control\" name=\"roomnumber\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${edit_rooms.price}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" required>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <label>Check-In Date</label>\n");
      out.write("                                <input class=\"form-control\" name=\"chkin\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${edit_rooms.price}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" required>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <label>Check-Out Date</label>\n");
      out.write("                                <input class=\"form-control\" name=\"chkout\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${edit_rooms.price}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" required>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <label>Guests</label>\n");
      out.write("                                <input class=\"form-control\" name=\"guests\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${edit_rooms.price}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" required>\n");
      out.write("                            </div>\n");
      out.write("                            <button type=\"submit\" class=\"btn btn-primary\">Save</button>\n");
      out.write("                            <button  class=\"btn btn-primary\"><a href=\"admin.jsp\">Cancel</a></button>\n");
      out.write("                        </form>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <!-- jQuery first, then Popper.js, then Bootstrap JS -->\n");
      out.write("        <script src=\"https://code.jquery.com/jquery-3.4.1.slim.min.js\"></script>\n");
      out.write("        <script src=\"https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js\"></script>\n");
      out.write("        <script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js\"></script>\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>");
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
}
