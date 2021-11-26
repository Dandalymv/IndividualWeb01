<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Galería</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link rel="stylesheet" href="/IndividualWeb01/views/css/estilos.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Rubik:wght@400;700&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
</head>
<body>
	<header>
		<h1>ICowork Chile</h1>
	</header>
<section>
		<nav class="navbar navbar-expand-lg navbar-light" style="background-color: #C11680;">
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
						<li class="nav-item"><a class="nav-link" href="RegistroOficina">Registrar
								Oficina</a></li>
						<li class="nav-item"><a class="nav-link" href="ListadoOficinas">Oficinas
								Disponibles</a></li>
						<li class="nav-item"><a class="nav-link" href="Contacto">Contacto</a>
						</li>
					</ul>

				</div>
			</div>
		</nav>
	</section>
	<main>
		<h2>Encuentra tu oficina ideal</h2>
		<div class="container">
			<img src="/IndividualWeb01/views/img/galery01.jpg" alt="Imagen 01"> <img
				src="/IndividualWeb01/views/img/galery02.jpg" alt="Imagen 02"> <img
				src="/IndividualWeb01/views/img/galery03.jpg" alt="Imagen 03"> <img
				src="/IndividualWeb01/views/img/galery04.jpg" alt="Imagen 04"> <img
				src="/IndividualWeb01/views/img/galery05.jpg" alt="Imagen 05"> <img
				src="/IndividualWeb01/views/img/galery06.jpg" alt="Imagen 06">
		</div>
	</main>
	</br>
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
</body>
</html>