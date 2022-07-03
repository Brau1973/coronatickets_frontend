<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link href="resources/index.css" rel="stylesheet"></link>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
<title>Dejar de Seguir - Coronatickets</title>
<%@include file="header.jsp"%>
</head>
<body class="headerSpace">
	<h3>Dejar de Seguir Usuario</h3>
	
	<div class="row row-cols-1 row-cols-md-6 g-4">
	<%
    ArrayList<DtUsuario> listUsuarios = (ArrayList<DtUsuario>) request.getAttribute("usuariosSeguidos");
	for (DtUsuario usuario : listUsuarios) {
	%>
		<div class="col">
			<div class="card h-100" style="width: 12rem;">
				<img src="imagenes/Usuarios/<%=usuario.getImageName()%>"width=100 height="150" class="card-img-top" alt="...">
				<div class="card-body">
					<h3 class="card-title">
						<strong><%=usuario.getNickname()%></strong>
					</h3>
					<br />
					<form action="DejarDeSeguirUsuario" method="post">
						<button class="btn btn-primary" type="submit" name="nomUsuario"
							value="<%=usuario.getNickname()%>">Follow</button>
					</form>
				</div>
			</div>
		</div>
	<%}%>
	</div>
 <%@include file="footer.jsp"%>
</body>
</html>