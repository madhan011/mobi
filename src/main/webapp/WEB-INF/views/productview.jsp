<%@include file="header.jsp"%>${productModel.name}<%@include file="Header2.jsp"%>
<style>
.pricelist{
font-size:28px;
}
.mytab{
margin-top:15px;
}
.categorycolor{
color:#ff4d4d;
margin-right:20px;
}

.prdview{
height:400px;
width:100%}
.descr{
margin-top:15px;}
.brandcolor{
color:#004d4d;}

.btnadd:hover{
color:#ffffff;
background-color:#ff4d4d;
}
</style>
<body>
<%@include file="Navigaton.jsp"%>
<div class="container">

	<div class="row">
	<div class="col-md-4">
	<a href="<c:url value="/resources/admin/upload/${productModel.imagename}.jpg"/>" class="workspace">
	<img src="<c:url value="/resources/admin/upload/${productModel.imagename}.jpg"/>"
						class="img-responsive prdview">
	</a>
	<script type="text/javascript" src="<c:url value="/resources/js/jquery.mk.magnifier.js"/>"></script>
<script>
$('.workspace').mkMagnifier({width:300,height:460,ratio:1.65,magnifier_radius:90});
</script>
	</div>		
		<div class="col-md-8">
			<center><h2>${productModel.name}</h2>
			<h3 class="brandcolor">${productModel.brand}</h3><h4><span class="categorycolor">Category:</span>${productModel.category}</h4></center>
			<hr>
			<div class="row">
			
			<div class="col-md-3 col-md-offset-2">
			<p class="pricelist">&#x20b9;${productModel.price}</p>
			</div>
			<div class="col-md-6">
			<a href="<c:url value="/user/addtocart/${productModel.productid}"/>" class="btn btn-default btnadd pull-right"> <span class="glyphicon glyphicon-shopping-cart"></span> Add to cart</a>
			</div>
			</div>
			
			<div class="row mytab">
		<div class="col-xs-12">
			<ul id="myTab" class="nav nav-tabs">
				<li class="active"><a href="#description" data-toggle="tab" style="color:#ffffff;background-color:#ff4d4d;">DESCRIPTION</a></li>
			</ul>
		</div>	
		</div>
		<div class= "tab-content">		
		<div class="tab-pane fade active in" id="description">	
		 <h4>Product Information</h4>		
			<p><ul>${productModel.description}</ul><p>
			</div>
	
	</div>
		</div>
	</div>	
</div>

<%@include file="Footerjsp.jsp"%>