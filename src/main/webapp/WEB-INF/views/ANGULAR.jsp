<%@include file="header.jsp"%>View All<%@include file="Header2.jsp"%>
<body>
<style>
.textname
{color:#000000;
overflow: hidden;
text-overflow: ellipsis;
 white-space: nowrap; 
    width: 12em; 
}
</style>

<%@include file="Navigaton.jsp"%>
<div class="container" ng-app="myApp" ng-controller="mainController">
		<div class="row" style="margin-top:20px;">
			<input type="text" class="form-control pull-right" placeholder="Search"
				ng-model="search"><br>
			<%-- <c:forEach items="${productmodelList}" var="productmodel"> --%>
		
			<div class="row" style="margin-top:20px;">	<div class="col-md-3 column productbox" ng-repeat="prod in prod1|filter:search" >
				<div class="thumbnail">
					
					<a  class="nameprice" href="<c:url value="/viewproduct/{{prod.productid}}" />">
					<img
						src="<c:url value="/resources/admin/upload/{{prod.imagename}}.jpg" />"  style="height:360px" class="img-responsive">
					
					<center>	<p>
						<strong class="textname">{{prod.name}}</strong><br><p style="color:#ff4d4d">Price &#x20b9; <%-- <fmt:formatNumber value=" --%>{{prod.price}}.00<!-- " type="currency" pattern="#,##,##,##,#,###.00"/> --></p></a>
						</p></center>
					
				
				<security:authorize access="hasRole('ROLE_ADMIN')">
				<div class='adminview'>
				<hr>
				<%-- 	<a href="<c:url value="edit/${productModel.productid}"/>" class="btn btn-sm btn-warning edit">EDIT</a> --%>
					<a href="<c:url value="delete/{{prod.productid}}"/>" class="btn btn-sm btn-danger pull-right">DELETE</a>
					</div>
			</security:authorize>
			<hr>
					<%-- <center><a href="<c:url value="/viewproduct/${productModel.productid}" />" class="btn btn-md btn-default view">VIEW</a></center>
					 --%>
				
				</div>
				</div>
				</div>
				</div>
				</div>
			
	<script type="text/javascript">
angular.module("myApp",[]).controller('mainController',function($scope,$http){

console.log("wahts is this");
$http({method:'GET',
	url:'wat'}).success(function(data,status,header,config){
	
	$scope.prod1=data;
	console.log("len"+prod.length);
	for(var c=0;c<$scope.prod.length;c++)
		{
		var d=$scope.prod[c];
		console.log(d);
		console.log($scope.prod);
		return $scope.prod1;
		}
});
});
</script>				
<div style="margin-top:200px">					
<%@include file="Footerjsp.jsp"%>
</div>