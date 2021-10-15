<%@page import="logica.Artista"%>
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
<body class="container p-5 my-5 text-dark">
	<div class="card text-dark bg-light mb-3" style="max-width: 30rem;">
		<div class="card-header">Datos de la Función</div>
		<div class="card-body">${mostrarFunciones}</div>
	</div>

	<div class="card text-dark bg-light mb-3" style="max-width: 30rem;">
		<div class="card-header">Artistas invitados</div>
		<div class="card-body">
			<%
				ArrayList<String> listArtistasInv = (ArrayList<String>) request.getAttribute("mostrarArtistas");
			for(String artistas :listArtistasInv){
			%>
			<p><%=artistas%></p>
			<%
				}
			%>
		</div>
	</div>

	<div class="card text-dark bg-light mb-3" style="max-width: 30rem;">
		<div class="card-header">Foto Funcion</div>
		<div class="card-body">
			<div>
				<%
					//	String foto = (String) request.getAttribute("mostrarFoto");
				%>
				<img src="data:image/jpg;base64,${mostrarFoto}" width="200"
					height="200" />
			</div>
		</div>
	</div>
</body>
</html>