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
        <title>AOnlineVoting</title>
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
        <style>


            body {
                font-family: Arial, Helvetica, sans-serif;
            }

        </style>
    </head>


    <body ng-app="simpleApp" ng-controller="simpleCtrl" style="background-color: teal">

        <!--Navbar------------------------------------------------>
        <div class="container">
            <div class="md-col-12" style="margin-bottom: 150px">
                <%@ include file="header.jsp"%>  
            </div>

        </div>
        <div class="container">
            <b> <h3 style="color:white"><center>ADMIN LOGIN</center></h3></b>
            <div class="row">

                <div class="col-md-4"></div>
                <div class="col-md-4">
                    <div class="card" style="width: 18rem;">
                        <img src="img/login.png" class="card-img-top" alt="" style="margin-top: 10px">
                        <div class="card-body">
                            <a href="adminlogin.jsp" class="btn btn-warning btn-block" >Log In</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4"></div>
            </div>
        </div>      














        <script>
                    var app = angular.module("simpleApp", []);
                    app.controller("simpleCtrl", function ($scope, $http) {


                    });
        </script>
    </body>
</html>
