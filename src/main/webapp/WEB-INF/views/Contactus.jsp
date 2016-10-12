<%@include file="header.jsp"%>
Contact Us
<%@include file="Header2.jsp"%>
<body>
	<%@include file="Navigaton.jsp"%>
	<div class="container">
	<div class="row">
		<div class="col-xs-9"
			style="overflow: hidden; width: 100%; height: 500px; resize: none; max-width: 100%;">
			<div id="my-map-canvas"
				style="height: 100%; width: 100%; max-width: 100%;">
				<iframe style="height: 100%; width: 100%; border: 0;"
					frameborder="0"
					src="https://www.google.com/maps/embed/v1/place?q=madhuravoyal+chennai&key=AIzaSyAN0om9mFmy1QN6Wf54tXAowK4eT0ZUPrU"></iframe>
			</div>
			<a class="google-map-code" rel="nofollow"
				href="http://www.szablonypremium.pl" id="authorize-maps-data"></a>
			<style>
#my-map-canvas .map-generator {
	max-width: 100%;
	max-height: 100%;
	background: none;
}
.mobiee{
color:#000000;
font: normal 20px 'Cookie', cursive;
}
.acesee{
color:#ff4d4d;
font: normal 20px 'Cookie', cursive;
}
</style>
		</div>
		<script
			src="https://www.szablonypremium.pl/google-maps-authorization.js?id=7cdcf255-40c0-f784-5f49-e9e0e355fb07&c=google-map-code&u=1475573668"
			defer="defer" async="async"></script>

	
	<div class="col-xs-3">
	<span class="mobiee">mobi</span><span class="acesee">aces</span>
	<p><span>5,Rajiv Gandhi St<br>MSP Nagar<br>Madhuravoyal</span> Chennai-95, TamilNadu</p>
			
	</div>
	</div>
	</div>
<%@include file="Footerjsp.jsp"%>