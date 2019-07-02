

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
            <div class="md-col-12" style="margin-bottom: 150px">
                <%@ include file="headerA.jsp"%>  
            </div>

        </div>
        <!----------body--------------->
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                   
                    <p class="display-7" style="text-transform: uppercase; font-size: 20px;">
                        <i class="fa fa-shield fa-2x"></i>  <c:out value="${adminname}"></c:out>
                    </p>
                   
                    
                    <a href="backHome.htm" class="btn btn-danger btn-lg">LOG OUT</a>
                   
                </div>
      

            <div class="col-md-4"style="text-align: center">
                <ul style="list-style-type:none;">
                    <li><a href="candidateAdd.jsp" class="btn btn-info btn-lg">CANDIDATE</a></li><br><br>
                    <li> <a href="showR.htm" class="btn btn-danger btn-lg px-4">RESULT</a></li><br><br>
                </ul> 
            </div>
            <div class="col-md-4"style="text-align: center">
                <ul style="list-style-type:none;">
                    <li><a href="showV.htm" class="btn btn-success btn-lg">TOTAL VOTER</a></li><br><br>
                    <li> <a href="img/result.pdf" class="btn btn-info btn-lg">REPORT </a></li><br><br>
                    
                </ul> 
            </div>

        </div>
        </div>

        <!--------------footer-------------->
        <div class="container">
            <div class="md-col-12" style="margin-top: 200px">
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
