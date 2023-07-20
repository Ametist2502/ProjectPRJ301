/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controller;

import Model.ShowQuestions;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.ArrayList;

/**
 *
 * @author Admin MSI
 */
public class ExamClientController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        String ExamCode = req.getParameter("code");
//        String[] code = ExamCode.split("(?<=\\D)(?=\\d)|(?<=\\d)(?=\\D)");
//        if (code[0].equals("DE")) {
//            ShowQuestions s = new ShowQuestions();
//            ArrayList<ShowQuestions> data = s.getRandQuestions();
//            req.setAttribute("data", data);
//        }

        String selectedId = req.getParameter("idQuestion");
        String selectedOption = req.getParameter("answer");
        Cookie cookie = new Cookie(selectedId, URLEncoder.encode(selectedOption, "UTF-8"));
        System.out.println(selectedOption + " selected");

//        Cookie cookie = new Cookie(selectedId, selectedOption);
        cookie.setMaxAge(60 * 10); // Thời gian sống của cookie là 1 giờ
        resp.addCookie(cookie);

        Cookie[] cookies = req.getCookies();
        for (Cookie cooky : cookies) {
            System.out.println(cooky.getName());
            System.out.println(URLDecoder.decode(cooky.getValue(), "UTF-8"));
        }
        req.setAttribute("cook", cookies);
        req.getRequestDispatcher("ExamClient.jsp").forward(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("ExamClient.jsp").forward(req, resp);
    }
}
