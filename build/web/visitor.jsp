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

            /* Style the header */
            header {
                background-color: #666;
                padding: 30px;
                text-align: center;
                font-size: 35px;
                color: white;
            }

            /* Create two columns/boxes that floats next to each other */



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

            <div class="row">
                <div class="col-md-4">       
                <a href="backHome.htm" class="btn btn-danger btn-lg">LOG OUT</a>
                </div>
                <div class="col-md-4">
                <a href="img/candidate2.pdf"class="btn btn-success btn-lg">DOWNLOAD CANDIDATE LIST</a>
                

                </div>
                <div class="col-md-4">
                    <a href="#"class="btn btn-success btn-lg">DOWNLOAD RESULT</a> 
                </div>

            </div>
        </div>















        <script>
                    var app = angular.module("simpleApp", []);
                    app.controller("simpleCtrl", function ($scope, $http) {


                    });
        </script>
    </body>
</html>
