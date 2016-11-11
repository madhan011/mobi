<%@include file="header.jsp"%>${productModel.name}<%@include
	file="Header2.jsp"%>
<style>
fieldset, form:label { margin: 0; padding: 0; }


/****** Style Star Rating Widget *****/

.rating { 
  border: none;
  float: left;
}

.rating > form:radiobutton { display: none; } 
.rating > form:label:before { 
  margin: 5px;
  font-size: 1.25em;
  font-family: FontAwesome;
  display: inline-block;
  content: "\f005";
}

.rating > .half:before { 
  content: "\f089";
  position: absolute;
}

.rating > form:label { 
  color: #ddd; 
 float: right; 
}

/***** CSS Magic to Highlight Stars on Hover *****/

.rating > form:radiobutton ~ 	form:label, /* show gold star when clicked */
.rating:not(form:radiobutton) > form:label:hover, /* hover current star */
.rating:not(form:radiobutton) > form:label:hover ~ form:label { color: #FFD700;  } /* hover previous stars in list */

.rating > form:radiobutton + form:label:hover, /* hover current star when changing rating */
.rating > form:radiobutton ~ form:label:hover,
.rating > form:radiobutton ~ form:radiobutton ~ label, /* lighten current selection */
.rating > form:radiobutton ~ form:label:hover ~ label { color: #FFED85;  } 
.pricelist {
	font-size: 28px;
}

.mytab {
	margin-top: 15px;
}

.nav-tabs li a {
	background-color: #ff4d4d;
	color: #ffffff;
}

li:active>a {
	background-color: #ffffff;
	color: #ff4d4d;
}

.categorycolor {
	color: #ff4d4d;
	margin-right: 20px;
}

.prdview {
	height: 400px;
	width: 100%
}

.descr {
	margin-top: 15px;
}

.brandcolor {
	color: #004d4d;
}

.btnadd:hover {
	color: #ffffff;
	background-color: #ff4d4d;
}
.message{
font-size: 18px;
margin-top:5px;
color:#b0bb00;
}
</style>
<body>
	<%@include file="Navigaton.jsp"%>
	<div class="container">

		<div class="row">
			<div class="col-md-4">
				<a class="workspace"
					href="<c:url value="/resources/admin/upload/${productModel.imagename}.jpg"/>"
					> <img
					src="<c:url value="/resources/admin/upload/${productModel.imagename}.jpg"/>"
					class="img-responsive prdview">
				</a>
				<script type="text/javascript"
					src="<c:url value="/resources/js/jquery.mk.magnifier.js"/>"></script>
				<script>
					$('.workspace').mkMagnifier({
						width : 300,
						height : 460,
						ratio : 1.65,
						magnifier_radius : 90
					});
				</script>
			</div>
			<div class="col-md-8">
				<center>
					<h2>${productModel.name}</h2>
					<h3 class="brandcolor">${productModel.brand}</h3>
					<h4>
						<span class="categorycolor">Category:</span>${productModel.category}</h4>
				</center>
				<hr>
				<div class="row">

					<div class="col-md-3 col-md-offset-2">
						<p class="pricelist">&#x20b9;${productModel.price}0</p>
					</div>
					<div class="col-md-6">
					<c:choose>
			<c:when test="${productModel.quantity !='0' }">
				
						<a
							href="<c:url value="/user/addtocart/${productModel.productid}"/>"
							class="btn btn-default btnadd pull-right"> <span
							class="glyphicon glyphicon-shopping-cart"></span> Add to cart
						</a>
						</c:when>
						<c:when test="${productModel.quantity =='0' }">
						<button type="button" disabled class="btn btn-danger pull-right">SOLD OUT</button>
						</c:when>
						</c:choose>
						<div class="row">
						<c:choose>
				<c:when test="${productModel.quantity =='1' }">
				<center><p class="message">Only 1 item available in stock</p></center>
				</c:when>
				</c:choose>
						</div>
					</div>
				</div>

				<div class="row mytab">
					<div class="col-xs-12">
						<ul id="myTab" class="nav nav-tabs">
							<li class="active"><a href="#description" data-toggle="tab">DESCRIPTION</a></li>
							
							<li><a href="#showreview" data-toggle="tab">Review &
									Ratings</a></li>
									<security:authorize access="hasRole('ROLE_USER')">
									<li><a href="#review" data-toggle="tab">Write an review</a></li>
						</security:authorize>
						</ul>


						<div class="tab-content">
							<div class="tab-pane fade in active" id="description">
								<h4>Product Information</h4>
								<p>
								<ul>${productModel.description}</ul>
								<p>
							</div>


							<div class="tab-pane fade" id="review">
								<!--  <h4>WRITE AN REVIEW</h4> -->
								<form:form method="POST" commandName="review"
									action="addreview/${productModel.productid}">
									<form:label path="title">Title:</form:label>
									<br>
									<form:input path="title" type="text"
										pattern="[a-zA-Z\s]{3,250}" required="true"
										title="Size Must Be 3-250" class="form-control input-lg"
										placeholder="TITLE" />
									<br>
									<form:label path="description">Description:</form:label>
									<br>
									<form:input path="description" type="textarea"
										pattern="[a-zA-Z\s]{3,64000}" required="true"
										class="form-control input-lg" placeholder="DESCRIPTION" />
									<br>
									<form:label path="rating">RATING:</form:label>
									<br>
									<%-- <fieldset class="rating">
									<form:radiobutton id="star5" path="rating" value="5" />
									<form:label path="rating" class="full" for="star5"
										title="Awesome - 5 stars"></form:label>
									<form:radiobutton id="star4half" path="rating" value="4.50" />
									<form:label path="rating" class="half" for="star4half"
										title="Pretty good - 4.5 stars"></form:label>
									<form:radiobutton id="star4" path="rating" value="4" />
									<form:label path="rating" class="full" for="star4"
										title="Pretty good - 4 stars"></form:label>
									<form:radiobutton id="star3half" path="rating" value="3.50" />
									<form:label path="rating" class="half" for="star3half"
										title="Meh - 3.5 stars"></form:label>
									<form:radiobutton id="star3" path="rating" value="3" />
									<form:label path="rating" class="full" for="star3"
										title="Meh - 3 stars"></form:label>
									<form:radiobutton id="star2half" path="rating" value="2.50" />
									<form:label path="rating" class="half" for="star2half"
										title="Kinda bad - 2.5 stars"></form:label>
									<form:radiobutton id="star2" path="rating" value="2" />
									<form:label path="rating" class="full" for="star2"
										title="Kinda bad - 2 stars"></form:label>
									<form:radiobutton id="star1half" path="rating" value="1.50" />
									<form:label path="rating" class="half" for="star1half"
										title="Meh - 1.5 stars"></form:label>
									<form:radiobutton id="star1" path="rating" value="1" />
									<form:label path="rating" class="full" for="star1"
										title="Sucks big time - 1 star"></form:label>
									<form:radiobutton id="starhalf" path="rating" value="0.5" />
									<form:label path="rating" class="half" for="starhalf"
										title="Sucks big time - 0.5 stars"></form:label>
									</fieldset> --%>
									<button class="btn btn-primary" type="submit">Submit</button>
								</form:form>

							</div>

							<div class="tab-pane fade" id="showreview">
							<c:forEach items="${reviewlist}" var="review">
								<div class="col-xs-12 bor">
								<p><span>${review.reviewdate}</span><span class="pull-right">${review.username}</span></p>
								<h6>TITLE:<span style="margin-left:20px">${review.title}</span></h6>
								<h6>DESCRIPTION:<span style="margin-left:20px">${review.description}</span></h6>
								</div>
							</c:forEach>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<%@include file="Footerjsp.jsp"%>