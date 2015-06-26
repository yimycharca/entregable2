<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Login</title>
	<link rel ='stylesheet' href='/estilos/estilologin.css'>
	<script type="text/javascript" src="/jquery/jquery-1.11.3.min.js"></script>
			<script src='/jquery/scripts/funciones.js'></script>
</head>
<body>
		<div id ='mensaje'>
			<center><label>Iniciar sessión</label></center>
		</div>
	<center>
	<br><br><br><br>
		<form action="loginController" class='usuario' method="POST">
			<br><br>
				<div>
					<label>Nombre usuario</label>
					<input type='text' name='user' value='' class='nombre'>
				</div>
			<div>
				<label>Clave</label>
				<input type='password' name='password' value='' class='password'>
			</div>
			<div>
				<input type='submit' value='Acceder' class='boton'>
			</div>
		</form>
	</center>
	<br><br>
	<div>
		<center><a href='/index.jsp'><button id='volver'>Volver</button></a></center>
	</div>
</body>
</html>