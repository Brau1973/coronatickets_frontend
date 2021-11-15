<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link href="resources/index.css" rel="stylesheet"></link>
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous" />
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>

<title>Coronatickets - Alta Plataforma</title>
<%@include file="header.jsp"%>
</head>
<body class="headerSpace">
	<form class="container p-5 my-5 border" action="AltaPlataforma"
		method="post">
		<h3>Alta Plataforma</h3>
		<div action="/action_page.php" class="was-validated">
			<div class="input-group mb-3">
				<span class="input-group-text">Nombre</span> <input type="text"
					value="${nomPla}" class="form-control" name="nomPla" required>
				<div class="valid-feedback"></div>
				<div class="invalid-feedback">Ingrese el nombre</div>
			</div>

			<div class="input-group mb-3">
				<span class="input-group-text">Descripcion</span> <input type="text"
					value="${descPla}" class="form-control" name="descPla" required>
				<div class="valid-feedback"></div>
				<div class="invalid-feedback">Ingrese la descripcion</div>
			</div>
			<div class="input-group mb-3">
				<span class="input-group-text">Url</span> <input type="text"
					value="${urlPla}" class="form-control" name="urlPla" required>
				<div class="valid-feedback"></div>
				<div class="invalid-feedback">Ingrese Url de la plataforma</div>
			</div>
		</div>
		<button type="submit" class="btn btn-primary">Agregar
			Plataforma</button>
		<button type="reset" class="btn btn-dark">Cancelar</button>
	</form>
	<%@include file="footer.jsp"%>
</body>
</html>