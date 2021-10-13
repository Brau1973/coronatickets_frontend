<%@page import="logica.Espectaculo"%>
<%@page import="logica.Plataforma"%>
<%@page import="datatypes.DtUsuario"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="datatypes.DtEspectaculo"%>
<%@page import="datatypes.DtPlataforma"%>
<%@page import="interfaces.Fabrica"%>
<%@page import="interfaces.IControladorEspectaculo"%>
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

<title>Alta Espectaculo</title>
<%@include file="header.jsp"%>
</head>
<body>
	<br></br> 
	<form action="AltaEspectaculo" method="post">
		<input type="hidden" name="boton" id="boton" value="">
		<div class="input-group mb-3">
			<span class="input-group-text" id="basic-addon3"> Plataformas</span>
			<select class="form-control" name="nomPlataforma">
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
		<div class="form-group">
			<label for="nombreEspectaculo">Nombre</label> <input type="text"
				name="nomEspectaculo" class="form-control" id="nombreEspectaculo"
				placeholder="Ingrese un nombre para el espectaculo" required>
		</div>
		<div class="form-group">
			<label for="descripcionEspectaculo">Descripcion</label> <input
				type="text" name="descEspectaculo" class="form-control"
				id="descripcionEspectaculo"
				placeholder="Ingrese una descripcion para el espectaculo" required>
		</div>
		<div class="form-group">
			<label for="duracionEspectaculo">Duracion</label> <input type="text"
				name="durEspectaculo" class="form-control" id="duracionEspectaculo"
				placeholder="Ingrese la duracion del espectaculo" required>
		</div>
		<!-- cant espectadores -->
		<div class="form-group">
			<label for="quantity">Espectadores mínimos:</label> <input
				type="number" id="quantity" name="espectadoresMin" min="1"
				max="100000" style="width: 100px" required>
		</div>
		<div class="form-group">
			<label for="quantity">Espectadores máximos:</label> <input
				type="number" id="quantity" name="espectadoresMax" min="1"
				max="100000" style="width: 100px" required>
		</div>
		<!-- cant espectadores -->
		<div class="form-group">
			<label for="urlEspectaculo">URL</label> <input type="text"
				name="urlEspectaculo" class="form-control" id="urlEspectaculo"
				placeholder="Ingrese la URL del espectaculo" required>
		</div>
		<div class="form-group">
			<label for="exampleInputPassword1">Costo</label> <input type="number"
				name="costoEspectaculo" class="form-control"
				id="exampleInputPassword1"
				placeholder="Ingrese el costo del espectaculo" required>
		</div>
		<div>
			<label class="form-group" for="customFile">Seleccionar imagen</label>
			<input type="file" style="width: 317px" id="fileInput" />
		</div>
		<!-- fecha de alta -->
		<!-- se da de alta el espectaculo en la fecha actual-->
		<!-- fecha de alta -->
		<button type="reset" class="btn btn-primary">Cancelar</button>
		<button type="submit" class="btn btn-primary">Confirmar</button>
	</form>

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
	<!-- <script type="text/javascript">
		function procesar(tipo) {
			document.getElementById("boton").value = tipo;
			document.forms[0].submit();
		}
	</script> -->


</body>
</html>