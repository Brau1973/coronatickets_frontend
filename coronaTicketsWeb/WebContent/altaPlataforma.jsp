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

<title>Coronatickets</title>
<%@include file="header.jsp"%>
</head>
<body class="headerSpace">
	<h3>Alta Plataforma</h3>
	<form action="AltaPlataforma" method="post">
		<div class="form-group">
			<label for="exampleInputEmail1">Nombre</label> <input type="text"
				name="nomPla" class="form-control" id="exampleInputEmail1"
				aria-describedby="emailHelp" placeholder="Ingrese el nombre">
		</div>
		<div class="form-group">
			<label for="exampleInputPassword1">Descripcion</label> <input
				type="text" name="descPla" class="form-control"
				id="exampleInputPassword1"
				placeholder="Ingrese la descripcion">
		</div>
		<div class="form-group">
			<label for="exampleInputPassword1">Url</label> <input type="text"
				name="urlPla" class="form-control" id="exampleInputUrl1"
				placeholder="Ingrese Url de la plataforma">
		</div>
		<button type="submit" class="btn btn-primary">Agregar
			Plataforma</button>
	</form>

</body>
</html>