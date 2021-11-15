<%@page import="publicadores.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">

<link href="resources/index.css" rel="stylesheet"></link>
<link href="lib/css/bootstrap/bootstrap.css" rel="stylesheet">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js"></script>
<title>Consulta Funcion | Coronatickets</title>
<%@include file="header.jsp"%>
</head>
<body class="headerSpace">
	<div class="container" style="margin-top: 50px;">
		<ul id="myTab" class="nav nav-tabs" style="margin-bottom: 15px;">

			<li><a href="#home" data-toggle="tab">Funcion</a></li>
			<li><a href="#profile" data-toggle="tab">Artistas Invitados</a></li>
			<li><a href="#dropdown" data-toggle="tab">Informacion</a></li>
			
		</ul>
		<div id="myTabContent" class="tab-content">
			<div class="tab-pane fade in active" id="home">
				<div class="card" style="width: 400px">
					<%
					if ((String) request.getAttribute("mostrarFoto") != null) {
					%>
					<img src="data:image/jpg;base64,${mostrarFoto}" style="width: 100%" />
					<%
					} else {
					%>
					<img src="imagenes/no_imagen.jpg" style="width: 100%" />
					<%
					}
					%>
					<div class="card-body">
						<h4 class="card-title">Datos Funcion:</h4>
						<p class="card-text">${mostrarFunciones}</p>
					</div>
				</div>

			</div>

			<div class="tab-pane fade" id="profile">
				<div class="card text-dark bg-light mb-3" style="max-width: 30rem;">
					<div class="card-header">Artistas</div>
					<div class="card-body">
						<%
						ArrayList<String> listArtistasInv = (ArrayList<String>) request.getAttribute("mostrarArtistas");
						for (String artistas : listArtistasInv) {
						%>
						<p><%=artistas%></p>
						<%
						}
						%>
					</div>
				</div>
			</div>

			<div class="tab-pane fade" id="dropdown">
				<p>En mantenimiento.</p>
			</div>
		</div>
	</div>

	<script type="text/javascript" src="lib/js/jquery-1.10.1.min.js">
		
	</script>

	<!-- Bootstrap -->
	<script type="text/javascript" src="lib/js/bootstrap/bootstrap.js"></script>

	<!-- Bootstrap TabCollapse-->
	<script type="text/javascript" src="../bootstrap-tabcollapse.js"></script>



	<%@include file="footer.jsp"%>
</body>
</html>