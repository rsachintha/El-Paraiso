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
public class Rooms {
    int roomID;
    String roomType;
    String booked;
    double price;
    

    public Rooms() {
    }

    public Rooms(int roomID, String roomType, String booked, double price) {
        this.roomID = roomID;
        this.roomType = roomType;
        this.booked = booked;
        this.price = price;
       
    }

    public Rooms(String roomType, String booked, double price) {
        this.roomType = roomType;
        this.booked = booked;
        this.price = price;
        
    }

    public int getRoomID() {
        return roomID;
    }

    public void setRoomID(int roomID) {
        this.roomID = roomID;
    }

    public String getRoomType() {
        return roomType;
    }

    public void setRoomType(String roomType) {
        this.roomType = roomType;
    }

    public String getBooked() {
        return booked;
    }

    public void setBooked(String booked) {
        this.booked = booked;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    

   
    
}
