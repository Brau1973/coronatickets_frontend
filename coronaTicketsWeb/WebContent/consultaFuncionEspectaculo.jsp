<%@page import="datatypes.*"%>
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
	<%
		String id = request.getParameter("nomPlataforma");
	%>

	<form class="container p-5 my-5 bg-light text-dark"
		action="ConsultaFuncionEspectaculo" method="post">
		<input type=hidden name="boton" id="boton" value="">
		<h3>Consulta de Funcion de Espectaculo</h3>
		<div class="input-group mb-3">
			<span class="input-group-text" id="basic-addon3"> Plataformas</span>
			<select class="form-control" name="nomPlataforma" id="mySelect"
				onclick="myFunction()">
				<%
					if (request.getAttribute("plataformas") != null) {
					ArrayList<String> listPlataformas = (ArrayList<String>) request.getAttribute("plataformas");
					for (String nomPlataforma : listPlataformas) {
				%>
				<option><%=nomPlataforma%></option>
				<%
					}
				} else {
				%>
				<option><%=id%></option>
				<%
					}
				%>
			</select>
		</div>


		<div class="input-group mb-3">
			<span class="input-group-text" id="basic-addon3"> Espectaculos</span>
			<select class="form-control" name="nomEspectaculo"
				onclick="procesar('selEspectaculo')">
				<%
					if (request.getAttribute("espectaculos") != null) {
					ArrayList<DtEspectaculo> listEspectaculos = (ArrayList<DtEspectaculo>) request.getAttribute("espectaculos");
					for (DtEspectaculo nomEspectaculo : listEspectaculos) {
				%>
				<option><%=nomEspectaculo.getNombre()%></option>
				<%
					}
				}
				%>
			</select>
		</div>

		<div class="input-group mb-3">
			<span class="input-group-text" id="basic-addon3"> Funciones</span> <select
				class="form-control" name="nomFuncion"
				onclick="procesar('selFuncion')">
				<%
					if (request.getAttribute("funciones") != null) {
					ArrayList<DtFuncion> listFunciones = (ArrayList<DtFuncion>) request.getAttribute("funciones");
					for (DtFuncion nomFuncion : listFunciones) {
				%>
				<option><%=nomFuncion.getNombre()%></option>
				<%
					}
				}
				%>
			</select>
		</div>
		<button class="btn btn-dark" name="btnOpcion"
			value="opConsultaFuncionEsp" type="submit"
			formaction="ConsultaPlataforma">Actualizar</button>
	</form>

	<p id="demo"></p>
	<script type="text/javascript">
	function procesar(tipo) {
	    document.getElementById("boton").value = tipo;
	    document.forms[7].submit();
	}
    </script>

	<script>
	function myFunction() {
	    var x = document.getElementById("mySelect").value;
	    document.getElementById("demo").innerHTML = "" + x;
	    document.forms[7].submit();
	}
    </script>


</body>
</html>