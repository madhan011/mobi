<%@include file="header.jsp"%>
Cart<%@include file="Header2.jsp"%>
<style>
.grndtotal{
font-family:Comic Sans MS Bold;
color:red;
font-size:25px;
text-shadow: 1px 2px 3px #fffff;
}
.homebutton{
margin-left:600px;
direction: rtl;
}

table{
width:100%;
align:center;

}
.total2{
font-family:Comic Sans MS Bold;
text-shadow: 1px 2px 3px #fffff;
color:red;
font-size:25px;

}
p{
font-family:Comic Sans MS Bold;
text-shadow: 1px 2px 3px #fffff;
color:red;
margin-right:105px;
font-size:23px;
}
th{
background-color:#2D9FC4;
text-align:center;
height:40px;
font-family:arial;
}
.checkout{
margin-right:75px;

}
.hr1{
 border-style: inset;
    border-width: 5px;
    border-color:grey;
}
tr{
border-bottom:1px;
margin-bottom:5px;
}
td{
text-align:center;
height:72px;
font-family:arial;
}
</style>
<body>
	<!--  ="cartpage" ng-controller="cartController" -->
	<!-- <script type="text/javascript">
angular.module("mycartpage",[]).controller('cartController',function($scope,$http){
/* alert("hi"); */
console.log("execution of angular js");
$http({method:'GET',
	url:'viewcartpdetails'}).success(function(data,status,header,config){
	alert("Welcome");
	$scope.cart=data;
	console.log("len"+prod.length);
	for(var c=0;c<$scope.cart.length;c++)
		{
		var d=$scope.cart[c];
		console.log(d);
		console.log($scope.cart);
		return $scope.cart;
		}
});
});

</script> -->
	<%@include file="Navigaton.jsp"%>
	
	<c:set var="total" value="0"></c:set>



		<center><h3>YOUR CART</h3><span>${cart.username}</span></center>
	
		<!-- <div class="pull-right">
			<input type="text" ng-model="test">
		</div> -->
	
	
	<div class="container">
	<hr class="hr1">
	<div>
	<table >
		<tr>
			<th>Image</th>
			<th>Quantity</th>
			<th>NAME</th>
			
			<th>PRICE</th>
			<th>CATEGORY</th>
			<th>Total Prize</th>

			<th>DELETE</th>

		</tr>
		
		<%-- <tr ng-repeat="ce in prod | fiter:test">
					<td class="media" colspan=3><img class="media-object" src="<c:url value="resources/admin/upload/{{ce.imagename}}.jpg"/>"></td>
					<td>{{ce.quantity}}</td>
					<td>{{ce.name}}</td>
					<td>{{ce.description}}</td>
					<td>{{ce.price}}</td>
					<td>{{ce.category}}</td>
					
					
					<td><a href="<c:url value="delete/${ce.id}"/>">DELETE</a></td>
				
					
				<td><a href="<c:url value="viewproduct/${ce.id}"/>">VIEW</a></td>
				</tr> --%>

		<c:forEach items="${cartlist}" var="cart">
			<tr style="margin-top:5px">
				<td><img src="<c:url value="/resources/admin/upload/${cart.product.imagename}.jpg"/>"
						class="img-responsive" style="width:72px;height:72px;"></td>
				<td ><c:if test="${cart.quantity !='1'}"><span style="margin-right:5px"><a class="btn btn-xs btn-primary" href="<c:url value="/decrease/${cart.cid}"/>">-</a></span></c:if>${cart.quantity}<span style="margin-left:5px" >
				<c:if test="${cart.product.quantity !='0'}">
				<a href="<c:url value="/increase/${cart.cid}"/>" class="btn btn-xs btn-success">+</a>
				</c:if></span><c:if test="${cart.product.quantity =='0'}"><br><p style="text-align:center;font-size:18px;">No More stack</p></c:if></td>
				<td>${cart.product.name}</td>
				<td>&#x20b9;${cart.product.price}0</td>
				<td>${cart.product.category}</td>
				<td>&#x20b9;${cart.totalprice}0</td>
			
				<td><a class="btn btn-danger" href="<c:url value="delete/cartitem/${cart.cid}"/>">REMOVE</a></td>
				
			</tr>
	
			<c:set var="total" value="${total+cart.totalprice}"></c:set>
				
		</c:forEach>
		</table>
		<hr>
		<div>
		<c:choose>
			<c:when test="${total!='0' }">
			
					<div class="row">
					<div class="pull-right"><p>Grand Total:<span style="margin-left:20px">&#x20b9;
					${total}0</span></p></div>
					</div>
			</c:when>
			<c:when test="${total=='0' }">
			<center><h1 style="color:#ff4d4d">YOUR CART IS EMPTY</h1></center>
			</c:when>
		</c:choose>
		</div>
	</div>
	
	<c:choose>
		<c:when test="${total!='0' }">
		<hr>
			<a href="<c:url value="/delallcart"/>" class="btn btn-danger pull-left">DELETE ALL</a>
			<a href="<c:url value="/home"/>" class="btn btn-default homebutton">CONTINUE SHOPPING</a>
			<a href="<c:url value="/checkout.obj"/>" class="btn btn-primary checkout pull-right">Checkout</a>
		</c:when>
	</c:choose>
	<hr class="hr1">
	</div>
	
	<script>
	var q=${cart.product.quantity}
	if(q=='0')
		{
		 function notification() {
		    	$.noty.consumeAlert({layout: 'centerRight', type: 'failure', dismissQueue: true});

		        alert("you brought last item of the cart");
		    }
		}
	</script>