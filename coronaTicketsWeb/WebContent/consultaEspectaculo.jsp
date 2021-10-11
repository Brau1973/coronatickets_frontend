<%@page import="datatypes.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous" />

<link href="https://fonts.googleapis.com/css?"/>
<title>Consulta Espectaculo</title>
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
			<li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false"> Espectaculos </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
			          <a class="dropdown-item" href="altaEspectaculo.jsp">Alta Espectaculo</a>
			          <a class="dropdown-item" href="consultaEspectaculo.jsp">Consulta Espectaculo</a>
		        	</div>
      		</li>
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
		<form class="form-inline" action="login.jsp">
			<button class="btn btn-success" type="submit">Login</button>
			<button class="btn btn-success" type="submit" style="display: none">Logout</button>
		</form>
	</div>
	</nav>
	<br></br>
	<h1>Consulta de Espectaculo</h1>
	<form action="ConsultaEspectaculo" method="post">
		<input type="hidden" name="boton" id="boton" value="">

		<div class="input-group mb-3">
			<span class="input-group-text" id="basic-addon3"> Plataformas</span>
			<select class="form-control" name="nomPlataforma"
				onchange="procesar('btnPlataformas')" >
				<%
				   ArrayList<String> listPlataformas = (ArrayList<String>) request.getAttribute("plataformas");
				for (String nomPlataforma : listPlataformas) {
				%>
				<option><%=nomPlataforma%></option>
				<%
				   }
				%>
			</select>
		</div>


		<div class="input-group mb-3">
			<span class="input-group-text" id="basic-addon3"> Espectaculos</span>
			<select class="form-control" name="nomEspectaculos"
				onchange="procesar('btnEspectaculos')">
				<%
				   ArrayList<DtEspectaculo> listEspectaculos = (ArrayList<DtEspectaculo>) request.getAttribute("espectaculo");
				for (DtEspectaculo nomEspectaculo : listEspectaculos) {
				%>
				<option><%=nomEspectaculo.getNombre()%></option>
				<%
				   }
				%>
			</select>
		</div>

		<table class="table table-striped">
		<thead>
			<tr>
				<th scope="col">Descripcion</th>
				<th scope="col">Duracion</th>
				<th scope="col">Espectadores Min</th>
				<th scope="col">Espectadores Max</th>
				<th scope="col">Costo</th>
				<th scope="col">Fecha Registro</th>
			</tr>
		</thead>
		<tbody>
		<%/*
				int i = 1;
					for (DtEspectaculo dte : espectaculos) {
			*/%>
			<tr>
				<td><%//=dte.getDescripcion()%></td>
				<td><%//=dte.getDuracion()%></td>
				<td><%//=dte.getCantMin()%></td>
				<td><%//=dte.getCantMax()%></td>
				<td><%//=dte.getCosto()%></td>
				<td><%//=dte.getRegistro()%></td>
			</tr>
			<%/*
				}
			*/%>
		</tbody>
	</table>
	
	<div class="input-group mb-3">
			<span class="input-group-text" id="basic-addon3"> Funciones</span> <select
				class="form-control" name="nomFuncion"
				onchange="procesar('btnDatosFunciones')">
				<%
				   ArrayList<DtFuncion> listFunciones = (ArrayList<DtFuncion>) request.getAttribute("funciones");
				for (DtFuncion nomFuncion : listFunciones) {
				%>
				<option><%=nomFuncion.getNombre()%></option>
				<%
				   }
				%>
			</select>
		</div>
		
	<table class="table table-striped">
		<thead>
			<tr>
				<th scope="col">Fecha</th>
				<th scope="col">Hora Inicio</th>
				<th scope="col">Fecha Registro</th>
				<th scope="col">Artistas</th>
			</tr>
		</thead>
		<tbody>
		<%/*
				int i = 1;
					for (DtFuncion dtf : funciones) {
			*/%>
			<tr>
				<td><%//=dtf.getFecha()%></td>
				<td><%//=dtf.getHoraInicio()%></td>
				<td><%//=dtf.getRegistro()%></td>
				<td><%//=dtf.getArtistas()%></td>
			</tr>
			<%/*
				} 
			*/%>
		</tbody>
	</table>
	
	<div class="input-group mb-3">
			<span class="input-group-text" id="basic-addon3"> Paquetes</span> <select
				class="form-control" name="nomFuncion"
				onchange="procesar('btnDatosPaquetes')">
				<%
				   ArrayList<DtPaqueteEspectaculo> listPaquetes = (ArrayList<DtPaqueteEspectaculo>) request.getAttribute("paquetes");
				for (DtPaqueteEspectaculo nomPaquete : listPaquetes) {
				%>
				<option><%=nomPaquete.getNombre()%></option>
				<%
				   }
				%>
			</select>
		</div>
	
	<table class="table table-striped">
		<thead>
			<tr>
				<th scope="col">Descripcion</th>
				<th scope="col">Fecha Inicio</th>
				<th scope="col">Fecha Fin</th>
				<th scope="col">Fecha Alta</th>
				<th scope="col">Descuento</th>
			</tr>
		</thead>
		<tbody>
		<%/*
				int i = 1;
					for (DtPaqueteEspectaculo dtp : paquetes) {
			*/%>
			<tr>
				<td><%//=dtp.getDescripcion()%></td>
				<td><%//=dtp.getFechaInicio()%></td>
				<td><%//=dtp.getFechaFin()%></td>
				<td><%//=dtp.getFechaAlta()%></td>
				<td><%//=dtp.getDescuento()%></td>
			</tr>
			<%/*
				}
			*/%>
		</tbody>
	</table>
		<button type="submit" class="btn btn-primary">Confirmar</button>
	</form>
	
	<script type="text/javascript">
	function procesar(tipo) {
	    document.getElementById("boton").value = tipo;
	    document.forms[3].submit();
	}
    </script>

	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
		
		
</body>
</html>