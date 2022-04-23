<%@page import="publicadores.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link href="resources/index.css" rel="stylesheet"></link>
<title>Coronatickets - Consulta Funcion</title>
<%@include file="header.jsp"%>
</head>
<body class="headerSpace">
	<form class="container p-5 my-5 border"
		action="ConsultaFuncionEspectaculo" method="post"
		id="formConsultaEspectaculo">
		<input type=hidden name="boton" id="boton" value="">
		<h3>Consulta de Funcion de Espectaculo</h3>
		<div class="input-group mb-3">
			<span class="input-group-text" id="basic-addon3"> Plataformas</span>
			<select class="form-control" name="nomPlataforma"
				onchange="procesar('selPlataformas')"><option selected
					disabled>Seleccione Plataforma</option>
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
			<span class="input-group-text" id="basic-addon3"> Espectaculos</span>
			<select class="form-control" name="nomEspectaculo"
				onchange="procesar('selEspectaculo')">
				<option selected disabled>Seleccione Espectaculo</option>
				<%
				String espectaculoSelected = (String) s.getAttribute("espectaculoSelected");
				ArrayList<DtEspectaculo> listEspectaculos = (ArrayList<DtEspectaculo>) s.getAttribute("espectaculos");
				if (listEspectaculos != null) {
					for (DtEspectaculo nomEspectaculo : listEspectaculos) {
				%>
				<option
					<%if (espectaculoSelected != null && espectaculoSelected.equals(nomEspectaculo.getNombre())) {%>
					selected="selected" <%}%>><%=nomEspectaculo.getNombre()%></option>
				<%
				}
				}
				%>
			</select>
		</div>

		<div class="input-group mb-3">
			<span class="input-group-text" id="basic-addon3"> Funciones</span> <select
				class="form-control" name="nomFuncion"
				onchange="procesar('selFuncion')">
				<option selected disabled>Seleccione Funcion</option>
				<%
				ArrayList<DtFuncion> listFunciones = (ArrayList<DtFuncion>) request.getAttribute("funciones");
				if (request.getAttribute("funciones") != null) {
					for (DtFuncion nomFuncion : listFunciones) {
				%>
				<option><%=nomFuncion.getNombre()%></option>
				<%
				}
				}
				%>
			</select>
		</div>

	<p id="demo"></p>
	<script type="text/javascript">
		function procesar(tipo) {
			document.getElementById("boton").value = tipo;
			document.getElementById("formConsultaEspectaculo").submit();
			//  document.forms[7].submit();
		}
	</script>
	<br>
	<br>
	<%@include file="footer.jsp"%>
</body>
</html>