<style>
.naviaces{
color:#ff4d4d;
}
.navbar-brand{
 font-family:'Cookie', cursive;"
 font-color:#ffffff;
 font-size:23px;
}
</style>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand active" href="<c:url value="/"/>">Mobi<span class="naviaces"">aces</span></a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li ><a href="<c:url value="/home"/>"><span class="glyphicon glyphicon-home" style="margin-right:5px;"></span>Home</a></li>
        
        <li><a href="<c:url value="/viewall"/>">View All</a>
       
       <%--  <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">CATEGORIES<span class="caret"></span></a>
          <ul class="dropdown-menu" style="background-color:#000000">
          <c:forEach items="${navilist}" var="navi">
            <li><a href="<c:url value="/home/${navi.category}"/>">${navi.category}</a></li>
           </c:forEach>
          </ul>
          </li> --%>
         
        <li><a href="#">About Us</a></li>
        <li><a href="<c:url value="/angular"/>">Angular</a></li>
       	 <li><a href="<c:url value="/contactus"/>">Contact Us</a></li> 
      </ul>
      <ul class="nav navbar-nav navbar-right">
      <security:authorize access="hasRole('ROLE_ADMIN')">
		<li><a href="product" class="btn btn-xs">product</a></li>
		</security:authorize>
		<security:authorize access="hasRole('ROLE_USER')">		
      	<li><a href="<c:url value="/viewcart"/>"><span class="glyphicon glyphicon-lawnmover"></span> Cart</a></li>
      	</security:authorize>
      	<c:if test="${pageContext.request.userPrincipal.name!=null}">
      	 <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">${pageContext.request.userPrincipal.name}<span class="caret"></span></a>
          <ul class="dropdown-menu" style="background-color:#000000">
            <li><a href="<c:url value="/yourorders"/>">Your Orders</a></li>
            <li><a href="<c:url value="/logout"/>"><span class="glyphicon glyphicon-log-out"></span>Logout</a></li>
          </ul>
          </li>
          </c:if>
      	<c:if test="${pageContext.request.userPrincipal.name == null}">
        <li><a href="<c:url value="/memberShip.obj"/>"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="<c:url value="/login"/>"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </c:if>
      </ul>
    </div>
  </div>
</nav>