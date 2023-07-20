/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Admin MSI
 */
public class Students {

    private String rollNumber, userName, password, name;
    private String Result;
    
    public Students() {
        connect();
    }

    public Students(String userName, String password) {
        this.userName = userName;
        this.password = password;
        connect();
    }

    public Students(String rollNumber, String userName, String password, String name) {
        this.rollNumber = rollNumber;
        this.userName = userName;
        this.password = password;
        this.name = name;
        connect();
    }

    public String getRollNumber() {
        return rollNumber;
    }

    public void setRollNumber(String rollNumber) {
        this.rollNumber = rollNumber;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    Connection cnn; // Connect database
    Statement stm;
    ResultSet rs;
    PreparedStatement pstm; // Thực thi câu lệnh SQL

    private void connect() {
        try {
            cnn = (new DBContext()).connection;
            if (cnn != null) {
                System.out.println("Connect success");
            }
        } catch (Exception e) {
            System.out.println("Fail: " + e.getMessage());
        }
    }

    public boolean checkUser(){
        // Test Login
//        if ("anhtthe161427".equals(userName) && "123".equals(password)) {
//            return true;
//        }
//        return false;
        try {
            connect();
            String strSelect = "select * from Students "
                    + "where Username=? "
                    + "and password=?";
            pstm = cnn.prepareStatement(strSelect);
            pstm.setString(1, userName);
            pstm.setString(2, password);
            rs=pstm.executeQuery();
            while (rs.next()) {
                return true;
            }
        } catch (Exception e) {
            System.out.println("checkUser:" + e.getMessage());
        }
        return false;
    }
}
