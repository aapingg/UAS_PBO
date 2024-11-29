/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package cofig;

/**
 *
 * @author tigfi
 */

import java.sql.Connection;
import java.sql.DriverManager;
import javax.swing.JOptionPane;

public class db {
    private String Url = "jdbc:mysql://localhost:3306/dataapotik";
    private Connection con;

    public void connect() {
        try {

            con = DriverManager.getConnection(Url, "root", "");
            System.out.println("koneksi berhasil");
        }catch (Exception e) {
            JOptionPane.showMessageDialog(null, e.getMessage());
        }
    }

    public Connection getCon() {
        return con;
    }
}
