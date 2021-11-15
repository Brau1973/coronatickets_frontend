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
<title>Dejar de Seguir | Coronatickets</title>
<%@include file="header.jsp"%>
</head>
<body class="headerSpace">
	<form action="DejarDeSeguirUsuario" method="post">
	<h3>Dejar de Seguir Usuario</h3>
		<input type="hidden" name="boton" id="boton" value="">
		<div class="input-group mb-3">
			<span class="input-group-text" id="basic-addon3"> Usuarios</span>
			<select class="form-control" name="nomUsuario">
				<%
				   ArrayList<String> listUsuarios = (ArrayList<String>) request.getAttribute("usuariosSeguidos");
				for (String nomUsuario : listUsuarios) {
				%>
				<option><%=nomUsuario%></option>
				<%
				   }
				%>
			</select>
		</div>
		<button type="reset" class="btn btn-dark">Cancelar</button>
		<button type="submit" class="btn btn-primary">Confirmar</button>
	</form>
 <%@include file="footer.jsp"%>
</body>
</html>