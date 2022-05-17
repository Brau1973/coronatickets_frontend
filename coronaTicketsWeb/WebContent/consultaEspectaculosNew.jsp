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
<title>Coronatickets - Consulta Espectaculo New</title>
<%@include file="header.jsp"%>
</head>
<body class="headerSpace">
	<form class="container p-5 my-5 border"
		action="ConsultaEspectaculosNew" method="post"
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
				ArrayList<DtPlataforma> listPlataformas = (ArrayList<DtPlataforma>) s.getAttribute("allPlataformas");
				for (DtPlataforma plataforma : listPlataformas) {
				%>
				<option
					<%if (plataformaSelected != null && plataformaSelected.equals(plataforma.getNombre())) {%>
					selected="selected" <%}%>><%=plataforma.getNombre()%></option>
				<%
				}
				%>
			</select>
		</div>
		
		<%
			ArrayList<DtEspectaculo> listEspectaculos = (ArrayList<DtEspectaculo>) s.getAttribute("espectaculos");
			if (listEspectaculos != null) {
		%>
			<div class="row row-cols-1 row-cols-md-3 g-4">
				<%
				int i = 0;
				for (DtEspectaculo espec : listEspectaculos) {		
				%>
				  <div class="col">
				    <div class="card h-100">
				      <img src="imagenes/<%=espec.getImageName()%>" width=100 height="300" class="card-img-top" alt="...">
				      <div class="card-body">
				        <h3 class="card-title"><strong><%=espec.getNombre()%></strong></h3>
				        <p class="card-text"><%=espec.getDescripcion()%></p>
				        <p class="card-text">-Duracion: <%=espec.getDuracion()%></p>
				        <p class="card-text">-Cantidad maxima espectadores: <%=espec.getCantMax()%></p>
				        <p class="card-text">-Cantidad minima espectadores: <%=espec.getCantMin()%></p>
				        <p class="card-text">-Costo: <%=espec.getCosto()%></p>
				        <p class="card-text">-Url: <%=espec.getUrl()%></p>
				        <p class="card-text">-Organizador: <%=espec.getArtista()%></p>
				        <br/>
				      </div>
				    </div>
				  </div>
				<%
				i++;
				}
				%>
			</div>
			<%
			}
			%>
			
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