<%@include file="header.jsp"%>JavaViewAll
<%@include file="Header2.jsp"%>
<style>
body{
background-color:#ffffff;
}
.viewal{
margin-right:20px;
margin-left:20px;
}


.productbox {
	/* background-color: #ffffff; */
	/* padding: 0px;
	height:740px;
	margin-right:5px; */
	/* -webkit-box-shadow: 0 8px 6px -6px #999;
	-moz-box-shadow: 0 8px -6px 0px #999;
	box-shadow: 0 8px 6px 0px #999; 
	border:1px solid #000000;
	margin-bottom: 2px;
	height:440px;
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

.nameprice{
font-family:Swiss;
font-size:20px;
color:#ff4d4d;
}
</style>
<body style="background-color:#ff4d4d">
<%@include file="Navigaton.jsp"%>
<div class="viewal">
<c:forEach items="${productmodelList}" var="productModel">
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
				<%-- 	<a href="<c:url value="edit/${productModel.productid}"/>" class="btn btn-sm btn-warning edit">EDIT</a> --%>
					<a href="<c:url value="delete/${productModel.productid}"/>" class="btn btn-sm btn-danger pull-right">DELETE</a>
					</div>
			</security:authorize>
			<hr>
					<%-- <center><a href="<c:url value="/viewproduct/${productModel.productid}" />" class="btn btn-md btn-default view">VIEW</a></center>
					 --%>
				
				</div>
				</div>
					
			</c:forEach>
	</div>
		
		
		
