    /*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package Controller;

import Model.ShowQuestions;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.ArrayList;

/**
 *
 * @author Admin MSI
 */
public class ResultingController extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Grading</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Grading at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
//        if(req==ma mon)
        ShowQuestions sq = new ShowQuestions();
        ArrayList<ShowQuestions> list = new ArrayList<>();
//        String ExamCode = request.getParameter("code");
        HttpSession session = request.getSession();
        String ExamCode = (String)session.getAttribute("examCode");
        int TotalQues = (int) session.getAttribute("totalQues");
        String[] code = ExamCode.split("(?<=\\D)(?=\\d)|(?<=\\d)(?=\\D)");
        list = sq.listAllQuestion(code[0]);
        int count=0;
        for (ShowQuestions s : list) {
            String x =s.getId();
            if(request.getParameter(x)!=null){
                String userAnswer = request.getParameter(x);
                if(userAnswer.equals(s.getAnswers())){
                    count++;
                }
            }
        }
        String time = request.getParameter("time");
        request.setAttribute("time", time);
        
//        request.setAttribute("cauDung", count);
//        request.getRequestDispatcher("ExamClient.jsp").forward(request, response);
        PrintWriter out = response.getWriter();
        float grade =((float)count/TotalQues)*10;
        request.setAttribute("sum", String.valueOf(count));
        request.setAttribute("Grade", String.valueOf(grade));
        
//        String selectedId = request.getParameter("idQuestion");
//        String selectedOption = request.getParameter("answer");
//        Cookie cookie = new Cookie(selectedId, URLEncoder.encode(selectedOption, "UTF-8"));
//        System.out.println(selectedOption + " selected");
//        //        Cookie cookie = new Cookie(selectedId, selectedOption);
//        cookie.setMaxAge(60*5); // Thời gian sống của cookie là 1 giờ
//        response.addCookie(cookie);

        Cookie[] cookies = request.getCookies();
        for (Cookie cooky : cookies) {
            System.out.println(cooky.getName());
            System.out.println(URLDecoder.decode(cooky.getValue(), "UTF-8"));
        }
        request.setAttribute("cook", cookies);
        
        
        
        
        
        request.getRequestDispatcher("ShowResult.jsp").forward(request, response);
//        out.print("So cau dung: "+count+" "+diem);
    }
}
