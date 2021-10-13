<%@page import="logica.Espectaculo"%>
<%@page import="java.util.ArrayList"%>
<%-- <%@page import="datatypes.DtUsuario"%> --%>
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
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link href="resources/index.css" rel="stylesheet"></link>

<title>Coronatickets</title>
<%@include file="header.jsp"%>
</head>
<body class="headerSpace">
	<form class="container p-5 my-5 bg-light text-dark"
		action="AltaFuncionEspectaculo" method="post" enctype="multipart/form-data">
		<h3>Alta Funcion de Espectaculo</h3>
		<div class="input-group mb-3">
			<span class="input-group-text" id="basic-addon3"> Seleccionar Espectaculo:</span>
			<select class="form-control" name="nomEspectaculo">
				<%
					ArrayList<Espectaculo> listEspectadores = (ArrayList<Espectaculo>) request.getAttribute("espectaculo");
				for (Espectaculo nomEspectador : listEspectadores) {
					if (nomEspectador.getArtista().equals("artAldrin")) {

				%>
				<option><%=nomEspectador.getNombre()%></option>
				<%
					}
				}
				%>
			</select>
		</div>

		<div class="input-group mb-3">
			<span class="input-group-text">Nombre:</span> <input type="text"
				name="nomFuncion" class="form-control">
		</div>
		<div class="input-group mb-3">
			<span class="input-group-text">Fecha:</span> <input type="date"
				name="fechaFuncion" class="form-control">
		</div>
		<div class="input-group mb-3">
			<span class="input-group-text">Hora:</span> <input type="time"
				name="horaFuncion" class="form-control">
		</div>

		<link
			href="https://unpkg.com/multiple-select@1.5.2/dist/multiple-select.min.css"
			rel="stylesheet">
		<link
			href="https://unpkg.com/multiple-select@1.5.2/dist/themes/bootstrap.min.css"
			rel="stylesheet">
		<script src="https://cdn.jsdelivr.net/npm/jquery/dist/jquery.min.js"></script>
		<script
			src="https://unpkg.com/multiple-select@1.5.2/dist/multiple-select.min.js"></script>

		<div class="input-group mb-3">
			<span class="input-group-text">Artistas invitados:</span> <select
				multiple="multiple" name="selArtista" class="form-control">
				<%
					ArrayList<String> listArtistas2 = (ArrayList<String>) request.getAttribute("usuario");
				for (String nickArtista : listArtistas2) {
				%>
				<option><%=nickArtista%></option>
				<%
					}
				%>
			</select>
		</div>

		<div class="input-group mb-3">
			<span class="input-group-text">Seleccionar imagen:</span> <input
				type="file" name="imagen" id="imagen" class="form-control">

		</div>
		<button class="btn btn-primary" type="submit">Registrar</button>
		<button class="btn btn-dark" type="submit">Cancelar</button>
	</form>
	

	<script>
	$(function() {
	    $('select').multipleSelect({
		selectAll : false
	    })
	})
    </script>

</body>
</html>
