<%-- 
    Document   : SelectTotalQues
    Created on : Mar 22, 2023, 1:09:42 PM
    Author     : Admin MSI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.net.URLDecoder" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="totalques" method="post">
            <p>Enter number question you want to do </p>
            <input type="text" name="total">
            <textarea></textarea>
            <button type="submit">Submit Request</button>
        </form>
    </body>
</html>
