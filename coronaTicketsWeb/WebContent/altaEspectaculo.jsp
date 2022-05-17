<%@page import="publicadores.DtUsuario"%>
<%@page import="publicadores.DtEspectaculo"%>
<%@page import="publicadores.DtPlataforma"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
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

<link href="resources/index.css" rel="stylesheet"></link>
<title>Coronatickets - Alta Espectaculo</title>
<%@include file="header.jsp"%>
</head>
<body class="headerSpace">
		<form class="container p-5 my-5 border"
		action="AltaEspectaculo" method="post" id="formAltaEspectaculo" enctype="multipart/form-data">
		<input type="hidden" name="boton" id="boton" value="">
		<h3>Alta Espectaculo</h3>
		<div class="input-group mb-3">
			<span class="input-group-text" id="basic-addon3"> Plataformas</span>
			<select class="form-control" name="nomPlataforma">
				<%
				HttpSession s = request.getSession();
				String plataformaSelected = (String) s.getAttribute("plataformaSelected");
				ArrayList<String> listPlataformas = (ArrayList<String>) s.getAttribute("allPlataformas");
				for (String nomPlataforma : listPlataformas) {
				%>
				<option
					<%if (plataformaSelected != null && plataformaSelected.equals(nomPlataforma)) {%>
					selected="selected" <%}%>><%=nomPlataforma%></option>
				<%
				}
				%>
			</select>
		</div>

			<div class="input-group mb-3">
				<span class="input-group-text">Nombre</span> <input type="text"
					value="${nombreEspectaculo}" class="form-control" name="nomEspectaculo"
					placeholder="Ingrese un nombre para el espectaculo" required>
				<div class="valid-feedback"></div>
				<div class="invalid-feedback">Ingrese el nombre</div>
			</div>

			
		<div class="form-group">
			<label for="descripcionEspectaculo">Descripcion</label> <input
				value="${descripcionEspectaculo}" type="text" name="descEspectaculo"
				class="form-control" id="descripcionEspectaculo"
				placeholder="Ingrese una descripcion para el espectaculo" required>
		</div>
		<div class="form-group">
			<label for="duracionEspectaculo">Duracion</label> <input type="text"
				value="${duracionEspectaculo}" name="durEspectaculo"
				class="form-control" id="duracionEspectaculo"
				placeholder="Ingrese la duracion del espectaculo" required>
		</div>
		<!-- cant espectadores -->
		<div class="form-group">
			<label for="quantity">Espectadores mínimos:</label> <input
				value="${espectadoresMinEspectaculo}" type="number" id="quantity"
				name="espectadoresMin" min="1" max="1000000" style="width: 100px"
				required>
		</div>
		<div class="form-group">
			<label for="quantity">Espectadores máximos:</label> <input
				value="${espectadoresMaxEspectaculo}" type="number" id="quantity"
				name="espectadoresMax" min="1" max="1000000" style="width: 100px"
				required>
		</div>
		<!-- cant espectadores -->
		<div class="form-group">
			<label for="urlEspectaculo">URL</label> <input type="text"
				value="${urlEspectaculo}" name="urlEspectaculo" class="form-control"
				id="urlEspectaculo" placeholder="Ingrese la URL del espectaculo"
				required>
		</div>
		<div class="form-group">
			<label for="exampleInputPassword1">Costo</label> <input type="number"
				value="${costoEspectaculo}" name="costoEspectaculo"
				class="form-control" id="exampleInputPassword1"
				placeholder="Ingrese el costo del espectaculo" required>
		</div>

		<div class="input-group mb-3">
			<input type="file" name="imagenEspectaculo" id="imagenEspectaculo" class="form-control" value="null">
		</div>
		<!-- fecha de alta -->
		<!-- se da de alta el espectaculo en la fecha actual-->
		<!-- fecha de alta -->
		<button type="submit" class="btn btn-primary">Confirmar</button>
		<button type="reset" class="btn btn-dark">Cancelar</button>
	</form>

	<%@include file="footer.jsp"%>
</body>
</html>