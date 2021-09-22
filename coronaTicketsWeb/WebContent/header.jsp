<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<title>Coronatickets</title>
</head>
<body>
	<nav class="navbar navbar-expand-sm navbar-dark bg-dark fixed-top">
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item"><a class="nav-link" href="index.jsp">Home</a></li>
			<li class="nav-item"><a class="nav-link" href="agregarSocio.jsp">Usuarios</a></li>
			<li class="nav-item"><a class="nav-link" href="agregarClase.jsp">Plataformas</a></li>
			<li class="nav-item"><a class="nav-link"href="gestionInscripcion.jsp">Espectaculos</a></li>
			<li class="nav-item"><a class="nav-link" href="consultas.jsp">Funciones</a></li>
		</ul>
	</div>
	<div>
	<form class="form-inline" action="login.jsp">
		<button class="btn btn-success" type="submit">Login</button>
		<button class="btn btn-success" type="submit" style="display:none">Logout</button>
	</form>
	</div>
	</nav>
</body>
</html>
