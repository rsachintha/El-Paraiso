<%@page import="modal.Rooms"%>
<%@page import="database.DatabaseConnector"%>
<%@page import="database.DatabaseHelper"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    int roomID = Integer.parseInt(request.getParameter("roomID"));
    DatabaseHelper db = new DatabaseHelper(DatabaseConnector.getConnection());
    Rooms rm = db.getSingleRoom(roomID);
    request.setAttribute("edit_rooms", rm);
%>
<!DOCTYPE html>
<html>
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link rel="stylesheet" href="css/style.css" />

        <title>Edit Room Data</title>
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
                            Edit Room Details</h3>
                        <form action="EditRoom" method="post">
                            <div class="form-group">
                                <label>Room Number</label>
                                <input class="form-control" name="roomID" value="${edit_rooms.roomID }" required>
                            </div>
                            <div class="form-group">
                                <label>Room Type</label>
                                <input class="form-control" name="roomType" value="${edit_rooms.roomType }" required>
                            </div>
                            <div class="form-group">
                                <label>Booked</label>
                                <input class="form-control" name="booked" value="${edit_rooms.booked}" required>
                            </div>
                            <div class="form-group">
                                <label>Price</label>
                                <input class="form-control" name="price" value="${edit_rooms.price}" required>
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


