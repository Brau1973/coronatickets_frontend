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
<body>
	<div id="carouselExampleCaptions" class="carousel slide carousel-fade"
		data-bs-ride="carousel">
		<!-- $carousel-control-transition:        opacity .2s ease; -->
		<%
			HttpSession s = request.getSession();
			ArrayList<DtPlataforma> listPlataformas = (ArrayList<DtPlataforma>) s.getAttribute("allPlataformas");
		%>
		<!-- BOTONES DE LAS SLIDES  -->
		<div class="carousel-indicators">
			<% 
				int contador = 0;
				for (DtPlataforma plataforma : listPlataformas){
			%>
					<button type="button" data-bs-target="#carouselExampleCaptions"
						data-bs-slide-to="<%=contador%>" aria-label="Slide <%=contador+1%>"
						<%if(contador == 0){%>
							class="active" aria-current="true"> </button>
						<%}else{%>
							></button>
						<%}%>
			<% 
				contador++;
				}
			%>
		</div>
		
		<!-- SLIDES  -->
		<div class="carousel-inner">
			<% 
				int contadorSlides = 0;
				for (DtPlataforma plataforma : listPlataformas){
				if(contadorSlides++ == 0){%>
					<div class="carousel-item active">
				<%}else{%>
					<div class="carousel-item">
				<%}%>
			%>
						<img src="imagenes/<%=plataforma.getImageName()%>" class="d-block w-100" width=100 height="750" alt="...">
						<div class="carousel-caption d-none d-md-block">
							<h5><%=plataforma.getNombre()%></h5>
							<p><%=plataforma.getDescripcion()%></p>
							<p><%=plataforma.getUrl()%></p>
						</div>
					</div>
			<% 
				contadorSlides++;
				}
			%>
		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>


	<%@include file="footer.jsp"%>
</body>
</html>