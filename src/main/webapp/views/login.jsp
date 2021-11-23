<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login</title>
<link rel="stylesheet" href="css/estilos.css">
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
</head>
<body>
	<header>
		<h1>ICowork Chile</h1>
	</header>
 	<nav>
 		<a href="Inicio">Inicio </a> 
        <a href="About">Sobre nosotros </a>
        <a href="Galeria">Galería </a>
        <a href="Contacto">Contacto</a>
         <a href="Login">Login</a>
    </nav>
	<main>
		<h2>Bienvenido</h2>
		<div class="container">
			<div class="d-flex justify-content-center h-100">
				<div class="card">
					<div class="card-header">
						<h3>Iniciar Sesión</h3>

					</div>
					<div class="card-body">
						<form method="post" action="Login">
							<div class="input-group form-group">
								<div class="input-group-prepend">
									<span class="input-group-text"><i class="fas fa-user"></i></span>
								</div>
								<input type="text" class="form-control"
									placeholder="Nombre de usuario" name=usuario>

							</div>
							<div class="input-group form-group">
								<div class="input-group-prepend">
									<span class="input-group-text"><i class="fas fa-key"></i></span>
								</div>
								<input type="password" name="password" class="form-control"
									placeholder="Contraseña">
							</div>
							<div class="row align-items-center remember">
								<input type="checkbox">Recordar
							</div>
							<div class="form-group">
								<input type="submit" value="Ingresar"
									class="btn float-right login_btn">
							</div>
						</form>
					</div>
					<div class="card-footer">
						<div class="d-flex justify-content-center links">
							¿Usuario sin registrar? <a href="#">Registrar ahora</a>
						</div>
						<div class="d-flex justify-content-center">
							<a href="#">Recuperar contraseña</a>
						</div>
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