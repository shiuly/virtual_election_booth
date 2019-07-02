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
        <header>
            <h2>Online Voting System</h2>
        </header>
        <div class="container">
            <h3><center>Admin login</center></h3>
           <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-4">
                  
                        <h3 class="text-white text-center">ADD NEW ADMIN</h3>
                        <form action="insertAdmin.htm">
                             <input type="text" name="id" class="form-control" placeholder="Id"><br>
                            <input type="text" name="adminname" class="form-control" placeholder="User Name"><br>
                            <input type="password" name="password" class="form-control" placeholder="User Password"><br>
                            <input type="submit" value="New Admin" class="form-control btn btn-info"><br>
                            
                            <br/>

                        </form>
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
