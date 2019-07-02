<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>  
        <meta charset="UTF-8">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <script src="resources/bootstrap.min.js" type="text/javascript"></script>
        <script src="resources/angular.min.js" type="text/javascript"></script>
        <title>Voter Page</title>  

    </head>
    <body ng-app="simpleApp" ng-controller="simpleCtrl">
    <center>
        <a href="#" class="btn btn-danger">CREATE PROFILE PAGE FOR VOTER</a>  
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
                    <h3>CREATE VOTER NEW PROFILE</h3>
                </center>
                <form action="fileUpload.htm" method="POST" enctype="multipart/form-data">
                    <input type="file" name="imageFile"><br/><br/>
                    <input type="submit" value="CONFIRM" class="btn btn-block btn-danger">
                </form>
                <br/>
                <form action="saveD.htm" method="POST">
                    <input type="text" name="fullname" class="form-control" placeholder="Full Name" required=""><br/>
                    <input type="text" name="fathername" class="form-control" placeholder="Father Name"><br/>
                    <input type="text" name="mothername" class="form-control" placeholder="Mother Name" required=""><br/>
                    <input type="text" name="address" class="form-control" placeholder="Address" required=""><br/>
                    <input type="text" name="dob" class="form-control" placeholder="dob(dd-mon-year)" required=""><br/>
                    <input type="number" name="nid" class="form-control" placeholder="National ID" required=""><br/>
                    <select name="gender" class="form-control">
                        <option value="Male">Male</option>
                        <option value="Female">Female</option>
                       

                    </select><br/>

                    <input type="text" name="image" value="${img}" class="form-control" placeholder="Images Here" readonly><br/>

                <select name="location" class="form-control">
                    <option value="Dhaka">Dhaka</option>
                    <option value="Khulna">Khulna</option>
                    <option value="Dinajpur">Dinajpur</option>

                </select><br/>

                <input type="submit" value="REGISTRATION" class="btn btn-danger" style="margin-left: 450px;">  
            </form>
        </div> 
        <div class="col-md-3">
          
        </div>
    </div>
    <script>
                var app = angular.module("simpleApp", []);
                app.controller("simpleCtrl", function ($scope, $http) {

                });
    </script>



</body>
</html>