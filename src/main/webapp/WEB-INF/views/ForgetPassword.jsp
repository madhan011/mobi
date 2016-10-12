<%@include file="header.jsp"%>ForgetPassword<%@include file="Header2.jsp"%>
<style>

.border1{
font-family:Comic Sans MS Bold;
font-size:20px;

}
.message{
animation: blinker 1s linear infinite;
color:#ff4d4d
}
@keyframes blinker {  
  50% { opacity: 0; }

}
.mobiacesf{
font: bold 28px sans-serif;
text-align:center;
color:#000000;

}
.btn0{
margin-top:20px;
}
.mobiacesf span{
color:#ff4d4d;
}
</style>
<body>
<%@include file="Navigaton.jsp"%>
<div class="container">
<center>
<h2 class="message">${Invalid}</h2>
<h2 class="message">${Message}</h2></center>
<div class=" forget">

<form method="post" action="<c:url value="/forget"/>">
<div class="col-md-6 col-md-offset-3">
<h1 class="mobiacesf">Mobi<span>aces</span></h1>
				<center><h3>USERNAME</h3>
			<input type="text" placeholder="username" name="username"
					class="box1 border1 input-lg">
					<br>
					<h3>EMAIL:</h3>
			<input type="email" placeholder="email" name="email"
					class="box1 border1 input-lg"></center>
					<center><input type="submit" class="btn btn-success btn-md btn0" value="submit"></center>
</div>
</form>
</div>
</div>
<script type="text/javascript" src="<c:url value="/resources/js/jquery.noty.packaged.js"/>"></script>
<script type="text/javascript">

    function notification() {
    	$.noty.consumeAlert({layout: 'centerRight', type: 'failure', dismissQueue: true});

        alert("Your Password was sent to the email");
    }
</script>
<%@include file="Footerjsp.jsp"%>