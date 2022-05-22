/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modal;

/**
 *
 * @author User
 */
public class Reservation {

    int resID;
    String fullname;
    String username;
    String email;
    String roomtype;
    int roomnumber;
    String chkin;
    String chkout;
    int guests;

    public Reservation() {
    }

    public Reservation(int resID, String fullname, String username, String email, String roomtype, int roomnumber, String chkin, String chkout, int guests) {
        this.resID = resID;
        this.fullname = fullname;
        this.username = username;
        this.email = email;
        this.roomtype = roomtype;
        this.roomnumber = roomnumber;
        this.chkin = chkin;
        this.chkout = chkout;
        this.guests = guests;
    }

    public Reservation(String fullname, String username, String email, String roomtype, int roomnumber, String chkin, String chkout, int guests) {
        this.fullname = fullname;
        this.username = username;
        this.email = email;
        this.roomtype = roomtype;
        this.roomnumber = roomnumber;
        this.chkin = chkin;
        this.chkout = chkout;
        this.guests = guests;
    }

    public int getResID() {
        return resID;
    }

    public void setResID(int resID) {
        this.resID = resID;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getRoomtype() {
        return roomtype;
    }

    public void setRoomtype(String roomtype) {
        this.roomtype = roomtype;
    }

    public int getRoomnumber() {
        return roomnumber;
    }

    public void setRoomnumber(int roomnumber) {
        this.roomnumber = roomnumber;
    }

    public String getChkin() {
        return chkin;
    }

    public void setChkin(String chkin) {
        this.chkin = chkin;
    }

    public String getChkout() {
        return chkout;
    }

    public void setChkout(String chkout) {
        this.chkout = chkout;
    }

    public int getGuests() {
        return guests;
    }

    public void setGuests(int guests) {
        this.guests = guests;
    }

}
