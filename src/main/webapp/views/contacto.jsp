<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contacto</title>
    <link rel="stylesheet" href="css/estilos.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Rubik:wght@400;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
</head>
<body>
    <header>
        <h1>ICowork Chile</h1>
    </header>
    <nav>
 		<a href="inicio.jsp">Inicio </a> 
        <a href="about.jsp">Sobre nosotros </a>
        <a href="galeria.jsp">Galería </a>
        <a href="contacto.jsp">Contacto</a>
         <a href="login.jsp">Login</a>
    </nav>
    <main>
        <h2>¿Tienes alguna duda? <br/> Ponte en contacto.</h2>
        <div>
        <form class="form">
            <div>
                <label for="nombre">Nombre:</label>
                <input type="text" id="nombre" name="nombre" placeholder="Escriba su nombre"required="true"><br>
            </div>
            <div>
                <label for="apellido">Apellido:</label>
                <input type="text" id="apellido" name="apellido" placeholder="Escriba su apellido" required="true"><br>
            </div>
            <div>
                <label for="phone">Teléfono:</label>
                <input type="tel" id="phone" name="phone" placeholder="Escriba su teléfono" required="true"><br>
            </div>
            <div>
                <label for="correo">Correo:</label>
                <input type="email" id="email" name="email" placeholder="correo@correo.com" required="true"><br>
            </div>
            <div class="boton">
                <input type="submit" value="Enviar">
            </div>
        </form>
        </div>
    </main><br>
    <footer> 
        <div class="rrss">
            <ul>
                <li><a href="#" class="facebook"> <i class="fab fa-facebook-f"></i></a></li>
                <li><a href="#" class="instagram"> <i class="fab fa-instagram"></i></a></li>
                <li><a href="#" class="youtube"> <i class="fab fa-youtube"></i></a></li>
                <li><a href="#" class="twitter"> <i class="fab fa-twitter"></i></a></li>  
            </ul>      
        </div>
     </footer>
</body>
</html>