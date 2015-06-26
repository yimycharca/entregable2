<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Virtruments &copy;</title>
<link rel='stylesheet' href='estilos/estilo1.css'>
<link rel="stylesheet" href="estilos/estilos.css">
<link rel="stylesheet" href="estilos/style.css">
<link rel="stylesheet" href="css/style.css">
<script type="text/javascript" src="/jquery/jquery-1.11.3.min.js"></script>
<script src='/jquery/scripts/funciones.js'></script>

</head>
<body>
	<div>
		<IMG src='/imagenes/portada.jpg' width="100%" height="100%">
	</div>
	<div id='bar'>
		<a href='/login.jsp'><button id='boton'>Acceder</button></a> 
		<a href='/register.jsp'><button id='boton'>Registrarme</button></a> 
		<a href='/contactenos.jsp'><button id='boton'>Contactenos</button></a> 
		<a href='/piano/piano/instrumentos.jsp'><button id='boton'>Instrumentos</button></a>
		<a href='/galeria.jsp'><button id='boton'>Galer&iacute;a</button></a>
		<a href='/sugerencias.jsp'><button id='boton'>Sugerencias</button></a>
		<a href='/mapa.jsp'><button id='boton'>Mapa del Sitio</button></a>

	</div>
	<div class="main">
		<div class="slides">
			<input type=image src="img/img.jpg" width="100%" height="100%">
			<input type=image src="img/img2.jpg" width="100%" height="100%">
			<input type=image src="img/img3.jpg" width="100%" height="100%">
			<input type=image src="img/komplete.jpg" width="100%" height="100%">
		</div>
		<div>
			<script src="js/jquery-1.11.3.js"></script>
			<script src="js/jquery.slides.js"></script>
			<script>
				$(function() {
					$(".slides").slidesjs({
						play : {
							active : true,
							effect : "slide",
							interval : 2500,
							auto : true,
							swap : true,
							pauseOnHover : false,
							restartDelay : 2500
						}
					});
				});
			</script>

			<div>
				<center>
					<label id='trademark'>Virtruments &copy; 2015</label>
				</center>
			</div>
</body>
</html>