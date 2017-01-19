<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>

<script>
	var dest = ${destlist};
	angular.module('repeatSample', []).controller('repeatController',
			function($scope) {
				$scope.destlist = dest;
				$scope.sort = function(keyname) {
					$scope.sortKey = keyname; //set the sortKey to the param passed
					$scope.reverse = !$scope.reverse; //if true make it false and vice versa
				}
			});
</script>


<title>Destination</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>

<div ng-app="repeatSample" ng-controller="repeatController">

	<div class="container">
		<%@ include file="/WEB-INF/views/header.jsp"%>
		<br>
		<br> <br> <br>
		<br>
		<div class="jumbotron"
			style="background-image: url(resources/images/fadedjumbo.jpg); background-repeat: no-repeat;">
			<h1 align="center" style="color: #ffffff;">
				<b>{{destlist.destname}}</b>
			</h1>
		</div>
		<br>
		<img src="resources/images/{{destlist.destid}}.jpg"
			style="float: left; margin: 0 30px 15px 20px; width: 500px; padding: 15px; border: 1px solid black; text-align: center;">

		<div class="caption">
			<h4>Id: {{destlist.destid}}</h4>
			<h4>Name: {{destlist.destname}}</h4>
			<h4>Description: {{destlist.destdesc}}</h4>
			<h4>Supplier Name: {{destlist.suppliername}}</h4>
			<h4>Price: Rs.{{destlist.price}}</h4>
		</div>
		<a href="Carddetails?pid={{destlist.destid}}"><button
				type="button" class="btn btn-default btn-lg">Go to
				{{destlist.destname}}</button></a>

	</div>
	<br>
	<br>
</div>
<%@ include file="/WEB-INF/views/footer.jsp"%>
</html>