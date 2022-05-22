<%@page import="modal.Reservation"%>
<%@page import="database.DatabaseConnector"%>
<%@page import="database.DatabaseHelper"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    int resID = Integer.parseInt(request.getParameter("resID"));
    DatabaseHelper db = new DatabaseHelper(DatabaseConnector.getConnection());
    Reservation res = db.getSingleRes(resID);
    request.setAttribute("edit_res", res);
%>

<!DOCTYPE html>
<html>
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link rel="stylesheet" href="css/style.css" />

        <title>Edit Reservation Data</title>
        <style>
            .inner{
                position: relative;
                margin: 0 auto;
                width: 650px;
                display: block;
                padding: 50px 0;
            }
            h3{
                text-align: center;
                border-bottom: 2px solid midnightblue;
                margin-bottom: 20px;
            }
            nav li a{
                font-size: 25px;
                font-weight: 500;
            }
            a{
                color: #fff;
                text-decoration: none;
            }
        </style>
    </head>
    <body>
        <div class="inner">
            <div class=" container">
                <div class="row">
                    <div class="col-12">
                        <h3>
                            Edit Reservations Details</h3>
                        <form action="EditRes" method="post">
                            <div class="form-group">
                                <label>Reservation ID</label>
                                <input class="form-control" name="resID" value="${edit_res.resID }" required>
                            </div>
                            <div class="form-group">
                                <label>Fullname</label>
                                <input class="form-control" name="fullname" value="${edit_res.fullname }" required>
                            </div>
                            <div class="form-group">
                                <label>Username</label>
                                <input class="form-control" name="username" value="${edit_res.username}" required>
                            </div>
                            <div class="form-group">
                                <label>Email</label>
                                <input class="form-control" name="email" value="${edit_res.email}" required>
                            </div>
                            <div class="form-group" >
  
                                <label>Room Type</label>
                                <select id="inputState" class="form-control" name="roomtype" required>
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
                                <input class="form-control" name="roomnumber" value="${edit_res.roomnumber}" required>
                            </div>
                            <div class="form-group">
                                <label>Check-In Date</label>
                                <input class="form-control" name="chkin" value="${edit_res.chkin}" required>
                            </div>
                            <div class="form-group">
                                <label>Check-Out Date</label>
                                <input class="form-control" name="chkout" value="${edit_res.chkout}" required>
                            </div>
                            <div class="form-group">
                                <label>Guests</label>
                                <input class="form-control" name="guests" value="${edit_res.guests}" required>
                            </div>
                            <button type="submit" class="btn btn-primary">Save</button>
                            <button  class="btn btn-primary"><a href="admin.jsp">Cancel</a></button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

    </body>
</html>