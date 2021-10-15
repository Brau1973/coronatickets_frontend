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

<link href="https://fonts.googleapis.com/css?"/>
<title>Consulta Espectaculo</title>
<%@include file="header.jsp"%>
</head>
<body>
	<br></br>
	<h1>Consulta de Espectaculo</h1>
	<form action="ConsultaEspectaculo" method="post" id="formConsultaEspectaculo">
		<input type="hidden" name="boton" id="boton" value="">

		<div class="input-group mb-3">
			<span class="input-group-text" id="basic-addon3"> Plataformas</span>
			<select class="form-control" name="nomPlataforma"
				onchange="procesar('botonPlataformas')" >
				<%
					HttpSession s = request.getSession();
				String plataformaSelected = (String)s.getAttribute("plataformaSelected");
				ArrayList<String> listPlataformas = (ArrayList<String>) s.getAttribute("allPlataformas");
				for (String nomPlataforma : listPlataformas) {
				%>
				<option <% if(plataformaSelected != null && plataformaSelected.equals(nomPlataforma)){%>selected="selected"<%} %>><%=nomPlataforma%></option>
				<%
				   }
				%>
			</select>
		</div>


		<div class="input-group mb-3">
			<span class="input-group-text" id="basic-addon3"> Espectaculos</span>
			<select class="form-control" name="nomEsp"
				onchange="procesar('botonEspectaculos')">
				<%
				String espectaculoSelected = (String)s.getAttribute("espectaculoSelected");
				   ArrayList<DtEspectaculo> listEspectaculos = (ArrayList<DtEspectaculo>) s.getAttribute("allEspectaculos");
				if(listEspectaculos != null){
				for (DtEspectaculo espectaculo : listEspectaculos) {
				%>
				<option <% if(espectaculoSelected != null && espectaculoSelected.equals(espectaculo.getNombre())){%>selected="selected"<%} %>><%=espectaculo.getNombre()%></option>
				<%
				   }
				}
				%>
			</select>
		</div>

		<table class="table table-striped">
		<thead>
			<tr>
				<th scope="col">Descripcion</th>
				<th scope="col">Duracion</th>
				<th scope="col">Espectadores Min</th>
				<th scope="col">Espectadores Max</th>
				<th scope="col">Costo</th>
				<th scope="col">Fecha Registro</th>
			</tr>
		</thead>
		<tbody>
		<%
		if(listEspectaculos != null){
			int i = 1;
			for (DtEspectaculo dte : listEspectaculos) {
				if(espectaculoSelected != null && espectaculoSelected.equals(dte.getNombre())){
			%>
			<tr>
				<td><%=dte.getDescripcion()%></td>
				<td><%=dte.getDuracion()%></td>
				<td><%=dte.getCantMin()%></td>
				<td><%=dte.getCantMax()%></td>
				<td><%=dte.getCosto()%></td>
				<td><%=dte.getRegistro()%></td>
			</tr>
			<%
				} 
				i++;
			}
		}
			%>
		</tbody>
	</table>
	
	<div class="input-group mb-3">
			<span class="input-group-text" id="basic-addon3"> Funciones</span>
				<%
				   ArrayList<DtFuncion> listFunciones = (ArrayList<DtFuncion>) s.getAttribute("funciones");
				
				%>
		</div>
		
	<table class="table table-striped">
		<thead>
			<tr>
				<th scope="col">#</th>
				<th scope="col">Nombre</th>
				<th scope="col">Fecha</th>
				<th scope="col">Hora Inicio</th>
				<th scope="col">Fecha Registro</th>
				<th scope="col">Artistas</th>
			</tr>
		</thead>
		<tbody>
		<%
				int j = 1;
				if(listFunciones != null){
					for (DtFuncion dtf : listFunciones) {
			%>
			<tr>
				<th scope="row"><%=j%></th>
				<td><%=dtf.getNombre()%></td>
				<td><%=dtf.getFecha()%></td>
				<td><%=dtf.getHoraInicio()%></td>
				<td><%=dtf.getRegistro()%></td>
				<td><%=dtf.getArtistas()%></td>
			</tr>
			<%
				j++;
				} 
				}
			%>
		</tbody>
	</table>
	
	<div class="input-group mb-3">
			<span class="input-group-text" id="basic-addon3"> Paquetes</span> 
				<%
				   ArrayList<DtPaqueteEspectaculo> listPaquetes = (ArrayList<DtPaqueteEspectaculo>) s.getAttribute("paquetes");
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
				if(listPaquetes != null){ 
					for (DtPaqueteEspectaculo dtp : listPaquetes) {
			%>
			<tr>
				<th scope="row"><%=k%></th>
				<td><%=dtp.getNombre()%></td>
				<td><%=dtp.getDescripcion()%></td>
				<td><%=dtp.getFechaInicio()%></td>
				<td><%=dtp.getFechaFin()%></td>
				<td><%=dtp.getFechaAlta()%></td>
				<td><%=dtp.getDescuento()%></td>
			</tr>
			<%
				k++;
				}
				}
			%>
		</tbody>
	</table>
	</form>
	
	<script type="text/javascript">
	function procesar(tipo) {
	    document.getElementById("boton").value = tipo;
	    document.getElementById("formConsultaEspectaculo").submit();
	}
    </script>

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
		
		
</body>
</html>