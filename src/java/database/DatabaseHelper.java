/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package database;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import modal.Admin;
import modal.Feedbacks;
import modal.Reservation;
import modal.Rooms;
import modal.User;

/**
 *
 * @author User
 */
public class DatabaseHelper {
    
    Connection con;
    
    public DatabaseHelper(Connection con) {
        this.con = con;
    }
    
    public boolean saveUser(User clients) {
        boolean set = false;
        try {
            
            String query = "insert into clients(title,fullName,dobDate,dobMonth,dobYear,userName,email,phoneNumber,password,passwordConfirm,gender) values(?,?,?,?,?,?,?,?,?,?,?)";
            
            PreparedStatement ps = this.con.prepareStatement(query);
            ps.setString(1, clients.getTitle());
            ps.setString(2, clients.getFullName());
            ps.setString(3, clients.getDobDate());
            ps.setString(4, clients.getDobMonth());
            ps.setString(5, clients.getDobYear());
            ps.setString(6, clients.getUserName());
            ps.setString(7, clients.getEmail());
            ps.setString(8, clients.getPhoneNumber());
            ps.setString(9, clients.getPassword());
            ps.setString(10, clients.getPasswordConfirm());
            ps.setString(11, clients.getGender());
            
            ps.executeUpdate();
            set = true;
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return set;
    }
    
    public User logUser(String userName, String password) {
        User usr = null;
        try {
            String query = "select * from clients where userName=? and password=?";
            PreparedStatement ps = this.con.prepareStatement(query);
            ps.setString(1, userName);
            ps.setString(2, password);
            
            ResultSet rs = ps.executeQuery();
            
            if (rs.next()) {
                usr = new User();
                usr.setClientID(rs.getInt("clientID"));
                usr.setFullName(rs.getString("fullName"));
                usr.setDobDate(rs.getString("dobDate"));
                usr.setDobMonth(rs.getString("dobMonth"));
                usr.setDobYear(rs.getString("dobYear"));
                usr.setUserName(rs.getString("userName"));
                usr.setEmail(rs.getString("email"));
                usr.setPhoneNumber(rs.getString("phoneNumber"));
                usr.setPassword(rs.getString("password"));
                usr.setPasswordConfirm(rs.getString("passwordConfirm"));
                usr.setGender(rs.getString("gender"));
                
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        return usr;
    }
    
    public boolean  saveRes(Reservation reservations) {
        boolean set = false;
        try {
            Thread.sleep(3 * 1000);
            String query = "insert into reservations(fullname,username,email,roomtype,roomnumber,chkin,chkout,guests) values(?,?,?,?,?,?,?,?)";
            
            PreparedStatement ps = this.con.prepareStatement(query);
            ps.setString(1, reservations.getFullname());
            ps.setString(2, reservations.getUsername());
            ps.setString(3, reservations.getEmail());
            ps.setString(4, reservations.getRoomtype());
            ps.setInt(5, reservations.getRoomnumber());
            ps.setString(6, reservations.getChkin());
            ps.setString(7, reservations.getChkout());
            ps.setInt(8, reservations.getGuests());
            
            ps.executeUpdate();
            set = true;
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return set;
    }
    
    public boolean saveRoom(Rooms rooms) {
        boolean set = false;
        
        try {
            String query = "insert into rooms(roomType,booked,price) values(?,?,?)";
            PreparedStatement ps = this.con.prepareStatement(query);
            ps.setString(1, rooms.getRoomType());
            ps.setString(2, rooms.getBooked());
            ps.setDouble(3, rooms.getPrice());
            ps.executeUpdate();
            set = true;
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return set;
    }
    
    public List<Rooms> getAllRooms() {
        List<Rooms> room = new ArrayList<>();
        
        try {
            String query = "select * from rooms";
            PreparedStatement ps = this.con.prepareStatement(query);
            
            ResultSet rs = ps.executeQuery();
            
            while (rs.next()) {
                
                int roomID = rs.getInt("roomID");
                String roomType = rs.getString("roomType");
                String booked = rs.getString("booked");
                double price = rs.getDouble("price");
                
                Rooms row = new Rooms(roomID, roomType, booked, price);
                room.add(row);
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        return room;
    }
    
    public List<User> getAllClients() {
        List<User> user = new ArrayList<>();
        
        try {
            String query = "select * from clients";
            PreparedStatement ps = this.con.prepareStatement(query);
            
            ResultSet rs = ps.executeQuery();
            
            while (rs.next()) {
                
                int clientID = rs.getInt("clientID");
                String title = rs.getString("title");
                String fullName = rs.getString("fullName");
                String dobDate = rs.getString("dobDate");
                String dobMonth = rs.getString("dobMonth");
                String dobYear = rs.getString("dobYear");
                String userName = rs.getString("userName");
                String email = rs.getString("email");
                String phoneNumber = rs.getString("phoneNumber");
                String password = rs.getString("password");
                String passwordConfirm = rs.getString("passwordConfirm");
                String gender = rs.getString("gender");
                
                User row = new User(clientID, title, fullName, dobDate, dobMonth, dobMonth, userName, email, phoneNumber, password, passwordConfirm, gender);
                user.add(row);
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        return user;
    }
    
    public List<Reservation> getAllRes() {
        List<Reservation> res = new ArrayList<>();
        
        try {
            String query = "select * from reservations";
            PreparedStatement ps = this.con.prepareStatement(query);
            
            ResultSet rs = ps.executeQuery();
            
            while (rs.next()) {
                
                int resID = rs.getInt("resID");
                String fullname = rs.getString("fullname");
                String username = rs.getString("username");
                String email = rs.getString("email");
                String roomtype = rs.getString("roomtype");
                int roomnumber = rs.getInt("roomnumber");
                String chkin = rs.getString("chkin");
                String chkout = rs.getString("chkout");
                int guests = rs.getInt("guests");
                
                Reservation row = new Reservation(resID, fullname, username, email, roomtype, roomnumber, chkin, chkout, guests);
                res.add(row);
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        return res;
    }
    
    public List<Feedbacks> getAllFeds() {
        List<Feedbacks> fed = new ArrayList<>();
        
        try {
            String query = "select * from feedbacks";
            PreparedStatement ps = this.con.prepareStatement(query);
            
            ResultSet rs = ps.executeQuery();
            
            while (rs.next()) {
                
                String name = rs.getString("name");
                String email = rs.getString("email");
                String sbjct = rs.getString("sbjct");
                String msg = rs.getString("msg");
                
                Feedbacks row = new Feedbacks(name, email, sbjct, msg);
                fed.add(row);
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        return fed;
    }
    
    public boolean addFdback(Feedbacks feedbacks) {
        boolean set = false;
        try {
            
            String query = "insert into feedbacks(name,email,sbjct,msg) values(?,?,?,?)";
            
            PreparedStatement ps = this.con.prepareStatement(query);
            ps.setString(1, feedbacks.getName());
            ps.setString(2, feedbacks.getEmail());
            ps.setString(3, feedbacks.getSbjct());
            ps.setString(4, feedbacks.getMsg());
            
            ps.executeUpdate();
            set = true;
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return set;
        
    }
    
    public Admin logAdmin(String username, String password) {
        Admin admn = null;
        try {
            String query = "select * from admins where username=? and password=?";
            PreparedStatement ps = this.con.prepareStatement(query);
            ps.setString(1, username);
            ps.setString(2, password);
            
            ResultSet rs = ps.executeQuery();
            
            if (rs.next()) {
                admn = new Admin();
                admn.setAdminID(rs.getInt("adminID"));
                admn.setUsername(rs.getString("username"));
                admn.setPassword(rs.getString("password"));
                
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        return admn;
    }

    //    get single book information in edit page
    public Rooms getSingleRoom(int roomID) {
        Rooms rm = null;
        
        try {
            String query = "select * from rooms where roomID=? ";
            
            PreparedStatement pt = this.con.prepareStatement(query);
            pt.setInt(1, roomID);
            ResultSet rs = pt.executeQuery();
            
            while (rs.next()) {
                int rmID = rs.getInt("roomID");
                String rmType = rs.getString("roomType");
                String rmBooked = rs.getString("booked");
                double rmPrice = rs.getDouble("price");
                rm = new Rooms(rmID, rmType, rmBooked, rmPrice);
            }
        } catch (Exception ex) {
            ex.printStackTrace();;
        }
        return rm;
    }
    
    public boolean editRoomInfo(Rooms rm) {
        boolean set = false;
        try {
            String query = "update rooms set roomType=?, booked=?, price=? where roomID=?";
            PreparedStatement ps = this.con.prepareStatement(query);
            ps.setString(1, rm.getRoomType());
            ps.setString(2, rm.getBooked());
            ps.setDouble(3, rm.getPrice());
            ps.setInt(4, rm.getRoomID());
            ps.executeUpdate();
            
            set = true;
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        return set;
    }
    
    public Reservation getSingleRes(int resID) {
        Reservation res = null;
        
        try {
            String query = "select * from reservations where resID=? ";
            
            PreparedStatement pt = this.con.prepareStatement(query);
            pt.setInt(1, resID);
            ResultSet rs = pt.executeQuery();
            
            while (rs.next()) {
                int rsID = rs.getInt("resID");
                String rsFullname = rs.getString("fullname");
                String rsUsername = rs.getString("username");
                String rsEmail = rs.getString("email");
                String rsRoomtype = rs.getString("roomtype");
                int rsRoomnumber = rs.getInt("roomnumber");
                String rsChkin = rs.getString("chkin");
                String rsChkout = rs.getString("chkout");
                int rsGuests = rs.getInt("guests");
                res = new Reservation(rsID, rsFullname, rsUsername, rsEmail, rsRoomtype, rsRoomnumber, rsChkin, rsChkout, rsGuests);
            }
        } catch (Exception ex) {
            ex.printStackTrace();;
        }
        return res;
    }
    
    public boolean editResInfo(Reservation res) {
        boolean set = false;
        try {
            String query = "update reservations set fullname=?, username=?, email=?, roomtype=?, roomnumber=?, chkin=?, chkout=?, guests=? where resID=?";
            PreparedStatement ps = this.con.prepareStatement(query);
            ps.setString(1, res.getFullname());
            ps.setString(2, res.getUsername());
            ps.setString(3, res.getEmail());
            ps.setString(4, res.getRoomtype());
            ps.setInt(5, res.getRoomnumber());
            ps.setString(6, res.getChkin());
            ps.setString(7, res.getChkout());
            ps.setInt(8, res.getGuests());
            ps.setInt(9, res.getResID());
            ps.executeUpdate();
            
            set = true;
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        return set;
    }

//    delete books from database
    public void deleteRes(int resID) {
        try {
            
            String query = "delete from reservations where resID=?";
            PreparedStatement pt = this.con.prepareStatement(query);
            pt.setInt(1, resID);
            pt.execute();
            
        } catch (Exception ex) {
            ex.printStackTrace();;
        }
    }
    
    public void deleteClient(int clientID) {
        try {
            
            String query = "delete from clients where clientID=?";
            PreparedStatement pt = this.con.prepareStatement(query);
            pt.setInt(1, clientID);
            pt.execute();
            
        } catch (Exception ex) {
            ex.printStackTrace();;
        }
    }
    
    public void deleteFed(String name) {
        try {
            
            String query = "delete from feedbacks where resID=?";
            PreparedStatement pt = this.con.prepareStatement(query);
            pt.setString(1, name);
            pt.execute();
            
        } catch (Exception ex) {
            ex.printStackTrace();;
        }
    }
    
}
