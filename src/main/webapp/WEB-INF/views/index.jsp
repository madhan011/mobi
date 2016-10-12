<%@include file="header.jsp"%>
Home
<%@include file="Header2.jsp"%>
<style>
.cat {
	margin-left: 20px;
	margin-right: 20px;
}


.list-group-item {
	margin-top: 2px;
	color: #ffffff;
	background-color: #000000;
	font: bold sans-serif;
}

.carousel-inner>.item>img {
	width: 1040px;
	height: 340px;
}
.carousel-indicators .item{
border-color:#000000;
}
.carousel-indicators .active {
	background-color: #ff4d4d;
	border-color:#ffffff;
}

.carousel-control {
	width: 0;
}

.carousel-control.left, .carousel-control.right {
	opacity: 1;
	filter: alpha(opacity = 100);
	background-image: none;
	background-repeat: no-repeat;
	text-shadow: none;
}

.carousel-control.left span {
	padding: 0px;
}

.carousel-control.right span {
	padding: 0px;
}

.carousel-control .glyphicon-chevron-left, .carousel-control .glyphicon-chevron-right,
	.carousel-control .icon-prev, .carousel-control .icon-next {
	position: absolute;
	top: 40%;
	z-index: 5;
	display: inline-block;
}

.carousel-control .glyphicon-chevron-left, .carousel-control .icon-prev
	{
	left: 0;
}

.carousel-control .glyphicon-chevron-right, .carousel-control .icon-next
	{
	right: 0;
}

.carousel-control.left span, .carousel-control.right span {
	background-color: black;
}

.carousel-control.left span:hover, .carousel-control.right span:hover {
	opacity: .7;
	filter: alpha(opacity = 70);
}
.mobileacess{
margin-bottom:15px;
}
</style>

<body>
	<%@include file="top.jsp"%>
		<%@include file="Navigaton.jsp"%>
	
	<div class="cat">
	

	
		<div class="row">
			<div class="col-md-9">
				<div id="myCarousel" class="carousel slide" data-interval="2000"
					data-ride="carousel">
					<!-- Indicators -->
					<ol class="carousel-indicators">
						<li id="si1" data-target="#myCarousel" data-slide-to="0"
							class="active"></li>
						<li id="si2" data-target="#myCarousel" data-slide-to="1"></li>
						<li id="si3" data-target="#myCarousel" data-slide-to="2"></li>
						<li id="si4" data-target="#myCarousel" data-slide-to="3"></li>
						<li id="si5" data-target="#myCarousel" data-slide-to="4"></li>
						<li id="si6" data-target="#myCarousel" data-slide-to="5"></li>
					</ol>
					<!-- Wrapper for slides -->
					<div class="carousel-inner" role="listbox">
						<div class="item active">
							<img src="<c:url value="/resources/n/4.jpg"/>">
						</div>

						<div class="item">
							<img src="<c:url value="/resources/n/2.jpg"/>">
						</div>

						<div class="item">
							<img src="<c:url value="/resources/n/67.jpg"/>">
						</div>


						<div class="item">
							<img src="<c:url value="/resources/n/hi.jpg"/>">
						</div>
						<div class="item">
							<img src="<c:url value="/resources/n/5.jpg"/>">
						</div>
						<div class="item">
							<img src="<c:url value="/resources/n/7.jpg"/>">
						</div>

					</div>

					<!-- Left and right controls -->
					<a class="left carousel-control" href="#myCarousel" role="button"
						data-slide="prev"> <span
						class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
						<span class="sr-only">Previous</span>
					</a> <a class="right carousel-control" href="#myCarousel" role="button"
						data-slide="next"> <span
						class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
						<span class="sr-only">Next</span>
					</a>
				</div>
			</div>
			<div class="col-md-3">
				<ul class="list-group">
					<li class="list-group-item active"
						style="background-color: #ff4d4d"><strong><center
								style="color: #000000">CATEGORIES</center></strong> <%-- <center></center>  --%>
					</li>
					<c:forEach items="${productmodelList}" var="productModel">
						<li class="list-group-item"><a
							href="<c:url value="/home/${productModel.category}"/>">
								<center style="color: #ff4d4d">${productModel.category}</center>

						</a></li>
					</c:forEach>

				</ul>
			</div>
		</div>
		
	</div>
	
	<%@include file="Footerjsp.jsp"%>
	<!--function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
}
</script> -->
	<!-- <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a> -->