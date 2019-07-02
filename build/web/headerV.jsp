<%-- 
    Document   : insert
    Created on : May 7, 2019, 11:28:46 AM
    Author     : l2pc208m
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <title>VIRTUAL ELECTION BOOTH</title>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="css/style.css">
        <link href="css/all.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/fontawesome.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="css/bootstrap.css">

        <script src="js/jquery-3.3.1.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/1.0.2/Chart.js"></script>
        <script src="js/bootstrap.min.js"></script>



        <script src="resources/bootstrap.min.js" type="text/javascript"></script>
        <script src="resources/angular.min.js" type="text/javascript"></script>


        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="css/fontawesome.min.css">

        <script src="js/jquery-3.3.1.min.js"></script>

    </head>


    <body ng-app="simpleApp" ng-controller="simpleCtrl">

        <!--------------Navbar-------------------------->
        <div class="container" style="margin-bottom: 30px;overflow: hidden">
            <nav class="navbar  fixed-top navbar-expand-lg navbar-light" style="background-color: red   ">
                <i class="fa fa-spinner fa-pulse fa-3x fa-fw" style="color:white"></i>
                <span class="sr-only">Loading...</span>  
                <a class="fa-3x " href="#" style="color:white;">&nbsp;&nbsp;&nbsp;&nbsp;<b>WELCOME TO VIRTUAL ELECTION BOOTH</b></a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="true" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>  
            </nav>            
        </div>










        <script>
            var app = angular.module("simpleApp", []);
            app.controller("simpleCtrl", function ($scope, $http) {


            });
        </script>
    </body>
</html>
