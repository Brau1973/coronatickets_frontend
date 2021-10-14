<%@page import="datatypes.DtArtista"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="datatypes.DtUsuario"%>
<%@page import="datatypes.DtArtista"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
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
	<%
		HttpSession sesion = request.getSession();
	DtUsuario dtU = (DtUsuario) sesion.getAttribute("user");
	%>
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
			<%
				if (dtU instanceof DtArtista) {
			%>
			<li class="nav-item"><a class="nav-link" href="index.jsp">Espectaculos</a></li>
			<%
				}
			%>
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
					<form action="ConsultaFuncionEspectaculo" method="post">
						<button class="dropdown-item" type="submit">Consulta
							Funcion Espectaculo</button>
					</form>

				</div></li>
		</ul>
	</div>

	<div>
		<%
			if (dtU == null) {
			
		%>
		<form class="form-inline" action="login.jsp">
			<button class="btn btn-success" type="submit">Login</button>
		</form>
		<%
			} else {
		%>
<!-- 		<form class="form-inline" action="login.jsp"> -->
<!-- 			<button class="btn btn-success" type="submit">Login2</button> -->
<!-- 		</form> -->
		<form action="Login" method="get">
			<button class="btn btn-success" type="submit">Logout</button>
		</form>
		<%
			}
		%>
	</div>
	</nav>

</body>
</html>
<!-- 
<a class="navbar-brand" href="#"> <img src="imagenes/logo.png"
		alt="CoronaTickets" style="width: 90px;">
	</a>
 -->