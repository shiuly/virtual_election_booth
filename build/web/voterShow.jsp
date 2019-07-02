

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
                 <div class="col-md-3"></div>
                <div class="col-md-6">
                    <div class="alert alert-danger text-dark" role="alert"> 
                        <center>
                            <c:out value="${msg}"></c:out>
                            </center>  
                        </div>
                    </div>
                    <div class="col-md-3"></div>
                </div>
                
            </div>
            <div class="row">
               
                <div class="col-md-2">
                    
                    <a href="adminpage.jsp" class="btn btn-danger"style="margin-bottom: 5px"> LOG OUT</a> 
                    <a href="voterSearch.jsp" class="btn btn-danger"style="margin-bottom: 5px"> Search</a> 
                   
                    
                </div>
                <div class="col-md-10">
                    <table class="table">
                        <thead class="thead-light">
                            <tr>
                                <th scope="col">VId</th>
                                <th scope="col">Full Name</th>
                                <th scope="col">Father Name</th>
                                <th scope="col">Mother Name</th>
                                <th scope="col">Address</th>
                                <th scope="col">DOB</th>
                                <th scope="col">NID</th>
                                <th scope="col">Gender</th>
                                <th scope="col">Image</th>
                                <th scope="col">Location</th>
                                <th scope="col">Edit</th>
                                <th scope="col">Delete</th>
                            </tr>
                        </thead>

                        <tbody>
                        <c:forEach items="${list}" var="vot">
                            <tr>
                                <td>${vot.vid}</td>
                                <td>${vot.fullname}</td>
                                <td>${vot.fathername}</td>
                                <td>${vot.mothername}</td>
                                <td>${vot.address}</td>
                                <td>${vot.dob}</td>
                                <td>${vot.nid}</td>
                                <td>${vot.gender}</td>
                                <td> <img src="img/${vot.image}" height="40px" width="40px"/></td>
                                <td>${vot.location}</td>
                                <td><a href="upP.htm?vid=${vot.vid}&fullname=${vot.fullname}">Update</a></td>
                                <td><a href="deleteV.htm?vid=${vot.vid}" class="btn btn-danger">Delete</a></td>
                            </tr>
                        </c:forEach>



                    </tbody>
                </table>
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
