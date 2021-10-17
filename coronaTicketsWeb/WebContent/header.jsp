<%@page import="datatypes.DtUsuario"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="resources/index.css"></script>
<title>Coronatickets</title>
</head>
<body>
	<nav class="navbar navbar-expand-sm navbar-dark bg-dark fixed-top">
	<div class="container-md">
		<a class="navbar-brand" href="index.jsp">CoronaTickets</a>
	</div>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item"><a class="nav-link" href="index.jsp">Home</a></li>
			<li class="nav-item"><a class="nav-link" href="index.jsp">Usuarios</a></li>
			<li class="nav-item"><a class="nav-link"
				href="consultaFuncionEspectaculo.jsp">Paquetes</a></li>
			<li class="nav-item"><a class="nav-link"
				href="paginaParaCopiar.jsp">Espectaculos</a></li>
			<li class="nav-item"><a class="nav-link" href="index.jsp">Funciones</a></li>
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
				role="button" data-toggle="dropdown" aria-expanded="true">Plataformas</a>
				<div class="dropdown-menu">

					<form action="Consultas" method="post">
						<button class="dropdown-item" type="submit">Alta Funcion
							de Espectaculo</button>
					</form>

					<div class="dropdown-divider"></div>

					<form action="ConsultaPlataforma" method="post">
						<button class="dropdown-item" name="btnOpcion"
							value="opConsultaFuncionEsp" type="submit">Consulta
							Funcion Espectaculo</button>
					</form>

				</div></li>
		</ul>
	</div>

	<div>
		<form class="form-inline" action="login.jsp">
			<button class="btn btn-success" type="submit">Login</button>
			<button class="btn btn-success" type="submit" style="display: none">Logout</button>
		</form>
	</div>
	</nav>

</body>
</html>
<!-- 
<a class="navbar-brand" href="#"> <img src="imagenes/logo.png"
		alt="CoronaTickets" style="width: 90px;">
	</a>
 -->