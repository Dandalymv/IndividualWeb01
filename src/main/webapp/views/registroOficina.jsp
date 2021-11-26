<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Registro Oficina</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Rubik:wght@400;700&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
	integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"
	crossorigin="anonymous">
<link rel="stylesheet" href="/IndividualWeb01/views/css/estilos.css">
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
		<h2>Añadir oficina</h2>
		<div class="container">
			<div class="d-flex justify-content-center h-100">
				<div class="card">
					<div class="card-header">
						<h3>Ingresar Nueva Oficina</h3>

					</div>
					<div class="card-body">
						<form action="RegistroOficina" method="post">
							<div class="input-group form-group">
								<div class="input-group-prepend">
									<span class="input-group-text"><i
										class="fas fa-id-badge"></i></span>
								</div>
								<input type="text" class="form-control"
									placeholder="Nombre Oficina" name="nombreOficina">

							</div>
							<div class="input-group form-group">
								<div class="input-group-prepend">
									<span class="input-group-text"><i
										class="fas fa-map-marked-alt"></i></span>
								</div>
								<input type="text" class="form-control" placeholder="Dirección"
									name="direccion">

							</div>
							<div class="input-group form-group">
								<div class="input-group-prepend">
									<span class="input-group-text"><i
										class="fas fa-map-marked-alt"></i></span>
								</div>
								<input type="text" class="form-control" placeholder="Comuna"
									name="comuna">

							</div>
							<div class="input-group form-group">
								<div class="input-group-prepend">
									<span class="input-group-text"><i
										class="fas fa-map-marked-alt"></i></span>
								</div>
								<input type="text" class="form-control" placeholder="Región"
									name="region">

							</div>
							<div class="input-group form-group">
								<div class="input-group-prepend">
									<span class="input-group-text"><i class="fas fa-phone"></i></span>
								</div>
								<input type="text" class="form-control" placeholder="Teléfono"
									name="telefono">

							</div>
							<div class="input-group form-group">
								<div class="input-group-prepend">
									<span class="input-group-text"><i
										class="fas fa-envelope"></i></span>
								</div>
								<input type="text" class="form-control"
									placeholder="Correo electrónico" name="correo">

							</div>
							<div class="input-group form-group">
								<div class="input-group-prepend">
									<span class="input-group-text"><i
										class="fas fa-user-plus"></i></span>
								</div>
								<input type="text" class="form-control"
									placeholder="Espacios disponibles" name="espacios">

							</div>
							<div class="input-group form-group">
								<div class="input-group-prepend">
									<span class="input-group-text"><i class="fas fa-phone"></i></span>
								</div>
								<input type="text" class="form-control" placeholder="Horario"
									name="horario">

							</div>
							<div class="input-group form-group">
								<div class="input-group-prepend">
									<span class="input-group-text"><i
										class="fas fa-dollar-sign"></i></span>
								</div>
								<input type="text" class="form-control"
									placeholder="Valor diario" name="valorDiario">

							</div>


							<div class="form-group">
								<input type="submit" value="Registrar"
									class="btn float-right login_btn">
							</div>
						</form>
					</div>
				</div>
			</div>
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
</body>
</html>