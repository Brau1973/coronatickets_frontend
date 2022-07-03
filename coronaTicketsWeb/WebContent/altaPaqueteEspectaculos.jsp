<%@page import="publicadores.DtUsuario"%>
<%@page import="publicadores.DtEspectaculo"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link href="resources/index.css" rel="stylesheet"></link>

<title>Coronatickets - Alta Paquete Espectaculo</title>
<%@include file="header.jsp"%>
</head>

<body class="headerSpace">
	<form class="container p-5 my-5 border" action="AltaPaqueteEspectaculo"
		method="post">
		<input type="hidden" name="boton" id="boton" value="">
		<h3>Alta Paquete de Espectaculos</h3>

		<div class="input-group mb-3">
			<span class="input-group-text">Nombre</span> <input type="text"
				value="${nomPaquete}" class="form-control" name="nomPaquete"
				placeholder="Ingrese un nombre para el paquete" required>
			<div class="valid-feedback"></div>
			<div class="invalid-feedback">Ingrese el nombre</div>
		</div>

		<div class="input-group mb-3">
			<span class="input-group-text">Descripcion</span> <input type="text"
				value="${descripcionPaquete}" class="form-control"
				name="descripcionPaquete" required>
			<div class="valid-feedback"></div>
			<div class="invalid-feedback">Ingrese descripcion</div>
		</div>

		<div class="input-group mb-3">
			<span class="input-group-text">Fecha Inicio</span> <input type="date"
				value="${fechaInicioPaquete}" name="fechaInicioPaquete"
				class="form-control" required>
			<div class="valid-feedback"></div>
			<div class="invalid-feedback">Ingrese la fecha inicio</div>
		</div>

		<div class="input-group mb-3">
			<span class="input-group-text">Fecha Fin</span> <input type="date"
				value="${fechaFinPaquete}" name="fechaFinPaquete"
				class="form-control" required>
			<div class="valid-feedback"></div>
			<div class="invalid-feedback">Ingrese la fecha fin</div>
		</div>

		<div class="input-group mb-3">
			<span class="input-group-text">Descuento</span> <input type="text"
				value="${descuentoPaquete}" class="form-control"
				name="descuentoPaquete" required>
			<div class="valid-feedback"></div>
			<div class="invalid-feedback">Ingrese el nombre</div>
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

		<button class="btn btn-primary" type="submit">Agregar Paquete</button>
		<button class="btn btn-dark" type="reset">Cancelar</button>
	</form>
	<%@include file="footer.jsp"%>
</body>
</html>