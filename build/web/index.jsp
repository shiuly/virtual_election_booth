

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
            <div class="md-col-12" style="margin-bottom: 80px">
                <%@ include file="header.jsp"%>  
            </div>

        </div>
        <div class="alert alert " role="alert">
            <span class="text-danger">
                <h1> <c:out value="${msg}"></c:out></h1>
                </span> 
            </div>
            <!----------body--------------->
            <div class="row mt-5" >

                <div class="col-md-2"style="text-align: center">
                    <ul style="list-style-type:none;">
                        <li><a href="visitor.jsp" class="btn btn-info btn-lg">VISITOR</a></li><br><br>
                        <li> <a href="admin.jsp" class="btn btn-success btn-lg">ADMIN</a></li><br><br>
                        <li> <a href="VoterLogin.jsp" class="btn btn-primary btn-lg">VOTER</a></li>
                    </ul> 
                </div>
                <div class="col-md-10"> 
                    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                        <ol class="carousel-indicators">
                            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                        </ol>
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <img src="img/head1.jpg"  alt="" style="height: 420px; width: 850px;">

                            </div>
                            <div class="carousel-item">
                                <img src="img/head2.jpg"  alt="..." style="height: 420px; width: 850px;">
                            </div>
                            <div class="carousel-item">
                                <img src="img/head3.jpg"  alt="..." style="height: 420px; width: 850px;">
                            </div>
                        </div>
                        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
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
