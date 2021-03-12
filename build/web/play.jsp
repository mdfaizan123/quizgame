<%-- 
    Document   : play
    Created on : 11 Mar, 2021, 6:41:48 PM
    Author     : MD FAIZAN
--%>

<%@page import="java.util.HashMap"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    
    String name=(String)session.getAttribute("name"); //get user name
    if(name!=null){
        HashMap question=(HashMap)request.getAttribute("question"); //get all question
        String option;
        String optionArray[];
%>
<!DOCTYPE html>
<html>
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- Chrome, Firefox OS and Opera -->
        <meta name="theme-color" content="#46ffe5">
        <!-- Windows Phone -->
        <meta name="msapplication-navbutton-color" content="#46ffe5">
        <!-- iOS Safari -->
        <meta name="apple-mobile-web-app-status-bar-style" content="#46ffe5">
        
        
        <!--css file-->
        <link rel="stylesheet" href="<%=request.getContextPath()%>/css/navbar.css" type="text/css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/css/play.css" type="text/css">
        
        <title></title>
        <style>
            body {
                background-image: url('<%=request.getContextPath()%>/image/game.jpeg');
                background-repeat: no-repeat;
                background-attachment: fixed;
                background-size: cover;
              }
              html, body {
                height: 100%;
            }
        </style>
    </head>
    <body>
        <!--navbar--> 
        <nav id="mainNavbar" class="navbar fixed-top">
            <div class="container">
                <div>
                    <a class="navbar-brand">Quiz Game</a>
                </div>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <span class="nav-link" href="Login"><%=name%></span>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <!--question and answer box-->               
        <div class="question">
            <div class="question-container">
                <div id="timer">
                    &#128337; <span id="time-run">30</span>
                </div>
                <div class="question-heading">
                    <span id="question-option">Q1) <%=question.get("question1")%></span>
                </div>
                <%option=(String)question.get("option1");
                                optionArray=option.split(",");%>
                <div class="question-option">
                    <div class="option">
                        <input type="radio" id="option-1" class="option-checked" name="answer" value="0">
                        <label for="option-1">1) <span class="option-value"><%=optionArray[0]%></span></label>
                    </div>
                    <div class="option">
                        <input type="radio" id="option-2" class="option-checked" name="answer" value="1">
                        <label for="option-2">2) <span class="option-value"><%=optionArray[1]%></span></label>
                    </div>
                    <div class="option">
                        <input type="radio" id="option-3" class="option-checked" name="answer" value="2">
                        <label for="option-3">3) <span class="option-value"><%=optionArray[2]%></span></label>
                    </div>
                    <div class="option">
                        <input type="radio" id="option-4" class="option-checked" name="answer" value="3">
                        <label for="option-4">4) <span class="option-value"><%=optionArray[3]%></span></label>
                    </div>
                </div>
                <div class="next-button">
                    <div class="next-text">
                        <span>Next</span>
                    </div>
                </div>
            </div>
        </div>
        
        <!--javascript file-->
        <script>
//            set all question in JSON formate in JavaScript
            var allQuestion=[
                {
                    "question" : "<%=question.get("question1")%>",
                            <%option=(String)question.get("option1");
                                optionArray=option.split(",");%>
                    "option" : [
                        "<%=optionArray[0]%>",
                        "<%=optionArray[1]%>",
                        "<%=optionArray[2]%>",
                        "<%=optionArray[3]%>"
                    ]
                },
                {
                    "question" : "<%=question.get("question2")%>",
                    <% option=(String)question.get("option2");
                                optionArray=option.split(",");%>
                    "option" : [
                        "<%=optionArray[0]%>",
                        "<%=optionArray[1]%>",
                        "<%=optionArray[2]%>",
                        "<%=optionArray[3]%>"
                    ]
                },
                {
                    "question" : "<%=question.get("question3")%>",
                    <% option=(String)question.get("option3");
                                optionArray=option.split(",");%>
                    "option" : [
                        "<%=optionArray[0]%>",
                        "<%=optionArray[1]%>",
                        "<%=optionArray[2]%>",
                        "<%=optionArray[3]%>"
                    ]
                },
                {
                    "question" : "<%=question.get("question4")%>",
                    <% option=(String)question.get("option4");
                                optionArray=option.split(",");%>
                    "option" : [
                        "<%=optionArray[0]%>",
                        "<%=optionArray[1]%>",
                        "<%=optionArray[2]%>",
                        "<%=optionArray[3]%>"
                    ]
                },
                {
                    "question" : "<%=question.get("question5")%>",
                    <% option=(String)question.get("option5");
                                optionArray=option.split(",");%>
                    "option" : [
                        "<%=optionArray[0]%>",
                        "<%=optionArray[1]%>",
                        "<%=optionArray[2]%>",
                        "<%=optionArray[3]%>"
                    ]
                }
            ];
        </script>
        <script src="<%=request.getContextPath()%>/js/play.js"></script>
        
    </body>
</html>
<%}%>
