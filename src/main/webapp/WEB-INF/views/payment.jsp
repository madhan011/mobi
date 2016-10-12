<%@include file="header.jsp"%>Payment<%@include file="Header2.jsp"%>
<style>
input[type='checkbox']{
-webkit-appearance:none;
width:30px;
height:30px;
background-color:#0000000;
border-radius:5px;
border:2px solid #ffffff;
}
input[type='checkbox']:checked{
background-color:yellow;
}
body{
background-color:#ff4d4d;
}
.payment{
margin-bottom:55px;
}
.cashondel{
font-famiy:Serif;
font-size:18px;
}
</style>
<body ng-app="" ng-init="myVar=true">
<%@include file="Navigaton.jsp"%>

<div class="col-md-10 col-md-offset-1">
<h2 style="color:#000012">Payemt</h2>
<span class="cashondel" ><input type="checkbox" ng-model="myVar">cash on delivery only</span></div>
<div class="payment container" >
<div class="row">
<div class="col-sm-10 col-md-offset-2">
<p class="payment"><h4>Total Cash for your Order will Collect it on the time of Delivery</h4></p> 
<div class="col-sm-2">
<CENTER><a ng-disabled="myVar==false" href="<c:url value="save/order"/>" class="btn btn-md btn-success btn-block">Pay</a></CENTER>
</div>
</div></div></div>
<%@include file="Footerjsp.jsp"%>