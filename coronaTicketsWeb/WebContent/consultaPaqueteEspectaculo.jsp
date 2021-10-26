<%@page import="datatypes.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
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

<link href="https://fonts.googleapis.com/css?" />
<link href="resources/index.css" rel="stylesheet"></link>
<title>Consulta Espectaculo</title>
<%@include file="header.jsp"%>
</head>
<body class="headerSpace">
	<h1>Consulta de Paquete de Espectaculos</h1>
	<form action="ConsultaPaqueteEspectaculo" method="post"
		id="formConsultaPaqueteEspectaculo">
		<input type="hidden" name="boton" id="boton" value="">

		<div class="input-group mb-3">
			<span class="input-group-text" id="basic-addon3"> Paquetes</span> <select
				class="form-control" name="nomPaquete"
				onchange="procesar('selPaquete')">
				<option selected disabled>Seleccione Paquete</option>
				<%
					HttpSession s = request.getSession();
				String plataformaSelected = (String) s.getAttribute("paqueteSelected");
				ArrayList<DtPaqueteEspectaculo> listPaquetess = (ArrayList<DtPaqueteEspectaculo>) s.getAttribute("allPaquetes");
				for (DtPaqueteEspectaculo paquete : listPaquetess) {
				%>
				<option
					<%if (plataformaSelected != null && plataformaSelected.equals(paquete.getNombre())) {%>
					selected="selected" <%}%>><%=paquete.getNombre()%></option>
				<%
					}
				%>
			</select>
		</div>

		<div class="input-group mb-3">
			<span class="input-group-text" id="basic-addon3"> Paquetes</span>
			<%
				DtPaqueteEspectaculo listPaquetes = (DtPaqueteEspectaculo) s.getAttribute("paquetesEspec");
			%>
		</div>

		<table class="table table-striped">
			<thead>
				<tr>
					<th scope="col">#</th>
					<th scope="col">Nombre</th>
					<th scope="col">Descripcion</th>
					<th scope="col">Fecha Inicio</th>
					<th scope="col">Fecha Fin</th>
					<th scope="col">Fecha Alta</th>
					<th scope="col">Descuento</th>
				</tr>
			</thead>
			<tbody>
				<%
					int k = 1;
				if (listPaquetes != null) {
				%>
				<tr>
					<th scope="row"><%=k%></th>
					<td><%=listPaquetes.getNombre()%></td>
					<td><%=listPaquetes.getDescripcion()%></td>
					<td><%=listPaquetes.getFechaInicio()%></td>
					<td><%=listPaquetes.getFechaFin()%></td>
					<td><%=listPaquetes.getFechaAlta()%></td>
					<td><%=listPaquetes.getDescuento()%></td>
				</tr>
				<%
					k++;
				}
				//}
				%>
			</tbody>
		</table>
	</form>

	<script type="text/javascript">
	function procesar(tipo) {
	    document.getElementById("boton").value = tipo;
	    document.getElementById("formConsultaPaqueteEspectaculo").submit();
	}
    </script>

	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>

</body>
</html>