<%@include file="header.jsp"%>OrderConformation<%@include
	file="Header2.jsp"%>
<style>
.wrapper {
	margin-bottom: 40px;
}

.GRAND {
	color: #ff4d4d;
}

th {
	background-color: #2D9FC4;
	text-align: center;
}

td {
	text-align: center;
}

.btnpo {
	margin-top: 40px;
}

.showsuccess {
	color: #ff4d4d;
	animation: blinker 1s linear infinite;
}

@
keyframes blinker { 50% {
	opacity: 0;
}

}
.all {
	font-size: 20px;
	color: #ff4d4d;
}
</style>
<body style="background-color: #ffffff">


	<%@include file="Navigaton.jsp"%>
	<div class="wrapper">
		<div class="container">
			<h1 class="showsuccess">YOUR ORDERD PLACED SUCCESSFULY!!!!</h1>
		</div>
		<hr>
		<div class="container">

			<div class="col-md-6">

				<h4>
					ORDER DATE:<span class="all">${Orders.orderdate }</span>
				</h4>
				<h4>
					GRAND TOTAL:<span class="all">&#x20b9;${Orders.cartdetails.grandtotal}</span>
				</h4>


			</div>
			<div class="col-md-6">
				<h3 style="color: #2D9FC4">
					<center>PRODUCT DETAILS</center>
				</h3>
				<table style="width: 100%">
					<tr>
						<th>Name</th>
						<th>Price</th>
						<th>Quantity</th>
						<th>Total Prize</th>
					</tr>

					<c:forEach items="${ORDERLIST}" var="Orders">

						<tr>
							<td>${Orders.productname}</td>
							<td>${Orders.poductprice}</td>
							<td>${Orders.quantity }</td>
							<td>${Orders.totalprice}</td>
						</tr>
					</c:forEach>
				</table>

			</div>
		</div>
		<center>
			<a href="<c:url value="/home"/>" class="btn btn-success btnpo">SUBMIT</a>
		</center>
	</div>

	<%@include file="Footerjsp.jsp"%>