/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package view;

import java.sql.*;
import com.sun.jdi.connect.spi.Connection;
import javax.swing.JOptionPane;
import java.sql.Statement;
/**
 *
 * @author april
 */
public class Connectorr {
    static final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
    static final String DB_URL = "jdbc:mysql://localhost/todaytickets";
    static final String USER = "root";
    static final String PASS = ""; 
    public java.sql.Connection koneksi;
    public Statement statement;
    
    public Connectorr(){
        try{
            Class.forName(JDBC_DRIVER);
            koneksi = (java.sql.Connection) DriverManager.getConnection(DB_URL, USER, PASS);
            statement = koneksi.createStatement();
        }catch(Exception ex){
            JOptionPane.showMessageDialog(null, ex.getMessage());
            System.out.println("Koneksi Gagal");
        }
    }
    
    public java.sql.Connection getConnection(){
        return koneksi;
    }
 
}
