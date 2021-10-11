<%@page import="logica.Espectaculo"%>
<%@page import="datatypes.DtUsuario"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="datatypes.DtEspectaculo"%>
<%@page import="interfaces.Fabrica"%>
<%@page import="interfaces.IControladorEspectaculo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="resources/index.css" rel="stylesheet"></link>
<title>Coronatickets</title>
<%@include file="header.jsp"%>
</head>

<body class="headerSpace">
	<form class="container p-6 my-6 bg-light text-dark"
		action="AltaFuncionEspectaculo" method="post">
		<h3>Alta Funcion de Espectaculo</h3>
		<div class="input-group mb-3">
			<span class="input-group-text" id="basic-addon3"> Espectaculos</span>
			<select class="form-control" name="nomEspectaculo">
				<%
				   ArrayList<Espectaculo> listEspectadores = (ArrayList<Espectaculo>) request.getAttribute("espectador");
				for(Espectaculo nomEspectador :listEspectadores){
				   if(nomEspectador.getArtista().equals("aRose")){
				%>
				<option><%=nomEspectador.getNombre()%></option>
				<%
				   }
				}
				%>
			</select>
		</div>

		<div class="input-group mb-3">
			<span class="input-group-text">Nombre</span> <input type="text"
				name="nomFuncion" class="form-control">
		</div>
		<div class="input-group mb-3">
			<span class="input-group-text">Fecha</span> <input type="date"
				name="fechaFuncion" class="form-control">
		</div>
		<div class="input-group mb-3">
			<span class="input-group-text">Hora</span> <input type="time"
				name="horaFuncion" class="form-control">
		</div>

		<div class="w1-container">
			<h5>Seleccionar Artistas:</h5>
			<%
			   ArrayList<String> listArtistas = (ArrayList<String>) request.getAttribute("usuario");
			for(String nickArtista :listArtistas){
			%>
			<input class="w1-check" type="checkbox" name="selArtista"
				value="<%=nickArtista%>"><label for="selArtista"><%=nickArtista%>
			</label>
			<%
			   }
			%>
		</div>

		<div class="input-group mb-3">
			<span class="input-group-text">Seleccionar imagen</span> <input
				type="file" name="horaFuncion" class="form-control">
		</div>

		<button class="btn btn-primary" type="submit">Agregar Funcion</button>
	</form>
	

</body>
</html>

<!-- <form action="Consultas" method="post">
		</form>
	 	 <div class="input-group mb-3">
			<span class="input-group-text" id="basic-addon3"> Espectaculos</span>
			<select class="form-control"
				aria-label="Example select with button addon">
				<option value="1">${espe}</option>
				<option value="2">${espe}</option>
				<option value="3">${espe}</option>
			</select>
		</div> -->

<!--
		<div class="input-group mb-3">
			<span class="input-group-text" id="basic-addon3"> Artistas</span> <select
				class="form-control">
					  // ArrayList<String> listArtistas = (ArrayList<String>) request.getAttribute("usuario");
				//for(String nickArtista :listArtistas){
				
		}				%>
			</select>
		</div>
-->