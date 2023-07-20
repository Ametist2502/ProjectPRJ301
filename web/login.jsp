<%-- 
    Document   : login
    Created on : Feb 18, 2023, 4:02:10 PM
    Author     : Admin MSI
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="./CSS/login.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <title>EOS Login Form</title>
    </head>
    <body>
        <form action="login" method="post">
            <div class="login">
                <p class="warning">You cannot take the exam if EOS runs under a virtual machine.</p>
                <p class="examCode">Exam Code: <input type="text" name="code" id="1" size="32" required=""></p>
                <p class="userName">User Name: <input type="text" name="username" id="2" size="32" required=""></p>
                <p class="password">Password: <input type="password" name="password" id="3" size="32" required=""></p>
                <p class="domain">Domain: <input type="text" name="" id="" value="FU.EDU.VN" size="32" disabled></p>
                <p class="button">
                    <input type="submit" class="login-bt" name="submit" value="Login"></input>
                    <input type="reset" class="reset-bts" value="Exit"></input>
                </p>
                <div class="check">
                    <p class="sound" id="status">Check sound (7 secs)</p>
                    <p class="font">Check font</p>           
                </div>

                <p class="notice">Register the exam may take time, please wait!</p>
            </div>  
            
            <% if (request.getAttribute("errorMessageCode") != null) { %>
            <script>
                alert("<%= request.getAttribute("errorMessageCode") %>");
            </script>
            <% } %>
            
            <% if (request.getAttribute("errorMessage") != null) { %>
            <script>
                alert("<%= request.getAttribute("errorMessage") %>");
            </script>
            <% } %>
        </form>
    </body>
</html>
