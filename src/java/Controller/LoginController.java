/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controller;

import Model.ExamCode;
import Model.Students;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;

/**
 *
 * @author Admin MSI
 */
public class LoginController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=UTF-8");
//        try {
//            String examCode = req.getParameter("code");
//            String username = req.getParameter("username");
//            String password = req.getParameter("password");
//
//            Students s = new Students(username, password);
//            ExamCode e = new ExamCode(examCode);
//            boolean checkU = s.checkUser();
//            boolean checkC = e.checkCode();
//            if (checkU) {
//                if (checkC) {
//                    req.getRequestDispatcher("ExamClient.jsp").forward(req, resp);
//                }
////                    resp.sendRedirect("ExamClient.jsp");
//            } else {
//                resp.sendRedirect("login.jsp");
//            }
//        } catch (Exception e) {
//            String error = "Wrong user name or password";
//            req.setAttribute("error", error);
//        }
        try {
            // lấy dư liệu từ trang JSP
            String examCode = req.getParameter("code");
            String username = req.getParameter("username");
            String password = req.getParameter("password");

            // Check dữ liệu nhận được từ trang login.jsp
            Students s = new Students(username, password);
            ExamCode e = new ExamCode(examCode);
            boolean checkU = s.checkUser();
            boolean checkC = e.checkCode();
            if (checkU) {
                if (checkC) {
                    // tách lấy mã môn học để lấy query trong DB
                    HttpSession session = req.getSession();
                    String ExamCode = req.getParameter("code");
                    session.setAttribute("examCode", ExamCode);
                    session.setAttribute("username", username);
                    String[] code = ExamCode.split("(?<=\\D)(?=\\d)|(?<=\\d)(?=\\D)");

//                    ShowQuestions show = new ShowQuestions();
//                    ArrayList<ShowQuestions> data = show.getRandQuestions(code[0]);
//                    session.setAttribute("listQuiz", data);
//
//                    req.setAttribute("data", data);
//                    
//                    req.setAttribute("examCode", examCode);
                    req.getRequestDispatcher("SelectTotalQues.jsp").forward(req, resp);
                } else {
                    req.setAttribute("errorMessageCode", "Exam code is not exsited");
                    req.getRequestDispatcher("login.jsp").forward(req, resp);
                }

            } else {
                req.setAttribute("errorMessage", "Invalid username or password");
                req.getRequestDispatcher("login.jsp").forward(req, resp);
            }
        }catch(Exception e){
            req.setAttribute("errorMessage", "Invalid username or password");
            req.getRequestDispatcher("login.jsp").forward(req, resp);
        }
     
//                if (code[0].equals("DE")) {
//                    ShowQuestions show = new ShowQuestions();
//                    ArrayList<ShowQuestions> data = show.getRandQuestions();
//                    req.setAttribute("data", data);
//                }else if(code[0].equals("IOT")){
//                    ShowQuestions show = new ShowQuestions();
//                    ArrayList<ShowQuestions> data = show.getListQuiz();
//                    req.setAttribute("data", data);
//                }

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("login.jsp").forward(req, resp);
    }
}
