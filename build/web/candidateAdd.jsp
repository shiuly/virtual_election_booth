<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>  
        <meta charset="UTF-8">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <script src="resources/bootstrap.min.js" type="text/javascript"></script>
        <script src="resources/angular.min.js" type="text/javascript"></script>
        <title>Candidate Add</title>  

    </head>
    <body ng-app="simpleApp" ng-controller="simpleCtrl">
    <center>
       <a href="#" class="btn btn-danger">CREATE PROFILE PAGE/ ADD NEW CANDIDATE</a>  
    </center>
       
        <hr/>
    
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
        <div class="row">
            <div class="col-md-3">
            </div>
            <div class="col-md-6"> 
                <center>
                    <h1>CREATE CANDIDATE NEW PROFILE</h1>
                </center>
                <form action="fileUploadAir.htm" method="POST" enctype="multipart/form-data">
                    <input type="file" name="imageFile"><br/><br/>
                    <input type="submit" value="CONFIRM" class="btn btn-block btn-danger">
                </form>
                <br/>
                <form action="saveData.htm" method="POST">
                    <input type="text" name="candidatename" class="form-control" placeholder="Candidate name" required=""><br/>
                    <input type="text" name="location" class="form-control" placeholder="Location"><br/>
                    <input type="text" name="party" class="form-control" placeholder="party" required=""><br/>
                 
                    <input type="text" name="image" value="${img}" class="form-control" placeholder="Images Here" readonly><br/>
                    <input type="submit" value="CANDIDATE ADD" class="btn btn-danger" style="margin-left: 450px;">  
                </form>
            </div> 
                    <div class="col-md-3">
                            <a href="showData.htm" class="btn btn-danger"style="margin-bottom: 5px"> CANDIDATE VIEW</a> <br/>
                            <a href="adminpage.jsp" class="btn btn-danger px-5"style="margin-bottom: 5px"> HOME</a> <br/>
                    </div>
        </div>
        <script>
                    var app = angular.module("simpleApp", []);
                    app.controller("simpleCtrl", function ($scope, $http) {

                    });
        </script>
   
        
        
    </body>
</html>