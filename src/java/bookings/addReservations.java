/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bookings;

import com.paypal.base.rest.PayPalRESTException;
import database.DatabaseConnector;
import database.DatabaseHelper;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import modal.OrderDetail;
import modal.Reservation;
//import bookings.Email;
import send.mail.SendEmail;

/**
 *
 * @author User
 */
@WebServlet(name = "addReservations", urlPatterns = {"/addReservations"})
public class addReservations extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        String fullname = request.getParameter("fullname");
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String roomtype = request.getParameter("roomtype");
        int roomnumber = Integer.parseInt(request.getParameter("roomnumber"));
        String chkin = request.getParameter("chkin");
        String chkout = request.getParameter("chkout");
        int guests = Integer.parseInt(request.getParameter("guests"));

        Reservation resModel = new Reservation(fullname, username, email, roomtype, roomnumber, chkin, chkout, guests);

        DatabaseHelper addRes = new DatabaseHelper(DatabaseConnector.getConnection());
//        if (addRes.saveRes(resModel)) {
//            response.sendRedirect("bookingsuccess.jsp");
//        } else {
//            response.sendRedirect("error.jsp");
//        }

        SendEmail sm = new SendEmail();
        String code = sm.getRandom();

        Email mail = new Email(username, email, code);

        boolean set = sm.SendEmail(mail);

        if (set) {
            HttpSession session = request.getSession();
            session.setAttribute("authcode", email);

        }

        String total = request.getParameter("total");

        OrderDetail orderDetail = new OrderDetail(roomtype, total);

        try {
            PaymentServices paymentServices = new PaymentServices();
            String approvalLink = paymentServices.authorizePayment(orderDetail);

            response.sendRedirect(approvalLink);

        } catch (PayPalRESTException ex) {
            request.setAttribute("errorMessage", ex.getMessage());
            ex.printStackTrace();
            request.getRequestDispatcher("error.jsp").forward(request, response);
        }

    }
     /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>


    
}


