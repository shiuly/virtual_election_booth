

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
                <%@ include file="headerV.jsp"%>  
            </div>

        </div>
        <!----------body--------------->
        
       <div class="row mt-5">
            <div class="col-md-1"></div>
            <div class="col-md-4">
                <center>
                    <div class="spinner-grow text-danger" role="status">
                        <span class="sa-success">Loading..</span>
                    </div>
                    <i class="fa fa-address-book text-danger" style="margin-top: 150px; font-size: 150px;"></i><br/><br/>
                    <div class="alert alert-danger" role="alert">
                        <span class="text-danger">
                            <c:out value="${msg}"></c:out>
                        </span> 

                    </div>
                </center>

            </div>
            <div class="col-md-4">
                <div class="jumbotron bg-light">
                    <h1 class="display-4 text-center text-dark">VOTER LOGIN</h1>
                    <p class="lead">
                    <form ng-submit="#" action="checkVoter.htm" method="post" >
                        <input type="text" name="fullname" ng-model="formLogin.email" class="form-control" placeholder="USERNAME" style="height: 45px;"><br/>
                        <input type="text" name="nid" ng-model="formLogin.contact" class="form-control" placeholder="NID" style="height: 45px;"><br/>
                    
                        <input type="submit" value="LOGIN" class="btn btn-danger btn-block">
                        
                    </form>
                </p>
                </div>
                   
                    <div class="row">
                        <div class="col-md-6 text-center">
                            <a href="index.jsp" class="text-danger">Back Home?&nbsp;</a>
                        </div>
                        <div class="col-md-6 text-center">
                            <a href="voter.jsp" class="text-danger">Become A Voter </a>
                        </div>
                    </div>


                </div>
            </div>
            <div class="col-md-3"></div>
        






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
