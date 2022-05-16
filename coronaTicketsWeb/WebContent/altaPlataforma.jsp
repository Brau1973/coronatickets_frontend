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

<title>Coronatickets - Alta Plataforma</title>
<%@include file="header.jsp"%>
</head>
<body class="headerSpace">
	<form class="container p-5 my-5 border" action="AltaPlataforma"
		method="post" enctype="multipart/form-data">
		<h3>Alta Plataforma</h3>
		<script type="text/javascript"></script>
		<div action="/action_page.php" class="was-validated">
			<div class="input-group mb-3">
				<span class="input-group-text">Nombre</span> <input type="text"
					value="${nomPla}" class="form-control" name="nomPla" required>
				<div class="valid-feedback"></div>
				<div class="invalid-feedback">Ingrese el nombre</div>
			</div>

			<div class="input-group mb-3">
				<span class="input-group-text">Descripcion</span> <input type="text"
					value="${descPla}" class="form-control" name="descPla" required>
				<div class="valid-feedback"></div>
				<div class="invalid-feedback">Ingrese la descripcion</div>
			</div>
			<div class="input-group mb-3">
				<span class="input-group-text">Url</span> <input type="text"
					value="${urlPla}" class="form-control" name="urlPla" required>
				<div class="valid-feedback"></div>
				<div class="invalid-feedback">Ingrese Url de la plataforma</div>
			</div>
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
			<input type="file" name="imagenPlataforma" id="imagenPlataforma" class="form-control" value="null">
		</div>
		
		<button class="btn btn-primary" type="submit">Agregar Plataforma</button>
		<button class="btn btn-dark" type="reset">Cancelar</button>
	</form>
	<script>
	$(function() {
	    $('select').multipleSelect({
		selectAll : false
	    })
	})
    </script>
	<%@include file="footer.jsp"%>
</body>
</html>