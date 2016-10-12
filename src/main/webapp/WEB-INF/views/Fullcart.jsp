<%@include file="header.jsp"%>Shipping Conformation<%@include file="Header2.jsp"%>
<style>
.body{
margin-bottom:600px;
font-size:23px;
}
</style>
<body style="background-color:#ff4d4d">
<%@include file="Navigaton.jsp"%>
<div class="container">
<div class="row">
<div class="colmd-12">
<center><H1>SHIPPING DETAILS</H1></center>
<br>
<form:form modelAttribute="shippingdetails" class="form" role="form">

<table>
<tr>
<td><h4>NAME:</h4></td>
<td>${shippingdetails.sname}</td>
</tr>
<tr>
<td><h4>ADRESS:</h4></td>
</tr>
<tr>
<td>${shippingdetails.addr1}</td>
</tr>
<tr>
<td>${shippingdetails.addr2}</td>
</tr>
<tr>
<td>${shippingdetails.addr3}</td>
</tr>
<tr>
<td>${shippingdetails.city}</td>
</tr>
<tr>
<td>${shippingdetails.phoneNumber}</td>
</tr>
</table>


<input name="_eventId_edit" class="btn btn-warning btn-md" type="submit" value="Edit" />
				<input name="_eventId_submit" type="submit" class="btn btn-success btn-md" value="Confirm Details" />
</form:form>
</div>
</div>
</div>
<%@include file="Footerjsp.jsp"%>