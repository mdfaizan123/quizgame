<%-- 
    Document   : result
    Created on : 12 Mar, 2021, 2:49:43 AM
    Author     : MD FAIZAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    
    int index=(int)session.getAttribute("index");
    String[] resultScore={"very Poor(0)","Poor (1)","Bad (2)","Good (3)","Strong (4)","Very Strong (5)"};
    
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
        <link rel="stylesheet" href="<%=request.getContextPath()%>/css/home.css" type="text/css">
        
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
                    <a class="navbar-brand " href="Home">Quiz Game</a>
                </div>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav">
                        <li class="nav-item active">
                            <a class="nav-link" href="Home">Home</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <!--display result-->
        <div class="start">
            <div class="text">
                <span>Your Score is <%=resultScore[index]%></span>
            </div>
            <a href="Home">
                <div class="start-button">
                <div class="start-text">
                    <span>Go To Home</span>
                </div>
            </div>
            </a>
        </div>
    </body>
</html>
