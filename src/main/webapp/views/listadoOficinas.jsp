<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@ page import="model.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Listado Oficinas</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Anton&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
	integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"
	crossorigin="anonymous">
<link rel="stylesheet" href="/IndividualWeb01/css/estilos.css">
</head>
<body>
	<header>
		<h1>ICowork Chile</h1>
	</header>
	<section>
		<nav class="navbar navbar-expand-lg navbar-light"
			style="background-color: #C11680;">
			<div class="container-fluid">
				<a class="navbar-brand" href="Inicio">Smart Places</a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarText"
					aria-controls="navbarText" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarText">
					<ul class="navbar-nav me-auto mb-2 mb-lg-0">
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="Inicio">Inicio</a></li>
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="Login">Ingresar</a></li>
						<li class="nav-item"><a class="nav-link" href="About">Sobre
								Nosotros</a></li>
						<li class="nav-item"><a class="nav-link" href="Galeria">Galeria</a>
						</li>
						<li class="nav-item"><a class="nav-link"
							href="RegistroOficina">Registrar Oficina</a></li>
						<li class="nav-item"><a class="nav-link"
							href="ListadoOficinas">Oficinas Disponibles</a></li>
						<li class="nav-item"><a class="nav-link" href="Contacto">Contacto</a>
						</li>
					</ul>

				</div>
			</div>
		</nav>
	</section>
	<main>
		<h2>Listado de Oficinas</h2>
		<div class="container">
			<table class="table table-striped table-hover table-dark">
				<thead>
					<tr class="thead-light">
						<th>ID</th>
						<th>Nombre Oficina</th>
						<th>Dirección</th>
						<th>Comuna</th>
						<th>Región</th>
						<th>Teléfono</th>
						<th>Email</th>
						<th>Espacios Disponibles</th>
						<th>Horario</th>
						<th>Valor diario</th>
						<th>Eliminar/Actualizar</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="o" items="${offices}">
						<tr>
							<td><c:out value="${o.getId()}"></c:out></td>
							<td><c:out value="${o.getNombreOficina()}"></c:out></td>
							<td><c:out value="${o.getDireccion()}"></c:out></td>
							<td><c:out value="${o.getComuna()}"></c:out></td>
							<td><c:out value="${o.getRegion()}"></c:out></td>
							<td><c:out value="${o.getTelefono()}"></c:out></td>
							<td><c:out value="${o.getCorreo()}"></c:out></td>
							<td><c:out value="${o.getEspacios()}"></c:out></td>
							<td><c:out value="${o.getHorario()}"></c:out></td>
							<td><c:out value="${o.getValorDiario()}"></c:out></td>
							<td>
								<div class="row g-3">
	                                <form class="col-md-4" action="EliminarOficina" method="post">
									<button title="Eliminar" action="EliminarUsuario" method="post" type="submit" 
									class="btn btn-danger" name="id" value="${o.getId()}"><i class="fas fa-backspace"></i></button>
									</form>	
									
									<form class="col-md-4" action="ActualizarOficina" method="post">
									<input name="tipoUsuario" value="administrativo" style="display: none;">
									<button title="Actualizar" type="submit" 
									class="btn btn-warning" name="id" value="${o.getId()}"><i class="fas fa-edit"></i>
									</button>
									</form>	
								</div>
                              </td>
						</tr>
					</c:forEach>


				</tbody>
			</table>
		</div>
	</main>
	<br>
	<footer>
		<div class="rrss">
			<ul>
				<li><a href="#" class="facebook"> <i
						class="fab fa-facebook-f"></i></a></li>
				<li><a href="#" class="instagram"> <i
						class="fab fa-instagram"></i></a></li>
				<li><a href="#" class="youtube"> <i class="fab fa-youtube"></i></a></li>
				<li><a href="#" class="twitter"> <i class="fab fa-twitter"></i></a></li>
			</ul>
		</div>
	</footer>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
</body>
</html>