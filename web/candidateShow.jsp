

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
                <div class="md-col-6">

                    <center> <h4 class="display-4">CANDIDATE PANEL</h4></center>
                </div>
                <div class="col-md-2"></div>
                <div class="col-md-4">
                    
                    <a href="candidateAdd.jsp" class="btn btn-danger"> <i class="fa fa-plus-circle fa-3x"></i></a> 
                
                </div>
            </div>
        </div>
                    <hr/>  
                    <div class="container">
                        <div class="row">
                            <c:forEach items="${list}" var="can">
                                <div class="col-md-3 mt-5">
                                    <center>
                                         <img src="img/${can.image}" height="150px" width="150px" style="border-radius: 50%;"/>
                                    </center>
                                       
                                        <br/>
                                        <i class="fa fa-user fa-2x mt-5 text-danger m-3"></i>
                                        <span class="text display-7" style="text-transform: uppercase;">${can.candidatename}</span>
                                        <br/>
                                        <i class="fa fa-location-arrow fa-2x m-3"></i>
                                         <span class="text display-7" style="text-transform: uppercase;">${can.location}</span>
                                         <br/>
                                        <i class="fa fa-users fa-2x m-3"></i>
                                         <span class="text display-7" style="text-transform: uppercase;">${can.party}</span>

                                        <a href="deleteImage.htm?cid=${can.cid}" class="btn btn-danger btn-block" style="text-transform: uppercase; margin-top: 5px" >DELETE</a>
                                  
                                </div>
                            </c:forEach>



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
