<%@include file="header.jsp"%>REGISTRATION<%@include file="Header2.jsp"%>
<style>
body{
background-color:#ffffff;
}
i{
color:#ffffff;
}
/* .every
{
border-top:2px;
border-right:2px;
border-left:2px;
border-bottom:2px;
border-color:#00000;
} */
.error1{
font-family:URW Palladio;
font-size:18px;
animation: blinker 1s linear infinite;
}

@keyframes blinker {  
  50% { opacity: 0; }

}
</style>
<body>
<%@include file="Navigaton.jsp"%>
	<div class="container" id="wrap">
		<div class="row top-buffer">
			<div class="every col-md-6 col-md-offset-3">


				<form:form modelAttribute="newuser" accept-charset="utf-8"
					class="form" role="form">
					<h1>Sign Up</h1>
					
					<form:label path="fname">Name:</form:label>
					<br>
					<form:input path="fname" type="text" pattern="[a-zA-Z\s]{3,30}" required="true" title="Size Must Be 3-30 "
						class="form-control input-lg" placeholder="Name" />

					<!-- to display validation messages -->
					<c:forEach
						items="${flowRequestContext.messageContext.getMessagesBySource('fname')}"
						var="err">
						<div>
							<span style="color:red" class="error1">${err.text}</span>
						</div>
					</c:forEach>
					<br>
					<form:label path="email">Email Id: </form:label><i class="fa fa-envelope-o fa-fw"></i>
					<c:forEach
						items="${flowRequestContext.messageContext.getMessagesBySource('email')}"
						var="err">
						
							<span style="color:red" class="error1">${err.text}</span>
						
					</c:forEach>
					<br>
					<form:input path="email"
						pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" required="true" title="ex1@ex.com"
						class="form-control input-lg" placeholder="Your Email" />

					
					<br>
					<div class="row">
						<div class="col-xs-4">
							<form:label path="age">Age</form:label>
							<c:forEach
								items="${flowRequestContext.messageContext.getMessagesBySource('age')}"
								var="err">
								
									<span style="color:red" class="error1">${err.text}</span>
								
							</c:forEach>
							<br>
							<form:input path="age" type="text" required="true" title='Numberic value is Valid'
								class="form-control input-lg" placeholder="Your Age" pattern="[1-9]{.3}"/>
							<br />
							
						</div>
						<div class="col-xs-8">
							<form:label path="phnumber">Phone Number:</form:label>
							<c:forEach
								items="${flowRequestContext.messageContext.getMessagesBySource('phnumber')}"
								var="err">
								
									<span style="color:red" class="error1">${err.text}</span>
								
							</c:forEach>
							<br>
							<form:input path="phnumber" required="true" title="PhoneNumber Starts with Either 7,8 or 9.Length Must Be 10"
								class="form-control input-lg" placeholder="phone number" pattern="^[789][0-9]{9}"/>

							<!-- to display validation messages -->
							
						</div>
					</div>
					<form:label path="username">Username</form:label>
					<c:forEach
						items="${flowRequestContext.messageContext.getMessagesBySource('username')}"
						var="err">
						
							<span style="color:red" class="error1">${err.text}</span>
						
					</c:forEach>
					<br>
					<form:input path="username" required="true" title="ALPHABETS ONLY VALID> LENGHT MUST BE 3-12"
						class="form-control input-lg" placeholder="Username" pattern="[a-zA-z]{3,12}"/>
					<br />
					<!-- to display validation messages -->
					
					<div class="row">
						<div class="col-xs-6">
							<form:label path="password">Password:</form:label>
							<i class="fa fa-key fa-fw"></i><form:input path="password" type="password" required="true"
								class="form-control input-lg" placeholder="Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="at least one number and one uppercase and lowercase letter, and at least 8 or more characters"/>
							<br />
							<!-- to display validation messages -->
							<c:forEach
								items="${flowRequestContext.messageContext.getMessagesBySource('password')}"
								var="err">
								<div>
									<span style="color:red" class="error1">${err.text}</span>
								</div>
							</c:forEach>
						</div>
						<div class="col-xs-6">
							<form:label path="cPassword">Confirmation Password: </form:label><i class="fa fa-key fa-fw"></i>
							<br>
							<form:input path="cPassword" type="password" required="true"
								class="form-control input-lg " placeholder="Re-type Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="at least one number and one uppercase and lowercase letter, and at least 8 or more characters"/>
							<br />
							<!-- to display validation messages -->
							<c:forEach
								items="${flowRequestContext.messageContext.getMessagesBySource('cPassword')}"
								var="err">
								<div>
									<span style="color:red" class="error1">${err.text}</span>
								</div>
							</c:forEach>
						</div>
					</div>

					<br />
					<!-- for triggering webflow events using form submission,
					 the eventId to be triggered is given in "name" attribute as:
					-->
					<div class="row">
						
						<center>	<div class="col-xs-3 col-md-offset-3 button" >
							
								<button style="align:center" class="btn btn-md btn-success btn-block signup-btn"
									name="_eventId_submit" type="submit" value="Submit" onclick="return validatePassword()">Sign
									Up</button>

							</div>
						
							<div class="col-xs-3">
								<input class="btn btn-md btn-danger btn-block signup-btn pull-right"
									type="reset" value="Reset">

							</div></center></div></form:form>
							
							
				
						
					
				
			</div>
		</div>
	</div>
	<script type="text/javascript">
	function validatePassword(){
	var age=document.getElementById("age").value;
	var password = document.getElementById("password").value;
    var confirmPassword = document.getElementById("cPassword").value;
    if(age>100){
    	alert("Age must be 100 ");
    	return false;
    }else
    if (password != confirmPassword) {
        alert("Passwords does not match.");
        return false;
    }
    	
    return true;
}	
	</script>
	<!-- </body>
</html> -->
<%@include file="Footerjsp.jsp"%>