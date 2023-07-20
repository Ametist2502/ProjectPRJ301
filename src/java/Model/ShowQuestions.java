/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author Admin MSI
 */
public class ShowQuestions {

    private String id, question, answers, optiona, optionb, optionc, optiond;

    public ShowQuestions() {
        connect();
    }

    public ShowQuestions(String id, String question, String optiona, String optionb, String optionc, String optiond) {
        this.id = id;
        this.question = question;
        this.optiona = optiona;
        this.optionb = optionb;
        this.optionc = optionc;
        this.optiond = optiond;
        connect();
    }
    
    

    public ShowQuestions(String question, String optiona, String optionb, String optionc, String optiond) {
        this.question = question;
        this.optiona = optiona;
        this.optionb = optionb;
        this.optionc = optionc;
        this.optiond = optiond;
        connect();
    }

    public ShowQuestions(String id, String question, String answers, String optiona, String optionb, String optionc, String optiond) {
        this.id = id;
        this.question = question;
        this.answers = answers;
        this.optiona = optiona;
        this.optionb = optionb;
        this.optionc = optionc;
        this.optiond = optiond;
        connect();
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getQuestion() {
        return question;
    }

    public void setQuestion(String question) {
        this.question = question;
    }

    public String getAnswers() {
        return answers;
    }

    public void setAnswers(String answers) {
        this.answers = answers;
    }

    public String getOptiona() {
        return optiona;
    }

    public void setOptiona(String optiona) {
        this.optiona = optiona;
    }

    public String getOptionb() {
        return optionb;
    }

    public void setOptionb(String optionb) {
        this.optionb = optionb;
    }

    public String getOptionc() {
        return optionc;
    }

    public void setOptionc(String optionc) {
        this.optionc = optionc;
    }

    public String getOptiond() {
        return optiond;
    }

    public void setOptiond(String optiond) {
        this.optiond = optiond;
    }

    Connection cnn;
    Statement stm;
    ResultSet rs;
    PreparedStatement pstm;

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
    
    // This code will get random questions in  DB 
    public ArrayList<ShowQuestions> getRandQuestions(String examCode, String TotalQues) {
        try {
            String selectRandom = "SELECT top "+TotalQues+ " * FROM "
                    +examCode
                    + " ORDER BY CHECKSUM(NEWID())";
            cnn = new DBContext().connection;
            pstm = cnn.prepareStatement(selectRandom);
//            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
//            rs = stm.executeQuery(selectRandom);
//            pstm.setString(1, TotalQues);
            rs = pstm.executeQuery();
            ArrayList<ShowQuestions> ls = new ArrayList<>();
            while (rs.next()){
                ShowQuestions show = new ShowQuestions(rs.getString(1), rs.getString(2), 
                        rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7));
                ls.add(show);
            }
            return ls;
//            list.add(new ShowQuestions(question, optiona, optionb, optionc, optiond));  

        } catch (Exception e) {
            System.out.println("getRandQuestions " + e.getMessage());
        }
        return null;
    }
    
    // Test get question
    public ArrayList<ShowQuestions> listAllQuestion(String examCode) {
        try {
            String selectSelect = "select * from "+examCode;
            cnn = new DBContext().connection;
            pstm = cnn.prepareStatement(selectSelect);
//            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
//            rs = stm.executeQuery(selectRandom);
            rs = pstm.executeQuery();
            ArrayList<ShowQuestions> ls = new ArrayList<>();
            while (rs.next()){
                ShowQuestions show = new ShowQuestions(rs.getString(1), rs.getString(2), 
                        rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6),rs.getString(7));
                ls.add(show);
            }
            return ls;
//            list.add(new ShowQuestions(question, optiona, optionb, optionc, optiond));           
        } catch (Exception e) {
            System.out.println("listAllQuestion " + e.getMessage());
        }
        return null;
    }
        
    //Test get questions from IOT table in DB
        public ArrayList<ShowQuestions> getListQuiz() {
        ArrayList<ShowQuestions> list = new ArrayList<ShowQuestions>();

        try {
            String strSelect = "SELECT ID, Question, OptionA, OptionB, OptionC, OptionD FROM IOT ";
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            rs = stm.executeQuery(strSelect);
            while (rs.next()) {
                String id = rs.getString(1);
                String question = rs.getString(2);
                String optiona = rs.getString(3);
                String optionb = rs.getString(4);
                String optionc = rs.getString(5);
                String optiond = rs.getString(6);
                list.add(new ShowQuestions(id,question, optiona, optionb, optionc, optiond));
            }
        } catch (Exception e) {
            System.out.println("getListQuiz: " + e.getMessage());
        }
        return list;
    }
}
