<%@page import="datatypes.DtArtista"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="datatypes.DtUsuario"%>
<%@page import="datatypes.DtArtista"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="resources/index.css"></script>
<title>Coronatickets</title>
</head>
<body>
	<%
		HttpSession sesion = request.getSession();
	String mensaje = (String)request.getAttribute("message");
	DtUsuario dtU = (DtUsuario) sesion.getAttribute("user");
	String imageUser = (String) sesion.getAttribute("imgUser");
	%>
	<nav class="navbar navbar-expand-sm navbar-dark bg-dark fixed-top">
	<div class="container-md">
		<a class="navbar-brand" href="index.jsp">CoronaTickets</a>
	</div>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item"><a class="nav-link" href="index.jsp">Home</a></li>
			<li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" id="navbarDropdownUsuarios"
                        role="button" data-toggle="dropdown" aria-haspopup="true"
                        aria-expanded="false"> Usuarios </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                      <%if(dtU == null){ %>
                      <a class="dropdown-item" href="altaUsuario.jsp">Alta Usuario</a>
                      <%}else{ %>
                      <form action="GetUsuariosNoSeguidos" method="post">
						<button class="dropdown-item" type="submit">Seguir Usuario</button>
					  </form>
                      <div class="dropdown-divider"></div>
                      <form action="GetUsuariosSeguidos" method="post">
						<button class="dropdown-item" type="submit">Dejar de seguir Usuario</button>
					  </form>
					  <%} %>
                    </div>
              </li>
 
<!-- 			<li class="nav-item"><a class="nav-link" -->
<!-- 				href="consultaFuncionEspectaculo.jsp">Paquetes</a></li> -->
			<li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false"> Espectaculos </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
			          <%if(dtU instanceof DtArtista){ %>
			         	 <form action="Datos" method="post">
							<button class="dropdown-item" type="submit">Alta Espectaculo</button>
						</form>
					<div class="dropdown-divider"></div>
					<%} %>
					<form action="DatosConsulta" method="post">
						<button class="dropdown-item" type="submit" name="pageNavega" value="MenuConsultaEspectaculo">Consulta
							 Espectaculo</button>
					</form>
		        	</div>
      		</li>
<!-- 			<li class="nav-item"><a class="nav-link" href="index.jsp">Plataformas</a></li> -->
			
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
				role="button" data-toggle="dropdown" aria-expanded="false">Funciones</a>
				<div class="dropdown-menu">
					<%if(dtU instanceof DtArtista){ %>
					<form action="Consultas" method="post">
						<button class="dropdown-item" type="submit">Alta Funcion
							de Espectaculo</button>
					</form>
					<div class="dropdown-divider"></div>
					<%} %>

					<form action="ConsultaPlataforma" method="post">
						<button class="dropdown-item" name="btnOpcion"
							value="opConsultaFuncionEsp" type="submit">Consulta
							Funcion Espectaculo</button>
					</form>

				</div>
			</li>
			<%
				if (dtU != null) {
			
			%>
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
				role="button" data-toggle="dropdown" aria-expanded="true">
				<%
					if (imageUser != null && !imageUser.isEmpty()) {
				
				%>
					<img src="data:image/jpg;base64,${imgUser}" height="30px"/>
				<%}else{ %>
					<img src="imagenes/userImg.png" height="30px" >
				<%} %>
				<%=dtU.getNombre() %></a>
				
				<div class="dropdown-menu">
					<form action="Login" method="get">
		 				<button class="dropdown-item" type="submit">Cerrar sesion</button>
			 		</form>
<!-- 					<div class="dropdown-divider"></div> -->
<!-- 					<form action="ConsultaFuncionEspectaculo" method="post"> -->
<!-- 						<button class="dropdown-item" type="submit">Ver Perfil</button> -->
<!-- 					</form> -->

				</div>
			</li>
			<%} %>
		</ul>
	</div>

	<div>
		<%
			if (dtU == null) {
			
		%>
		<form class="form-inline" action="login.jsp">
			<button class="btn btn-success" type="submit">Login</button>
		</form>
		<%
			}
		%>
	</div>
	</nav>
	
	<!-- Toast -->
 	<%if(mensaje != null && !mensaje.isEmpty()){ %>
 	<script type="text/javascript">
		window.onload = function(){
		 	$( "#toast_message" ).removeClass( "hide" );
		 	$( "#toast_message" ).addClass( "show" );
		 	setTimeout(function() {
		 	 	$( "#toast_message" ).removeClass( "show" );
		 	 	$( "#toast_message" ).addClass( "hide" );
		 	}, 4000);
		}
 	</script>
	<div id="toast_message" class="toast hide posicionToast" role="alert"
		aria-live="assertive" aria-atomic="true">
		<div class="toast-body">${message}</div>
	</div>
	<%} else{%>
	<script type="text/javascript">
		window.onload = function(){
			$( "#toast_message" ).removeClass( "show" );
			$( "#toast_message" ).addClass( "hide" );
		}
 	</script>
	<%}%>

</body>
</html>
