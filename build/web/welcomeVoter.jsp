

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <title>INDEX</title>
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
        <!--------------hearder-------------->
        <div class="container">
            <div class="md-col-12" style="margin-bottom: 100px">
                <%@ include file="headerV.jsp"%>  
            </div>

        </div>
        <!----------body--------------->

                    
                    <div class="container">
                        <div class="row">
                            <div class="col-md-3">
                                <i class="fa fa-user fa-3x"></i>
                                 &nbsp;<c:out  value="${userName}"></c:out>
                            </div>
                            <div class="col-md-3">
                                <i class="fa fa-hand-point-up fa-3x"></i>
                                &nbsp;<c:out value="${userNid}"></c:out>
                            </div>
                            <div class="col-md-3">
                                <i class="fa fa-street-view fa-3x"></i>
                               &nbsp;<c:out value="${userLocation}"></c:out>
                            </div>
                            <div class="col-md-3">
                                <a href="giveVote.htm?location=${userLocation}" class="btn btn-danger">START VOTE</a>
                                 <a href="logOut.htm" class="btn btn-danger">LOG OUT </a>
                            </div>
                        </div>
                    </div>
        
  

        <!--------------footer-------------->
        <div class="container">
            <div class="md-col-12" style="margin-top: 300px">
                <%@ include file="footer.jsp"%>  
            </div>

        </div>






        <!------------------------------------------------------------------------>

        <script>
                    var app = angular.module("simpleApp", []);
                    app.controller("simpleCtrl", function ($scope, $http) {


                    });

        </script>
    </body>
</html>
