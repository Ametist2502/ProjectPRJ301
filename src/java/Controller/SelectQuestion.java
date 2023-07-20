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
public class SelectQuestion extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int totalQues = Integer.parseInt(req.getParameter("total"));
        if (totalQues < 5 || totalQues > 20) {
            req.setAttribute("totalQues", "Number select must greater than 5 and less than 20");
        } else {
            HttpSession session = req.getSession();
            session.setAttribute("totalQues", totalQues);
//             HttpSession session = request.getSession();
            String ExamCode = (String) session.getAttribute("examCode");
            String[] code = ExamCode.split("(?<=\\D)(?=\\d)|(?<=\\d)(?=\\D)");

            ShowQuestions show = new ShowQuestions();
            ArrayList<ShowQuestions> data = show.getRandQuestions(code[0], String.valueOf(totalQues));
            session.setAttribute("listQuiz", data);
            req.setAttribute("data", data);

            req.setAttribute("examCode", ExamCode);
            

            
            req.getRequestDispatcher("ExamClient.jsp").forward(req, resp);
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

}
