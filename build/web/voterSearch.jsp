

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
                    <a href="showV.htm" class="btn btn-danger" style="margin-bottom: 5px">Show Voter List</a>
                    <a href="adminpage.jsp" class="btn btn-danger px-5" style="margin-bottom: 5px"> Home</a> 


                </div>
                <div class="col-md-10">
                    <form action="search.htm">
                        <div class="row">
                            <div class="col-md-2"> <i class="fa fa-search fa-3x"></i></div>
                            <div class="col-md-8">
                                <input class="form-control" type="text" name="fullname" value="${voter.fullname}"/>
                            </div>
                        <div class="col-md-2">
                             <input class="btn btn-info" type="submit" value="Search"/>
                        </div>
                        </div>
                    <table class="table">
                        <tr>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td> </td>

                        </tr>
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
                                </tr>
                            </c:forEach>



                        </tbody>
                    </table>
                </form>
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
