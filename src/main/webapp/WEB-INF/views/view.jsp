<%@include file="header.jsp"%>
-ViewAll
<%@include file="Header2.jsp"%>
<body>
<script type="text/javascript">
angular.module("myApp",[]).controller('mainController',function($scope,$http){
alert("hi");
console.log("wahts is this");
$http({method:'GET',
	url:'wat'}).success(function(data,status,header,config){
	alert("Welcome");
	$scope.prod=data;
	console.log("len"+prod.length);
	for(var c=0;c<$scope.prod.length;c++)
		{
		var d=$scope.prod[c];
		console.log(d);
		console.log($scope.prod);
		return $scope.prod;
		}
});
});

</script>
<style>
table {
    border-collapse: collapse;
   background-color: #000000;
   width:65%;
    margin-top:5px;
    border:5px solid #DEA573; 
  
}

th, td {
    text-align: center;
   	font-family:CURSIVE;
   	font-weight: bold;
   	font-size:16px;
    padding:8px;
}

</style>

<%@include file="Navigaton.jsp"%>
<div ng-app="myApp" ng-controller="mainController" class="table-responsive">
<div class="col-md-3 column productbox">
				<div class="thumbnail">
					
					<a  class="nameprice" href="<c:url value="/viewproduct/${productModel.productid}" />">
					<img
						src="<c:url value="/resources/admin/upload/${productModel.imagename}.jpg" />"  style="height:360px" class="img-responsive">
					<center>
						<p>
						<strong style="color:#000000">${productModel.name}</strong><br><p style="color:#ff4d4d">Price &#x20b9; ${productModel.price}</p></a>
						</p></center>
					
				
				<security:authorize access="hasRole('ROLE_ADMIN')">
				<div class='adminview'>
				<hr>
					<a href="<c:url value="edit/${productModel.productid}"/>" class="btn btn-sm btn-warning edit">EDIT</a>
					<a href="<c:url value="delete/${productModel.productid}"/>" class="btn btn-sm btn-danger pull-right">DELETE</a>
					</div>
					</security:authorize>
</div>
<%@include file="Footerjsp.jsp"%>