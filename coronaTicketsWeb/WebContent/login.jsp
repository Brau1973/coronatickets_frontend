<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link href="resources/index.css" rel="stylesheet"></link>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<!-- <script -->
<!-- 	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" -->
<!-- 	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" -->
<!-- 	crossorigin="anonymous"></script> -->

<title>Coronatickets</title>
<%@include file="header.jsp"%>
</head>
<body class="headerSpace">
	<form action="Login" method="post">
		<div
			class="card col-sm-12 col-md-7 col-lg-6 start-50 translate-middle-x">
			<div class="card-header text-center">Login</div>
			<div class="card-body">
				<div class="form-floating mb-3">
					<input type="text" class="form-control" id="floatingInput"
						name="user_name" placeholder="Usuario"> <label
						for="floatingInput">Usuario</label>
				</div>
				<div class="form-floating">
					<input type="password" class="form-control" id="floatingPassword"
						name="user_pass" placeholder="Contraseña"> <label
						for="floatingPassword">Contraseña</label>
				</div>
				<button type="submit" class="btn btn-primary">Login</button>
			</div>
		</div>
	</form>
</body>
</html>
