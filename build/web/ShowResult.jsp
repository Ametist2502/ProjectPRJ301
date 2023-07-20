<%-- 
    Document   : ShowGrade
    Created on : Mar 8, 2023, 8:58:17 PM
    Author     : Admin MSI
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.net.URLDecoder" %>
<%@page import="java.util.ArrayList" %>
<%@page import="Model.ShowQuestions" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.3/dist/jquery.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
        <title>Show Grade</title>
    </head>
    <body>
        <%
            String sum="";
            if(request.getAttribute("sum")!=null){
                sum=(String)request.getAttribute("sum");
            }
            
            String Grade="";
            if(request.getAttribute("Grade")!=null){
                Grade=(String)request.getAttribute("Grade");
            }
        %>
        <div class="container my-3 bg-light">
            <div class="col-md-12 text-center">
                <form action="" method="post" class="row container">
                    <p class="col-md-12">Total Correct Questions: <%=sum%></p>
                    <br>
                    <p class="col-md-12">Your grade you gain is: <%=Grade%></p>
                    <br><!--
                    <button class="col-md-12 btn btn-link" type="button"><a href="login.jsp">Return Login</a></button>-->
                    <h2 class="col-md-12" style="text-align: center; color: red">Submit successfully</h2>
                    <!--<p>Time submitted: ${cookie.submit_time.value}</p>-->
                    <p class="col-md-12">Time submitted: ${time}</p>
                    <button class="col-md-12 btn btn-link" type="button"><a href="login.jsp">Return Login</a></button>
                    <button class="col-md-12 btn btn-link" type="button"><a href="ShowDetail.jsp">Show detail</button>
                </form>
            </div>
        </div>

    </body>
</html>
