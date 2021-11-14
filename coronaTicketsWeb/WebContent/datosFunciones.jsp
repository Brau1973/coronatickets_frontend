<%@page import="publicadores.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<link href="resources/index.css" rel="stylesheet"></link>
<title>Consulta Funcion - Coronatickets</title>
<%@include file="header.jsp"%>
</head>
<body class="headerSpace container p-5 my-5 text-dark">
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
			<%if((String)request.getAttribute("mostrarFoto") != null){ %>
				<img src="data:image/jpg;base64,${mostrarFoto}" width="200"
					height="200" />
			<%}else{ %>
			<img src="imagenes/no_imagen.jpg" width="200"
					height="200" />
			<%} %>
			</div>
		</div>
	</div>
</body>
</html>