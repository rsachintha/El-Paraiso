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
public class OrderDetail {

    private String RoomName;
    private double total;

    public OrderDetail(String RoomName, String total) {

        this.RoomName = RoomName;
        this.total = Double.parseDouble(total);

    }

    public String getRoomName() {
        return RoomName;
    }

    public String getTotal() {
        return String.format("%.2f", total);
    }
}
