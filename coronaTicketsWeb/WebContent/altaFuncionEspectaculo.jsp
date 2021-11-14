<%@page import="publicadores.Espectaculo"%>
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

<title>Coronatickets - Alta Funcion</title>
<%@include file="header.jsp"%>
</head>
<body class="headerSpace">
	<form class="container p-5 my-5 border" action="AltaFuncionEspectaculo"
		method="post" enctype="multipart/form-data">
		<h3>Alta Funcion de Espectaculo</h3>
		<div class="input-group mb-3">
			<span class="input-group-text" id="basic-addon3"> Espectaculo</span>
			<select class="form-control" name="nomEspectaculo">
	
				<%
				//cargo variables del formulario
				String nomFuncion = (String) request.getAttribute("nomFuncion");
				String fechaFuncion = (String) request.getAttribute("fechaFuncion");
				String horaFuncion = (String) request.getAttribute("horaFuncion");
				String nombreEspectaculoSelected = (String) request.getAttribute("nombreEspectaculoSelected");

				ArrayList<DtEspectaculo> listEspectadores = (ArrayList<DtEspectaculo>) session.getAttribute("espectaculo");
				if (listEspectadores != null) {
					for (DtEspectaculo nomEspectador : listEspectadores) {
				%>
				<%-- 				<option <% if(nombreEspectaculoSelected != null && nombreEspectaculoSelected.equals(nomEspectador)){%>selected="selected"<%} %>><%=nomEspectador.getNombre()%></option> --%>
				<option><%=nomEspectador.getNombre()%></option>
				<%
				}
				}
				%>
			</select>
		</div>
		<script type="text/javascript">
<%-- 	document.getElementById("hol").value = <%session.getAttribute("nomFuncion"); %> --%>
	</script>
		<div action="/action_page.php" class="was-validated">
			<div class="input-group mb-3">
				<span class="input-group-text">Nombre</span> <input type="text"
					value="${nomFuncion}" class="form-control" name="nomFuncion"
					required>
				<div class="valid-feedback"></div>
				<div class="invalid-feedback">Ingrese el nombre</div>
			</div>

			<div class="input-group mb-3">
				<span class="input-group-text">Fecha</span> <input type="date"
					value="${fechaFuncion}" name="fechaFuncion" class="form-control"
					required>
				<div class="valid-feedback"></div>
				<div class="invalid-feedback">Ingrese la fecha</div>
			</div>

			<div class="input-group mb-3">
				<span class="input-group-text">Hora</span> <input type="time"
					value="${horaFuncion}" name="horaFuncion" class="form-control"
					required>
				<div class="valid-feedback"></div>
				<div class="invalid-feedback">Ingrese hora inicio</div>
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
			<span class="input-group-text">Artistas invitados</span> <select
				multiple="multiple" name="selArtista" class="form-control">
		
				<%
				ArrayList<String> listArtistas = (ArrayList<String>) session.getAttribute("usuario");
				if (listArtistas != null) {
					for (String nickArtista : listArtistas) {
				%>
				<option><%=nickArtista%></option>
				<%
				}
				}
				%>
			</select>
		</div>

		<div class="input-group mb-3">
			<input type="file" name="imagen" id="imagen" class="form-control">
		</div>
		<button class="btn btn-primary" type="submit">Agregar Funcion</button>
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