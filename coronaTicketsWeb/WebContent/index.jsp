<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>

<script src="resources/index.css"></script>

<title>Coronatickets</title>
<%@include file="header.jsp"%>
</head>
<body>
	<br>
	<br>
	<p>
	<h1>Bienvenidos</h1>
	</p>

	<%
		String mensaje = (String) request.getAttribute("mensaje");
	// 	if (mensaje != null) {
	%>
	<div class="position-fixed bottom-0 end-0 p-3" style="z-index: 11">
		<div id="message-success" class="toast hide bg-success" role="alert"
			aria-live="assertive" aria-atomic="true">
			<div class="toast-body">
				<p>${mensaje}</p>
			</div>
		</div>
	</div>
	<script type="text/javascript">
// 		function(){
		$( "#message-success" ).removeClass( "hide" );
		$( "#message-success" ).addClass( "show" )
// 		setTimeout(function() {
// 			document.getElementById("#message-success").removeClass("show");
// 			document.getElementById("#message-success").addClass("hide");
// 		}, 5000)
// 		}
	</script>

	<%
		// 		}
	%>
</body>
</html>