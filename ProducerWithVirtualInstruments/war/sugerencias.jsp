<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Sugerencias</title>
	<link rel ='stylesheet' href='/estilos/estilologin.css'>
</head>
<body>
		<div id ='mensaje'>
			<center><label>Sugerencias</label></center>
		</div>
	<center>
	<br><br><br><br>
		<form action="/sugerenciasController" class='usuario' method="POST">
			<br><br>
				<div>
					<label>Nombre de correo</label>
					<input type='text' name='user' value='' class='nombre'>
				</div>
			<div>
				<label>Sugerencias</label>
				<textarea  name='sugerencia' value='' class='password' rows="8" cols="40" resize="none"></textarea>
			</div>
			<div>
				<input type='submit' value='Enviar' class='boton'>
			</div>
		</form>
	</center>
	<br><br>
	<div>
		<center><a href='/index.jsp'><button id='volver'>Volver</button></a></center>
	</div>
</body>
</html>