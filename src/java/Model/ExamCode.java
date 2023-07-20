/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author Admin MSI
 */
public class ExamCode {

    private String Code;

    public ExamCode() {
        connect();
    }

    public ExamCode(String Code) {
        this.Code = Code;
        connect();
    }

    public String getCode() {
        return Code;
    }

    public void setCode(String Code) {
        this.Code = Code;
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

    public boolean checkCode() {
//        if ("MAS".equals(Code)) {
//            return true;
//        }
//        return false;

        try {
            connect();
            String strSelect = "select * from ExamCode where ExamCode=?";
            pstm = cnn.prepareStatement(strSelect);
            pstm.setString(1, Code);
            rs = pstm.executeQuery();
            while (rs.next()) {
                return true;
            }
        } catch (Exception e) {
            System.out.println("checkCode:" + e.getMessage());
        }
        return false;
    }
}
