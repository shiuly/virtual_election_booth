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

    </head>


    <body ng-app="simpleApp" ng-controller="simpleCtrl">

        <!---------------------Footer----------------------------->
        <div class="container" style="background-color: teal">


            <div class="jumbotron "style="background-color: teal">
                <div class="row">
                    <div class="col-md-2"></div>
                    <div class="col-md-4">
                        <p><b>Created by:<br>Shiuly parvin</b></p>
                        <p><i class="fa fa-copyright" >2019</i>
                        </p>
                    </div>
                    <div class="col-md-4">
                        <span class="fa-stack fa-lg">
                            <i class="fa fa-square-o fa-stack-2x"></i>
                            <i class="fa fa-twitter fa-stack-1x"></i>
                        </span>
                        Twitter<br>
                        <span class="fa-stack fa-lg">
                            <i class="fa fa-square-o  fa-stack-2x"></i>
                            <i class="fa fa-facebook-square  fa-stack-1x" ></i>

                        </span>
                        Facebook<br>
                        <span class="fa-stack fa-lg">
                            <i class="fa fa-circle-o fa-stack-2x"></i>
                            <i class="fa fa-whatsapp fa-stack-1x" ></i>

                        </span>
                        whatsapp<br>
                        <span class="fa-stack fa-lg">
                            <i class="fa fa-camera fa-stack-1x"></i>
                            <i class="fa fa-ban fa-stack-2x text-danger"></i>
                        </span>
                        Camera
                    </div>
                     <div class="col-md-2"></div>
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
