/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package database;

import java.sql.*;


/**
 *
 * @author User
 */
public class DatabaseConnector {
    
    private static Connection con;
    
    public static Connection getConnection(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/el_paraiso_db?zeroDateTimeBehavior=convertToNull","root","");
            
        }catch(Exception e){
            e.printStackTrace();
        }
        return con;
    }



}
