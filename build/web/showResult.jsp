

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
            <div class="row">
                <div class="md-col-8" style="margin-bottom: 50px">
                    <%@ include file="headerA.jsp"%>  
                </div>
                <div class="col-md-4">
                </div>
            </div>
        </div>
        <div class="row mt-5">
            <div class="col-md-8"></div>
            <div class="col-md-4">
                <a href="ResultOut.htm" class="btn btn-danger btn-lg">LOG OUT</a>   
            </div>
        </div>
                

        <div class="container mt-5">
            <div class="row">
                <div class="col-md-4">
                    <a href="" class="btn btn-danger">BNP  <c:out value="${bnpGot}"></c:out></a>
                    <a href="" class="btn btn-success">BNP PERCENT  <c:out value="${bndPercent}"></c:out>%</a>
                    </div>
                    <div class="col-md-4">
                        <a href="" class="btn btn-danger">AWAMI <c:out value="${awamiGot}"></c:out></a>
                        <a href="" class="btn btn-success">AWAMI PERCENT <c:out value="${awamiPercent}"></c:out>%</a>
                    </div>
                    <div class="col-md-4">
                        <a href="" class="btn btn-danger">JP <c:out value="${jpGot}"></c:out></a>
                        <a href="" class="btn btn-success">JP PERCENT <c:out value="${jpPercent}"></c:out>%</a>
                    </div>
                </div>
            </div>
            <!----------BNP-------------->
            <div class="container mt-5">
                <center> <h3 class="text-success display-7">BNP GOT VOTE</h3></center>
                <div class="row">
                    <div class="col-md-2">

                        
                    </div>
                    <div class="col-md-8">
                        <table class="table">
                            <thead class="thead-light">
                                <tr>
                                    <th scope="col">Id</th>
                                    <th scope="col">NID</th>
                                    <th scope="col">Location</th>
                                    <th scope="col">Party</th>
                                </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${listAllBnp}" var="r">
                                <tr>
                                    <td>${r.id}</td>
                                    <td>${r.nid}</td>
                                    <td>${r.location}</td>
                                    <td>${r.party}</td>                      
                                </tr>
                            </c:forEach>



                        </tbody>
                    </table>
                </div>
                <div class="col-md-2">

                </div>

            </div>

        </div>
        <!-------------AWAMI-------------->
        <div class="container">
            <center><h3 class="text-success display-7">AWAMI GOT VOTE</h3></center>
            <div class="row">
                <div class="col-md-2">

                    
                </div>
                <div class="col-md-8">
                    <table class="table">
                        <thead class="thead-light">
                            <tr>
                                <th scope="col">Id</th>
                                <th scope="col">NID</th>
                                <th scope="col">Location</th>
                                <th scope="col">Party</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${listAllAwami}" var="r">
                                <tr>
                                    <td>${r.id}</td>
                                    <td>${r.nid}</td>
                                    <td>${r.location}</td>
                                    <td>${r.party}</td>

                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
                <div class="col-md-2">

                </div>

            </div>

        </div>
        <!----------------JATIYA------------->
        <div class="container">
            <center> <h3 class="text-success display-7">JATIYA GOT VOTE</h3></center>
            <div class="row">
                <div class="col-md-2">

                    
                </div>
                <div class="col-md-8">
                    <table class="table">
                        <thead class="thead-light">
                            <tr>
                                <th scope="col">Id</th>
                                <th scope="col">NID</th>
                                <th scope="col">Location</th>
                                <th scope="col">Party</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${listAllJp}" var="r">
                                <tr>
                                    <td>${r.id}</td>
                                    <td>${r.nid}</td>
                                    <td>${r.location}</td>
                                    <td>${r.party}</td>   
                                </tr>
                            </c:forEach>



                        </tbody>
                    </table>
                </div>
                <div class="col-md-2">

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
