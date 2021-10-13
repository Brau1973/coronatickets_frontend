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

	<!-- <form class="container p-6 my-6 bg-light text-dark"
		action="ConsultaFuncionEspectaculo" method="post"
		onclick="myFunction()">-->
	<h3>Consulta de Funcion de Espectaculo</h3>
	<form action="ConsultaFuncionEspectaculo" method="post">
		<input type="hidden" name="boton" id="boton" value="">

		<div class="input-group mb-3">
			<span class="input-group-text" id="basic-addon3"> Plataformas</span>
			<select class="form-control" name="nomPlataforma"
				onchange="procesar('btnEspectaculos')" >
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


		<div class="input-group mb-3">
			<span class="input-group-text" id="basic-addon3"> Espectaculos</span>
			<select class="form-control" name="nomEspectaculos"
				onchange="procesar('btnFunciones')">
				<%
				   ArrayList<DtEspectaculo> listEspectadores = (ArrayList<DtEspectaculo>) request.getAttribute("espectador");
				for (DtEspectaculo nomEspectador : listEspectadores) {
				%>
				<option><%=nomEspectador.getNombre()%></option>
				<%
				   }
				%>
			</select>
		</div>


		<div class="input-group mb-3">
			<span class="input-group-text" id="basic-addon3"> Funciones</span> <select
				class="form-control" name="nomFuncion"
				onchange="procesar('btnDatosFunciones')">
				<%
				   ArrayList<DtFuncion> listFunciones = (ArrayList<DtFuncion>) request.getAttribute("funciones");
				for (DtFuncion nomFuncion : listFunciones) {
				%>
				<option><%=nomFuncion.getNombre()%></option>
				<%
				   }
				%>
			</select>
		</div>
	</form>

	<!--  <div id="demo"></div>-->
	<script type="text/javascript">
	function procesar(tipo) {
	    document.getElementById("boton").value = tipo;
	    document.forms[3].submit();
	}
    </script>

	<script>
	function myFunction() {
	    var x = document.getElementById("mySelect").value;
	    document.getElementById("demo").innerHTML = "" + x;
	}
    </script>

</body>
</html>