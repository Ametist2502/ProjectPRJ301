<%-- 
    Document   : ShowDetail
    Created on : Mar 22, 2023, 1:49:19 PM
    Author     : Admin MSI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.net.URLDecoder" %>
<%@page import="java.util.ArrayList" %>
<%@page import="Model.ShowQuestions" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Show detail</title>
    </head>
    <body>

        <c:forEach items="${sessionScope.listQuestion}" var="i">
            <form action="showquestion" method="post" id = "${i.getId()}">
                <div class="questions" id="questions">
                    <input type="hidden" name="idQuestion" value="${i.getId()}">
                    <!--Hiển thị các câu hỏi -->
                    <h5 style="color: black">Questions: ${i.getId()} ${i.getQuestion()}</h5>

                    <!--Display answer A-->
                    <div class="radio col-md-12">
                        <label><input onclick="chooseAns(${i.getId()})" 
                                      type="radio" name="answer" id="rdOptionsA" value="${i.getOptiona()}" <c:forEach var="c" items="${cook}">
                                          <c:if test="${c.getName()==i.getId()}">
                                              ${URLDecoder.decode(c.getValue(), "UTF-8")==i.getOptiona()?'checked=""':""}
                                          </c:if>
                                      </c:forEach>>A: ${i.getOptiona()}</label><br>
                    </div>

                    <!--Display answer B--> 
                    <div class="radio col-md-12">
                        <label><input onclick="chooseAns(${i.getId()})"  type="radio" name="answer" id="rdOptionsB" value="${i.getOptionb()}" <c:forEach var="c" items="${cook}">
                                          <c:if test="${c.getName()==i.getId()}">
                                              ${URLDecoder.decode(c.getValue(), "UTF-8")==i.getOptionb()?'checked=""':""}
                                          </c:if>
                                      </c:forEach>>B: ${i.getOptionb()}</label><br>
                    </div>
                    <!--Display answer C--> 
                    <div class="radio col-md-12">
                        <label><input onclick="chooseAns(${i.getId()})" type="radio" name="answer" id="rdOptionsC" value="${i.getOptionc()}" <c:forEach var="c" items="${cook}">
                                          <c:if test="${c.getName()==i.getId()}">
                                              ${URLDecoder.decode(c.getValue(), "UTF-8")==i.getOptionc()?'checked=""':""}
                                          </c:if>
                                      </c:forEach>>C: ${i.getOptionc()}</label><br>
                    </div>
                    <!--Display answer D--> 
                    <div class="radio col-md-12">
                        <label><input onclick="chooseAns(${i.getId()})" type="radio" name="answer" id="rdOptionsD" value="${i.getOptiond()}" <c:forEach var="c" items="${cook}">
                                          <c:if test="${c.getName()==i.getId()}">
                                              ${URLDecoder.decode(c.getValue(), "UTF-8")==i.getOptiond()?'checked=""':""}
                                          </c:if>
                                      </c:forEach>>D: ${i.getOptiond()}</label><br>
                    </div>
                    <br>
                </div>
            </form>
        </c:forEach>
    </body>
</html>
