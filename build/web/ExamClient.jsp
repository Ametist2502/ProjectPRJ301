<%-- 
    Document   : ExamClient
    Created on : Mar 4, 2023, 9:14:06 PM
    Author     : Admin MSI
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.net.URLDecoder" %>
<%@ page import="java.net.URLEncoder" %>
<%@page import="java.util.ArrayList" %>
<%@page import="Model.ShowQuestions" %>

<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="main/main.css">
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <title>Client EOS</title>

    <body>
        <%
                int count=0;
        %>
        
        <%

        %>

        <form id="examClient" action="result" method="post">
            <!-- Phần này để hiện thị thông tin cần thiết trên EOS -->
            <div class="header row">
                <div class="info col-lg-3" style="font-size: 14px"></div>
                <div class="info col-lg-3" style="font-size: 14px">
                    <table>
                        <tr></tr>
                        <tr></tr>
                        <tr>
                            <td>Machine Name: Ametist</td>
                        </tr>
                        <tr>
                            <td>Time remaining <span style="color: red" id="time"></span> minutes!</td>
                            <td><input style="display: none;" id="inputTime" type="text" name="time"></td>
                        </tr>
                    </table>
                </div>

                <div class="info col-lg-3" name="code" style="font-size: 14px">
                    <table>
                        <tr>
                            <td>User Name: ${username}</td>
                        </tr>
                        <tr>
                            <td name="code" style="font-size: 14px">Exam Code: ${examCode}</td>
                        </tr>
                        <tr>
                            <td>Total question: 15</td>
                        </tr>
                        <tr>
                            <td>Duration 15 minutes</td>
                        </tr>
                    </table>
                </div>
                <div class="info col-lg-3" style="font-size: 14px">
                    <img src="https://cdn.pixabay.com/photo/2012/04/10/23/04/vietnam-26834_960_720.png" alt="Vn" style="width:150px;height:100px;">
                </div>
            </div>
            <!-- Phần này để hiển thị câu hỏi và câu trả lời -->
            <div class="container questions">
                <div class="panel-group">
                    <div class="panel panel-primary">
                        <div class="panel-heading"></div>
                        <c:forEach  items="${requestScope.data}" var="i" >
                            <div class="panel-body row" style="margin-left:10px">
                                <input type="hidden" name="idQuestion" value="${i.getId()}">
                                <!-- Hiển thị các câu hỏi -->
                                <h5 style="color: black">Questions: <%=++count%> ${i.getQuestion()}</h5>
                                <!-- Display answer A -->
                                <div class="radio col-md-12">
                                    <label><input type="radio" name="${i.getId()}" id="rdOptionsA" value="${i.getOptiona()}">A: ${i.getOptiona()}</label><br>
                                </div>
                                <!-- Display answer B -->
                                <div class="radio col-md-12">
                                    <label><input type="radio" name="${i.getId()}" id="rdOptionsB" value="${i.getOptionb()}">B: ${i.getOptionb()}</label><br>
                                </div>
                                <!-- Display answer C -->
                                <div class="radio col-md-12">
                                    <label><input type="radio" name="${i.getId()}" id="rdOptionsC" value="${i.getOptionc()}">C: ${i.getOptionc()}</label><br>
                                </div>
                                <!-- Display answer D -->
                                <div class="radio col-md-12">
                                    <label><input type="radio" name="${i.getId()}" id="rdOptionsD" value="${i.getOptiond()}">D: ${i.getOptiond()}</label><br>
                                </div>
                                <br>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>

            <!-- Phần này là để code nút submit và những phần còn lại ở chân trang -->
            <div class="footer">
                <!--                <input type="checkbox" class="checkbox_bt" value="1" name="checkbox"<p class="text_finish">I want to finish the exam</p>
                                <input type="submit" value="FINISH" style="margin-left: 50%">-->
                <!--<button onclick="goToJSP()">Exit</button>-->
                <input style="margin-left: 20%" type="checkbox" id="myCheckbox" class="checkbox_bt" value=""><label style="color: blue;"> I want to finish the exam</label>
                <input type="submit" id="submitBtn" class="button_Submit" value="FINISH">
            </div>
        </form>

        <script>

            var countDownTime = new Date().getTime() + (1000 * 60 * 30);
            var x = setInterval(function () {
                var now = new Date().getTime();
                var distance = countDownTime - now;

                var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
                var seconds = Math.floor((distance % (1000 * 60)) / 1000);
                document.getElementById("time").innerHTML = minutes + ":" + seconds;
                document.getElementById("inputTime").value = minutes + ":" + seconds;
                if (distance <= 0) {
                    document.getElementById("inputTime").value = "0" + ":" + "0";
                    //                    document.getElementById("time").innerHTML = "nghia";
                    document.getElementById("form").submit();
                }
            }, 1000);


            // Lấy checkbox và button submit
            var checkbox = document.getElementById('myCheckbox');
            var submitBtn = document.getElementById('submitBtn');

            // Thêm sự kiện click cho button
            submitBtn.addEventListener('click', function (event) {
                // Kiểm tra checkbox đã được tích chưa
                if (checkbox.checked) {
                    // Nếu đã tích, thực hiện hành động của button
                    event.target.submit();
                }else{
//                    event.preventDefault();
                }
            });
        </script>

        <script>
            function goToJSP() {
                window.location.href = "index.jsp";
            }
        </script>
    </body>
</html>
