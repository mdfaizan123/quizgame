<%-- 
    Document   : HOME
    Created on : 11 Mar, 2021, 2:22:21 PM
    Author     : MD FAIZAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <!--disciption-->
        <div class="start">
            <div class="text">
                <span>Welcome to Quiz Game</span>
            </div>
            <div class="discription">
                <span>First choose your level <br> each level have 5 question <br> each question have 30 sec</span>
            </div>
            <div class="choose-level">
                <input type="radio" id="easy-level" name="level" value="easy">
                <label for="easy-level">Easy</label>
                <input type="radio" id="medium-level" name="level" value="medium" checked="true">
                <label for="medium-level">Medium</label>
                <input type="radio" id="hard-level" name="level" value="hard">
                <label for="hard-level">Hard</label>
            </div>
            <div class="name">
                <input type="name" id="name" name="name" placeholder="Enter your name">
            </div>
            <!--start button-->
            <div class="start-button">
                <div class="start-text">
                    <span>Continue</span>
                </div>
            </div>
        </div>
        
        
        
        
    <!--javascript file-->
    <script src="<%=request.getContextPath()%>/js/home.js"></script>
    
    </body>
</html>
