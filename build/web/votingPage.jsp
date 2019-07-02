

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
            
            <div class="row">
                 <div class="col-md-4">
                        
                        <div class="col-md-6 text-center">
                            <a href="VoterOut.htm" class="btn btn-danger btn-lg">Confirm </a>
                        </div>
                    </div>
            </div>
        <!----------body--------------->
        
        <div class="container">
            <div class="row">
                <c:forEach items="${validCan}" var="can"> 
                <div class="col-md-4">
                    <hr/>       
                    <div class="row">
                                                  
                            <div class="auto" style="margin-right: 30px">
                               

                                <img src="img/${can.image}" height="150px" width="150px" style="border-radius: 50%;"/>
                                <h5 class="card-title" style="text-transform: uppercase;">${can.candidatename}</h5>
                                <p class="card-text" >${can.location}</p>
                                <p class="card-text">${can.party}</p>
                                
                                <a href="myVote.htm?party=${can.party} &&location=${can.location}" class="btn btn-danger btn-lg">VOTE</a>
                               
                            </div>
                        
                    </div> 
                                       
                </div>
                                </c:forEach>
                   
                    
               
                
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
