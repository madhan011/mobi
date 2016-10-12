<%@include file="header.jsp"%>Category<%@include file="Header2.jsp"%>
<style>
.productbox {
	background-color: #ffffff;
	padding: 10px;
	margin-bottom: 10px;
	-webkit-box-shadow: 0 8px 6px -6px #999;
	-moz-box-shadow: 0 8px 6px -6px #999;
	box-shadow: 0 8px 6px -6px #999;
}

.producttitle {
	font-weight: bold;
	padding: 5px 0 5px 0;
}

.p{
	border-top: 1px solid #dadada;
	padding-top: 5px;
}

p>.a {
	font-weight: bold;
	font-size: 1.4em;
}
.view{
margin-right:20px;
margin-left:20px;

}
.fullcategory{
margin-bottom:500px;
}
</style>
</head>
<body style="background-color:#ff4d4d">
	<%@include file="Navigaton.jsp"%>
	<div class="fullcategory">
		<!-- 	<c:forEach items="${productmodelList}" var="productModel">
				
				<div class="col-md-3 column productbox">
    <img src="<c:url value="resources/admin/upload/${productModel.imagename}"/>" width="200px" height="200px" class="img-responsive">
    <div class="producttitle">${productModel.name}</</div>
    <div class="productprice"><div class="pull-right"><a href="#" class="btn btn-danger btn-sm" role="button">BUY</a></div><div class="pricetext">${productModel.price}</div></div>
</div>
				
				
				</div>
			</c:forEach>
		</div>-->
		<div class="header">
			<center>
				<h1>
					${productModel.category}
					</h1>
			</center>
		</div>
<div class="view">

		<c:forEach items="${productmodelList}" var="productModel">
			<div class="col-md-3 column productbox">
			
				<div class="thumbnail">
				<a href="<c:url value="/viewproduct/${productModel.productid}"/>">
					<img
						src="<c:url value="/resources/admin/upload/${productModel.imagename}.jpg"/>"
						style="height:240px;width:100%" class="img-responsive">
						</div>
					<center>
						<p>
						<strong style="color:#000000">${productModel.name}</strong></p><p style="color:#ff4d4d">Price &#x20b9; ${productModel.price}</p>
					</center></a>
					<hr>
				
			</div>
		</c:forEach>
	</div>
	</div>
<%@include file="Footerjsp.jsp"%>