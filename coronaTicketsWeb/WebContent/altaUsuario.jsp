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
<script type="text/javascript">
	function eventoTipoUsuario(e) {
		console.log(document.getElementById("tipoUsuario").value);

		if (document.getElementById("tipoUsuario").value == "Espectador") {
			document.getElementById("divDescripcion").style.display = "none";
			document.getElementById("divBiografia").style.display = "none";
			document.getElementById("divUrl").style.display = "none";
		} else {
			document.getElementById("divDescripcion").style.display = "block";
			document.getElementById("divBiografia").style.display = "block";
			document.getElementById("divUrl").style.display = "block";
		}
	}
	function compararContrasenias() {
		pass1 = document.getElementById("contrasenaUsuario").value;
		pass2 = document.getElementById("contrasena2Usuario").value;
		console.log("hola" + pass1 + pass2);
		if (pass1 != pass2) {

			document.getElementById("guardo").disabled = true;
			document.getElementById("contrasenaUsuario").style.borderColor = "red"
			document.getElementById("contrasena2Usuario").style.borderColor = "red"
			console.log("hola2");
		} else {
			document.getElementById("guardo").disabled = false;
			document.getElementById("contrasenaUsuario").style.borderColor = "gray"
			document.getElementById("contrasena2Usuario").style.borderColor = "gray"
			console.log("hola3");
		}
	}
</script>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>


<link href="resources/index.css" rel="stylesheet"></link>
<title>Coronatickets - Alta Usuario</title>
<%@include file="header.jsp"%>
</head>
<body class="headerSpace">
	<form class="container p-5 my-5 border" action="AltaUsuario"
		method="post" enctype="multipart/form-data">
		<h3>Alta Usuario</h3>
		<input type="hidden" name="boton" id="boton" value="">
		<div class="input-group mb-3">
			<%
			//cargo variables del formulario
			String tipoDeUsuario = (String) sesion.getAttribute("tipoDeUsuario");
			// 			String nickname = (String)sesion.getAttribute("nickname");
			// 			String nombre = (String)sesion.getAttribute("nombre");
			// 			String apellido = (String)sesion.getAttribute("apellido");
			// 			String contrasenia = (String)sesion.getAttribute("contrasenia");
			// 			String correo = (String)sesion.getAttribute("correo");
			// 			String fechaDeNacimiento = (String)sesion.getAttribute("fechaDeNacimiento");
			// 			String imagen = (String)sesion.getAttribute("imagen");
			// 			String descripcion = (String)sesion.getAttribute("descripcion");
			// 			String biografia = (String)sesion.getAttribute("biografia");
			// 			String url = (String)sesion.getAttribute("url");
			%>
			<div class="input-group mb-3">
				<label class="input-group-text" for="tipoUsuario">Tipo de
					Usuario</label>
			</div>
			<select class="tipoUsuario" id="tipoUsuario" name="tipoUsuario"
				onchange="eventoTipoUsuario()" required>
				<option selected>Seleccione una tipo de Usuario</option>
				<option value="Artista"
					<%if (tipoDeUsuario != null && tipoDeUsuario.equals("Artista")) {%>
					selected="selected" <%}%>>Artista</option>
				<option value="Espectador"
					<%if (tipoDeUsuario != null && tipoDeUsuario.equals("Espectador")) {%>
					selected="selected" <%}%>>Espectador</option>
			</select>
		</div>
		<div class="form-group">
			<label for="nicknameUsuario">Nickname</label> <input type="text"
				name="nickUsuario" class="form-control" id="nicknameUsuario"
				value="${nickname}" placeholder="Ingrese el nickname del usuario"
				required>
		</div>

		<div class="form-group">
			<label for="nombreUsuario">Nombre</label> <input type="text"
				name="nomUsuario" class="form-control" id="nombreUsuario"
				value="${nombre}" placeholder="Ingrese el nombre del usuario"
				required>
		</div>
		<div class="form-group">
			<label for="apellidoUsuario">Apellido</label> <input type="text"
				name="lastnUsuario" class="form-control" id="apellidoUsuario"
				value="${apellido}" placeholder="Ingrese el apellido del usuario"
				required>
		</div>
		<div class="form-group">
			<label for="contrasenaUsuario">Contraseña</label> <input
				type="password" name="passUsuario" class="form-control"
				id="contrasenaUsuario" value="${contrasenia}"
				placeholder="Ingrese la contraseña del usuario" required>
		</div>
		<div class="form-group">
			<label for="contrasena2Usuario"></label> <input type="password"
				name="pass2Usuario" class="form-control" id="contrasena2Usuario"
				value="${contrasenia}" placeholder="Confirme la contraseña" required
				onkeyup="compararContrasenias()">
		</div>
		<div class="form-group">
			<label for="correoUsuario">Correo</label> <input type="text"
				name="emailUsuario" class="form-control" id="correoUsuario"
				value="${correo}" placeholder="Ingrese el correo del usuario"
				required>
		</div>
		<div class="input-group mb-3">
			<span class="input-group-text">Fecha de nacimiento</span> <input
				type="date" name="fechaUsuario" class="form-control"
				id="fechaNacUsuario" value="${fechaDeNacimiento}"
				placeholder="Ingrese la fecha de nacimiento del usuario" required>
		</div>
		<div class="input-group mb-3">
			<span class="input-group-text">Seleccione una imagen</span> <input
				type="file" name="imagen" id="imagen" class="form-control"
				value="${imagen}">
		</div>

		<div class="form-group" id="divDescripcion">
			<label for="descripcionUsuario">Descripcion</label> <input
				type="text" name="descUsuario" class="form-control"
				id="descripcionUsuario" value="${descripcion}"
				placeholder="Ingrese la descripcion del usuario">
		</div>
		<div class="form-group" id="divBiografia">
			<label for="biografiaUsuario">Biografia</label> <input type="text"
				name="bioUsuario" class="form-control" id="biografiaUsuario"
				value="${biografia}" placeholder="Ingrese la biografia del usuario">
		</div>
		<div class="form-group" id="divUrl">
			<label for="urlUsuario">Url</label> <input type="text"
				name="linkUsuario" class="form-control" id="urlUsuario"
				value="${url}" placeholder="Ingrese la url del usuario">
		</div>


		<button class="btn btn-primary" type="submit" id="guardo">Agregar
			Usuario</button>
		<button class="btn btn-dark" type="reset" id="cancelo">Cancelar</button>
	</form>
	<%@include file="footer.jsp"%>
</body>
</html>